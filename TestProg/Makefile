all:	TestProg.prg

TestProg.prg:	TestProg.src
	@echo "----------------------------------------"
	@echo " Assembling:" $<
	@echo "----------------------------------------"
	b2 Pic.prg
	dreamass -o $@ $<
	rm Pic.prg.b2
	@echo
