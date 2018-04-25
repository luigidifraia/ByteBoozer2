all: TestProg.prg

clean:
	rm -f TestProg.prg Pic.prg.b2

TestProg.prg: TestProg.src Pic.prg.b2
	@echo "----------------------------------------"
	@echo " Assembling:" $<
	@echo "----------------------------------------"
	dreamass -o $@ $<

Pic.prg.b2: Pic.prg
	b2 $<
