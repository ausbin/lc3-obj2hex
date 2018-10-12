# Assemble LC-3 assembly and put it in a Roigism-friendly form.

.PHONY: help clean

help:
	@echo "This Makefile will assemble LC-3 assembly and format a"
	@echo "hexdump for Verilog or Roigisim"
	@echo
	@echo "To use it, run \`make X.dat' or \`make X.list' for some X.asm."
	@echo "This will generate hex for Roigisim or Verilog, respectively."

%.obj: %.asm
	as2obj $<

%.dat: %.obj
	./obj2hex.py --roi $<

%.list: %.obj
	./obj2hex.py --verilog $<

%.hex.asm: %.obj
	./obj2hex.py --obfuscate $<

clean:
	rm -f *.obj *.dat *.sym *.hex.asm
