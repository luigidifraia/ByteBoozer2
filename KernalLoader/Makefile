all: TestDisk.d64

clean:
        rm -f Music.prg.b2 Picture.prg.b2 Data KernalLoader.prg.b2 KernalLoader.prg TestDisk.d64

# The disk tool is available here: http://csdb.dk/release/?id=145209

TestDisk.d64: KernalLoader.prg.b2 Data
        disk -name TestDisk.d64 \
             -id 1 \
             -w KernalLoader.prg.b2 \
             -w Data

KernalLoader.prg.b2: KernalLoader.prg
        b2 -e 080d KernalLoader.prg

Data: Music.prg.b2 Picture.prg.b2
ifeq ($(findstring Windows,$(OS)),Windows)
        copy /b Music.prg.b2 + Picture.prg.b2 Data
else
        cat Music.prg.b2 Picture.prg.b2 > Data
endif

KernalLoader.prg: KernalLoader.src
        @echo "----------------------------------------"
        @echo " Assembling:" $<
        @echo "----------------------------------------"
        dreamass -o $@ $<

Music.prg.b2: Music.prg
        b2 -b Music.prg

Picture.prg.b2: Picture.prg
        b2 -b Picture.prg
