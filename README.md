# OKI AC125A Crossbar PBX DTMF Converter
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/5064a76a36684318a98828b59477591f)](https://www.codacy.com/gh/hharte/ac125a_dtmf/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=hharte/ac125a_dtmf&amp;utm_campaign=Badge_Grade)

## Howard M. Harte - WZ2Q - June, 2020

The OKI AC125A Crossbar PBX has provision for dual DTMF converters connected to 50-pin telco connector #6.  Last year, I made a [kludge DTMF converter using two off-the-shelf DTMF relay boards with hacked firmware](https://github.com/hharte/stc15_dtmf).  I wanted to make something more professional, and decided to make a PC board that could plug directly into connector #6.

![alt_text](https://raw.githubusercontent.com/hharte/ac125a_dtmf/master/photos/AC125A_DTMF_Iss2-Front.jpg "image_tooltip")


# Features



*   Solid-state design.
*   Plug and Play installation, powered by the PBX’s -48VDC supply.
*   Dual toll-quality MT8870 DTMF converters, one for each originating register.
*   Double-buffered DTMF FIFO to allow for rapid dialing.
*   Fully asynchronous operation of each originating register’s DTMF converter and pulse-counting relays.
*   Pulse-counting relays are actuated at the end of each DTMF digit, so the relay clicks can easily be heard while dialing.
*   DTMF tone logging via RS-232 or USB Serial interface.


# Current Status

The Issue 2 board has been brought up and is in operation on the PBX, available via [C*NET](https://www.ckts.info/) at 1-558-2500 and on [NPSTN](http://www.npstn.us/) at 558-2500.


# Installation

Just plug the AC125A DTMF converter into 50-pin connector J6 of the PBX.

![alt_text](https://raw.githubusercontent.com/hharte/ac125a_dtmf/master/photos/AC125A_DTMF_Iss2-Installed.jpg "image_tooltip")
