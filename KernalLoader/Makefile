all: KernalLoader.prg

KernalLoader.prg: KernalLoader.src
	@echo "----------------------------------------"
	@echo " Assembling:" $<
	@echo "----------------------------------------"
	dreamass -o $@ $<
	b2 -b Music.prg
	b2 -b Picture.prg
#ifeq ($(OS),Windows_NT)
ifeq ($(findstring Windows,$(OS)),Windows)
	copy /b Music.prg.b2 + Picture.prg.b2 Data
else
	cat Music.prg.b2 Picture.prg.b2 > Data
endif
	b2 -e 080d KernalLoader.prg
	disk -name TestDisk.d64 \
	     -id 1 \
	     -w KernalLoader.prg.b2 \
	     -w Data
	rm Music.prg.b2
	rm Picture.prg.b2
	rm Data
	rm KernalLoader.prg.b2
	@echo

# The disk tool is available here: http://csdb.dk/release/?id=145209
