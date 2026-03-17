subtitle "Microchip MPLAB XC8 C Compiler v3.10 (Free license) build 20250813170317 Og1 "

pagewidth 120

	opt flic

	processor	18F4553
include "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/18f4553.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
skiprom24 macro arg1
	btfsc arg1,7
endm
	global	__ramtop
	global	__accesstop
# 52 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4553.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNROOT	_main
	global	_LATDbits
_LATDbits	set	0xF8C
	global	_PORTDbits
_PORTDbits	set	0xF83
	global	_TRISDbits
_TRISDbits	set	0xF95
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config PLLDIV = "5"
	config CPUDIV = "OSC1_PLL2"
	config USBDIV = "2"
	config FOSC = "HSPLL_HS"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRT = "OFF"
	config BOR = "OFF"
	config VREGEN = "OFF"
	config WDT = "OFF"
	config MCLRE = "ON"
	config LVP = "OFF"
	config XINST = "OFF"
	config CP0 = "OFF"
	config CP1 = "OFF"
	config CPB = "OFF"
	config CPD = "OFF"
	file	"build/main.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      1       1
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMRAM           95      0       0      0.0%
;!BITBANK0           160      0       0      0.0%
;!BITBANK1           256      0       0      0.0%
;!BITBANK2           256      0       0      0.0%
;!BITBANK3           256      0       0      0.0%
;!BITBANK4           256      0       0      0.0%
;!BITBANK5           256      0       0      0.0%
;!BITBANK6           256      0       0      0.0%
;!BITBANK7           256      0       0      0.0%
;!BITBIGSFRh         115      0       0      0.0%
;!BITBIGSFRll         35      0       0      0.0%
;!BITBIGSFRlh          8      0       0      0.0%
;!COMRAM              95      1       1      1.1%
;!BANK0              160      0       0      0.0%
;!BANK1              256      0       0      0.0%
;!BANK2              256      0       0      0.0%
;!BANK3              256      0       0      0.0%
;!BANK4              256      0       0      0.0%
;!BANK5              256      0       0      0.0%
;!BANK6              256      0       0      0.0%
;!BANK7              256      0       0      0.0%
;!BIGRAM            2047      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       1      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	11
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	11
	
_main:
;incstack = 0
	callstack 31
	line	16
	
l804:
	bcf	((c:3989))^0f00h,c,0	;volatile
	line	17
	bsf	((c:3989))^0f00h,c,1	;volatile
	line	18
	
l13:
	line	19
	btfsc	((c:3971))^0f00h,c,1	;volatile
	goto	u11
	goto	u10
u11:
	goto	l14
u10:
	line	20
	
l806:
	asmopt push
asmopt off
movlw	156
movwf	(??_main+0)^00h,c
	movlw	215
u27:
decfsz	wreg,f
	bra	u27
	decfsz	(??_main+0)^00h,c,f
	bra	u27
	nop
asmopt pop

	line	21
	
l808:
	bsf	((c:3980))^0f00h,c,0	;volatile
	line	22
	goto	l13
	
l14:
	line	23
	bcf	((c:3980))^0f00h,c,0	;volatile
	goto	l13
	global	start
	goto	start
	callstack 0
	line	26
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
__smallconst	set	__psmallconst
	global	__mediumconst
__mediumconst	set	__psmallconst
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
