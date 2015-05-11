#Makefile for ATmegaBOOT
# E.Lins, 18.7.2005
# $Id$


# program name should not be changed...
PROGRAM    = ATmegaBOOT_324P_V20

# enter the target CPU frequency
AVR_FREQ   = 16000000L

MCU_TARGET = atmega324pa
LDSECTION  = --section-start=.text=0x7000

OBJ        = $(PROGRAM).o
OPTIMIZE   = -Os

DEFS       = 
LIBS       = 

CC         = avr-gcc


# Override is only needed by avr-lib build system.

override CFLAGS        = -g -Wall $(OPTIMIZE) -mmcu=$(MCU_TARGET) -DF_CPU=$(AVR_FREQ) $(DEFS) -DDW_CLOUD_V20
override LDFLAGS       = -Wl,$(LDSECTION)
#override LDFLAGS       = -Wl,-Map,$(PROGRAM).map,$(LDSECTION)

OBJCOPY        = avr-objcopy
OBJDUMP        = avr-objdump

all: CFLAGS += '-DMAX_TIME_COUNT=F_CPU>>5' -DADABOOT
all: $(PROGRAM).hex

$(PROGRAM).hex: $(PROGRAM).elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@
	
$(PROGRAM).elf: $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)
	
$(OBJ): ATmegaBOOT.c
	avr-gcc $(CFLAGS) $(LDFLAGS) -c -g -Os -Wall -mmcu=$(MCU_TARGET) ATmegaBOOT.c -o $(PROGRAM).o

%.lst: %.elf
	$(OBJDUMP) -h -S $< > $@

%.srec: %.elf
	$(OBJCOPY) -j .text -j .data -O srec $< $@

%.bin: %.elf
	$(OBJCOPY) -j .text -j .data -O binary $< $@

clean:
	rm -rf *.o *.elf *.lst *.map *.sym *.lss *.eep *.srec *.bin *.hex
	
