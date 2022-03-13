# ByteBoozer2
David Malmborg's ByteBoozer 2.0, a data cruncher for Commodore files.

Originally published on CSDb [here](http://csdb.dk/release/?id=145031).

## Notes
- Compile with `gcc`.
- The decruncher is coded with DreamAss accent.
- Under Windows you might want to run `win32/b2var.bat` to setup your build environment.

## Fixes
- A copy bit is added at the end of the output only when required.

## Extensions
- Implemented the "-b" option.

## Extras
- A Kernal loader with on-the-fly decrunching that:
  - loads linked files, 
  - handles load errors, such as premature EOF, and 
  - does NOT require sector/decrunch buffers!
