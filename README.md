# Portland State University

## ECE 411 Practicum Project - Group 16

https://pdx-lutter.github.io/pdx-ece411-fall2018-kjn/



### Precision Temperature Control Unit

### Group Members

* Nathan Lutterman  
* Kimball Davis  
* Jason Houlihan  



### What is it?

Our group is designing and building a temperature control unit.  In a nutshell, the device reads some ambient temperature from a temperature sensor.  If the temperature being read is outside of some bound, above or blow, the device activates and utilizes a fan or a lamp (as a heater) respectively.

It's intended to be a small, portable temperature control unit.  The user interface consists of several 7-segment digital displays which are used as feedback for the user while inputting values for thresholds, as well as displaying the temperature being read.

### What's in it?

The device mostly charge is an AT89S52 8-bit microcontroller.  It'll be driving the 7-segment displays, reading the data from the temperature sensor, and triggering the relays for the fan and lamp.

---

### Important Documents

[Preliminary EAGLE PCB Design Schematic](docs/schematics/preliminary.sch)

![Preliminary Schematic Thumbnail](docs/schematics/images/preliminary.png)

### Licenses
SDCC suite is a collection of several components derived from different sources with different licenses.  

The following is from the sdcc manual (found [here](http://sdcc.sourceforge.net/doc/sdccman.pdf)):

> – sdcc compiler:
> sdcc compiler is licensed under the GPLv2.
> The code or object files generated by SDCC suite are not licensed, so they can be used in FLOSS or
> proprietary (closed source) applications.
> 
> – dcpp preprocessor:
> derived from GCC cpp preprocessor http://gcc.gnu.org/; GPLv3 license
> 
> – sdas assemblers and sdld linker:
> derived from ASXXXX http://shop-pdp.kent.edu/ashtml/asxxxx.htm;
> license
> 
> – SDCC run-time libraries:
> The great majority of SDCC run-time libraries are licensed under the GPLv2+LE which allows linking
> of SDCC run-time libraries with proprietary (closed source) applications.
> Exception are pic device libraries and header files which are derived from Microchip header (.inc) and
> linker script (.lkr) files. Microchip requires that "The header files should state that they are only to
> be used with authentic Microchip devices" which makes them incompatible with the GPL. Pic device
> libraries and header files are located at non-free/lib and non-free/include directories respectively. SDCC
> should be run with the --use-non-free command line option in order to include non-free header files and
> libraries.
> 
> – sdbinutils utilities (sdar, sdranlib, sdnm, sdobjcopy):
> derived from GNU Binutils http://www.gnu.org/software/binutils/; GPLv3 license
> 
> – sdcclib librarian:
> GPLv2 license
> 
> – ucsim simulators:
> GPLv2 license
> 
> – sdcdb debugger:
> GPLv2 license
> 
> – gcc-test regression tests:
> derived from gcc-testsuite; no license explicitely specified, but since it is a part of GCC is probably
> GPLv3 licensed
> 
> – packihx:
> public domain
> 
> – makebin:
> zlib/libpng License
> 
> • libraries:
> – dbuf library:
> zlib/libpng License
> – Boost C++ libraries:
> http://www.boost.org/; Boost Software License 1.0 (BSL-1.0)
> Links to licenses:
> • GPLv2 license: http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
> • LGPLv2.1 license: http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html
> • GPLv3 license: http://www.gnu.org/licenses/gpl.html
> • zlib/libpng License: http://www.opensource.org/licenses/Zlib
> • Boost Software License 1.0 (BSL-1.0): http://www.opensource.org/licenses/BSL-1.0

The sdcc math.h and stdbool.h headers and libraries were used in the firmware of this project.

#### sdcc math.h License

   math.h: Floating point math function declarations

   Copyright (C) 2001, Jesus Calvino-Fraga, jesusc@ieee.org

   This library is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by the
   Free Software Foundation; either version 2, or (at your option) any
   later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this library; see the file COPYING. If not, write to the
   Free Software Foundation, 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.

   As a special exception, if you link this library with other files,
   some of which are compiled with SDCC, to produce an executable,
   this library does not by itself cause the resulting executable to
   be covered by the GNU General Public License. This exception does
   not however invalidate any other reasons why the executable file
   might be covered by the GNU General Public License.


#### sdcc stdbool.h

   stdbool.h - ANSI functions forward declarations

   Copyright (C) 2004, Maarten Brock, sourceforge.brock@dse.nl

   This library is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by the
   Free Software Foundation; either version 2, or (at your option) any
   later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this library; see the file COPYING. If not, write to the
   Free Software Foundation, 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.

   As a special exception, if you link this library with other files,
   some of which are compiled with SDCC, to produce an executable,
   this library does not by itself cause the resulting executable to
   be covered by the GNU General Public License. This exception does
   not however invalidate any other reasons why the executable file
   might be covered by the GNU General Public License.


#### Circuit Schematic and PCB Layout Licensing

The work produced solely for this project, including the circuit diagram, PCB layout, and firmware is licensed under MIT.

Autodesk EAGLE was the CAD software used to produce both the circuit diagrams and the PCB layout design.

Autodesk EAGLE and other Autodesk trademarks may be found here: https://www.autodesk.com/company/legal-notices-trademarks/trademarks/autodesk-inc#top

