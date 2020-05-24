# AC125A DTMF Converter


## Howard M. Harte - WZ2Q - May, 2020

The OKI AC125A Crossbar PBX has provision for dual DTMF converters connected to 50-pin telco connector #6.  Last year, I made a [kludge DTMF converter using two off-the-shelf DTMF relay boards with hacked firmware](https://github.com/hharte/stc15_dtmf).  I wanted to make something more professional, and decided to make a PC board that could plug directly into connector #6.


# Issue 1 - ERRATA

This board was fabbed at PCBway.com in May, 2020, and I’ve done a lot of the bringup, minus the MT8870 DTMF converters which are on their way from China.  Don’t build this board as-is, there are two wire mods that are needed to make it work, and I haven’t even received the DTMF converters yet ;)



1. ICSP_PGD needs to go to J2 pin 4 instead of pin 6. Cut trace and add wire.
2. Change resistor on MCLR from 10K to 4.7K to prevent reset when OKI goes to howler with ICSP cable connected.  This didn’t help, also needed 0.01uF cap at C3.
3. LCD Connector should be rotated 90’
4. LCD Vee supply not provided, need pot for contrast.
5. 10K resistor on SSR_RST_N not needed (didn’t populate)
6. MCLR circuitry should be close to the pin on the MCU.
7. Add 0.01uF capacitor at C3 to prevent spurious MCU resets when the crossbar switches.  There is already a footprint for this in the PCB.
8. Add wire from AC125A B0 (after the fuse) to R35/R36.

Board Bringup



1. Tested Shift registers.  Bits need to be shifted in bit 15 … bit 0.
2. Tested Solid State Relays can drive the AC125A Pulse Counting relays.
3. Tested USB Serial
4. Tested RS-232 Serial Port.
5. Tested back EMF from the pulse counting relays towards the SSRs, it’s slightly less than 100V, so shouldn’t fry the SSRs.

