#define _XTAL_FREQ 48000000UL
#include <xc.h>

#pragma config PLLDIV = 5, CPUDIV = OSC1_PLL2, USBDIV = 2
#pragma config FOSC = HSPLL_HS, FCMEN = OFF, IESO = OFF
#pragma config PWRT = OFF, BOR = OFF, VREGEN = OFF
#pragma config WDT = OFF
#pragma config MCLRE = ON, LVP = OFF, XINST = OFF
#pragma config CP0 = OFF, CP1 = OFF, CPB = OFF, CPD = OFF

void main(void) {
  // Utilização do registrador TRIS ( tristate )na porta D
  // - TRISDbits é struct de bits para a porta
  // - TRISD0 é o bit do struct a ser usado
  // 0 é saída, 1 é entrada
  TRISDbits.TRISD0 = 0;
  TRISDbits.TRISD1 = 1;
  while (1) {
    if (!PORTDbits.RD1) {
      __delay_ms(10);
      LATDbits.LATD0 = 1;
    } else {
      LATDbits.LATD0 = 0;
    }
  }
}
