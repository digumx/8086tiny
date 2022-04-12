8086tiny
========

8086tiny is a completely free (MIT License) open source PC XT-compatible emulator/virtual machine written in C. It is, we believe, the smallest of its kind (the fully-commented source is under 25K). Despite its size, 8086tiny provides a highly accurate 8086 CPU emulation, together with support for PC peripherals including XT-style keyboard, floppy/hard disk, clock, audio, and Hercules/CGA graphics. 8086tiny is powerful enough to run software like AutoCAD, Windows 3.0, and legacy PC games: the 8086tiny distribution includes Alley Cat, the author's favorite PC game of all time.

8086tiny is highly portable and runs on practically any little endian machine, from simple 32-bit MCUs upwards. 8086tiny has successfully been deployed on 32-bit/64-bit Intel machines (Windows, Mac OS X and Linux), Nexus 4/ARM (Android), iPad 3 and iPhone 5S (iOS), and Raspberry Pi (Linux).

The philosophy of 8086tiny is to keep the code base as small as possible, and through the open source license encourage individual developers to tune and extend it as per their specific requirements, adding support, for example, for more complex instruction sets (e.g. Pentium) or peripherals (e.g. mouse). Forking this repository is highly encouraged!


Any questions, comments or suggestions are very welcome in our forum at 8086tiny.freeforums.net.

## Dependencies:

The only (optional) dependency is SDL (version 1.\*, not SDL 2). This is an old library, and might be a little difficult to install. On OSX, I think `brew install sdl` should work. On ubuntu, install the `libsdl1.2-devel` package. On arch-based systems, `pacman -S sdl sdl_mixer sdl_sound` works.

If you can't install SDL, 8086 tiny should still work in no-graphics mode, which should be sufficient for our purposes.

## Building:

If you have installed sdl, simply `make`. Otherwise, if you want to build the no-graphics version, do `make no_graphics`.

## Running:

Running the binary directly may not work, since the terminal needs to be in raw mode. The run scripts set up the terminal properly before calling the binary.

Running with the default floppy disk can be done via the `runme` script. To run some other floppy disk, use `.\run-fd.sh <floppy.img>`. You can also run a floppy disk and hard disk pair using the `./run-fd-hd.sh <floppy.img> <hard.img>` script.

