args = -std=gnu99 -Os -mcpu=arm7tdmi -mtune=arm7tdmi -mthumb -mthumb-interwork

all: clean

	arm-elf-gcc $(args) -c init.s -o init.o
	arm-elf-gcc $(args) -c boot.c -o boot.o
	arm-elf-gcc $(args) -c main.c -o main.o
	arm-elf-gcc $(args) -nostartfiles *.o -o main.elf -Wl,-T init.ld
	arm-elf-objcopy -O binary main.elf main.bin

clean:
	rm -rf *.o *.elf *.bin