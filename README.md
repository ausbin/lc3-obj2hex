LC-3 Object File to Hex
=======================

This repository contains a Makefile and Python 3.5+ script that will assemble
LC-3 assembly into a .dat file ready for loading into Roigisim. Really, this
just means running Brandon's LC-3 assembler, as2obj, parsing the LC-3 object
file it produces, and writing that in a hexdump format compatible with
Roigisim.

Originally created for my [lc3 pipeline][1].

[1]: https://github.com/ausbin/lc3pipeline
