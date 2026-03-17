# Botão e LED — PIC18F4550

Projeto simples onde um LED acende enquanto um botão está pressionado.
Foi meu segundo projeto com PIC, logo após o blink.

## O que o projeto faz

Enquanto o botão está pressionado, o LED acende.
Quando solta, o LED apaga.

## Hardware necessário

- PIC18F4550
- 1 LED
- 1 resistor 330Ω (pra não queimar o LED)
- 1 botão
- Cristal de 20MHz

## Como está ligado

- LED no pino RD0
- Botão no pino RD1

## O que aprendi nesse projeto

**PORT vs LAT** — no PIC18 existe uma diferença importante:
para **ler** um pino usa-se `PORT`, e para **escrever** usa-se `LAT`.
Usar `PORT` pra escrever pode causar bugs difíceis de encontrar
em situações específicas. Esse projeto já usa a forma correta.

## Toolchain

- Compilador: XC8
- Editor: Neovim
- Build: Make

## Compilando
```bash
make
```
