## OKI AC125A Crossbar PBX DTMF Converter


### Howard M. Harte - WZ2Q - May, 2020

The OKI AC125A Crossbar PBX has provision for dual DTMF converters connected to 50-pin telco connector #6.  Last year, I made a [kludge DTMF converter using two off-the-shelf DTMF relay boards with hacked firmware](https://github.com/hharte/stc15_dtmf).  I wanted to make something more professional, and decided to make a PC board that could plug directly into connector #6.


## Current Status

The Issue 1 board has been brought up and debugged, with several errors corrected.  See Errata below.  The schematic has been updated for Issue 2 which corrects these errors.

Currently, the AC125A DTMF converter is in operation on the PBX, available via [C*NET](https://www.ckts.info/) at 1-558-2500 and on [NPSTN](http://www.npstn.us/) at 558-2500.


## Issue 1 - ERRATA

This Issue 1 board was fabbed at PCBway.com in May, 2020, and board bring-up is complete.  These are the errors that were found in the Issue 1 PCB.



1. ~~ICSP_PGD needs to go to J2 pin 4 instead of pin 6. Cut trace and add wire.~~
2. ~~Change resistor on MCLR from 10K to 4.7K to prevent reset when OKI goes to howler with ICSP cable connected.~~
3. LCD Connector should be rotated 90’
4. LCD Vee supply not provided, need pot for contrast.
5. ~~10K resistor on SSR_RST_N not needed (didn’t populate)~~
6. ~~MCLR circuitry should be close to the pin on the MCU.~~
7. ~~Add 0.01uF capacitor at C3 to prevent spurious MCU resets when the crossbar switches.  There is already a footprint for this in the PCB.~~
8. ~~Add wire from AC125A B0 (after the fuse) to R35/R36.~~
9. ~~Shell of J1 should be grounded to G0.~~
10. ~~USB Connector should protrude slightly more from the PCB.~~
11. ~~Need 100K resistor between pins 2, 3 of each MT8870 DTMF converter.~~
12. ~~Change R11, R13 to 68K~~
13. ~~The clock output from MT8870 U2 is going to the OSC2 pin of MT8870 U3.  OSC2 is Xout, not Xin!  Clock should be going to U3, pin 7, not pin 8.~~

Items above in ~~strikethrough~~ have been corrected in the Issue 2 schematic.  PCB layout is still in progress.


## Board Bringup Notes

[Short video of the board bringup](https://www.youtube.com/watch?v=gfnMdGEc2nk) before receiving the MT8870 DTMF converters.



1. Tested Shift registers.  Bits need to be shifted in bit 15 … bit 0.
2. Tested Solid State Relays can drive the AC125A Pulse Counting relays.
3. Tested USB Serial
4. Tested RS-232 Serial Port.
5. Tested back EMF from the pulse counting relays towards the SSRs, it’s slightly less than 100V, so shouldn’t fry the SSRs.
6. Tested MT8870 DTMF converters.

