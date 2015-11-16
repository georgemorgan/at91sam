# Introduction

I love writing bare metal ARM code. Unfortunately, it's really difficult to find software development kits that allow you to start with nothing and work your way up to the reward that is turning on your first LED.

This project aims to solve just that. With only four files, an `init.ld`, `init.s`, `boot.c` and `main.c`, you can get up and running developing for Atmel's AT91SAM line of ARM processors in no time.

This code has been tested and confirmed to work on the AT91SAM7S processor, but the code should be compatible with any AT91SAM series device. If you find that this code does not work on your test platorm, please let me know so I can address the issue!

# Compiling

To compile, use the makefile that is included. But wait! Be sure to change the varaibles such as `cc` and `nm` to the tools that you use to build for the ARM architecture if you've moved them somewhere other than their default install location. If these tools can be found in your `PATH` environment variable, the script should work automatically.

# Flashing

To flash this firmware to a AT91SAM device without the use of an IDE, download the appropriate `SAM-BA utility` for your host platform. Atmel provides one for Windows, but there are third party flashers out there for Mac OS and Linux.