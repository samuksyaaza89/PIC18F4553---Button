MCU  = PIC18F4553
DFP  = /opt/microchip/mplabx/v6.30/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8
BUILD = build
OUT  = $(BUILD)/main.hex
SRC  = main.c

CFLAGS = -mcpu=$(MCU) -mdfp=$(DFP) -I. -D_XTAL_FREQ=48000000UL

all: $(BUILD) $(OUT)

$(BUILD):
	mkdir -p $(BUILD)

$(OUT): $(SRC)
	xc8-cc $(CFLAGS) -o $(OUT) $(SRC)
	@mv -f *.p1 *.d *.pre *.lst *.obj *.map *.sym \
	       *.as *.rlf *.cmf *.elf *.o *.s *.sdb \
	       $(BUILD)/ 2>/dev/null || true

clean:
	rm -rf $(BUILD)

.PHONY: all clean
