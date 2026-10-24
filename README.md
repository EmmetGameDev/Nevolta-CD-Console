[See the build and design on YouTube!](https://www.youtube.com/watch?v=dW5HGrhBync)

![Preview](Gallery/x86consoleThumbnail.png)

# Nevolta CD Console

This project is a standalone **retro gaming station** based on the ZimaBoard 2 and the ESP32-S3. The console features:
- A fully custom BLE wireless controller
- Custom CD launching capability
- Custom PCBs
- 3D-printable design
- Fully open source!

"Nevolta" is the name for my personal console line-up. **(more are coming soon!)**

# Project Navigation

- The "Printables" folder contains labeled 3D printable files for the Console unit as well as the Controller.
- The "PCB" folder contains GERBER, CPL and BOM files for PCB fabrication.
- The "Firmware" folder contains code for the Controller, and custom CD-loading shell scripts for the console.

# Assembly

## Custom Controller
1. Melt in 4xM2 Heated Inserts into their respective holes in Controller_Faceplate.
2. Put the assembled PCB into Controller_Body.
3. Insert the battery into Controller_Batteryslot, and hook the compartment into Controller_Body.
4. Connect the battery.
5. Insert the Controller_Buttons into their respective holes in Controller_Faceplate.
6. Insert the Controller_Bumpers and Controller_Triggers into their respective slots in Controller_Body.
7. Put the Controller_Faceplate on top of the Controller_Body, and secure it with 4xM2 screws.

## Console Unit
1. Melt in 4xM2 Heated Inserts into their respective holes in Console_Bottom.
2. Put in the CD Drive (Tailored for: Liteon 8x DVD USB 2.0 Slim)
3. Plug the Console_Crossbar into the holes in Console_Bottom.
4. Put in the Computer (ZimaBoard 2) and SSD (Intel 730 Series)
5. Put on the Console_Top cover and secure it with 4xM2 screws.

# Setup

## Controller (ESP32-S3)
- The ESP can be programmed when already soldered onto the board, since a data connection is present in the USB-C connector.
- Controller firmware uses the repo [ESP32-BLE-Gamepad](https://github.com/lemmingDev/ESP32-BLE-Gamepad) as a base for the wireless Bluetooth functionality.
- The firmware (.INO) file can be flashed via the [Arduino IDE](https://www.arduino.cc/en/software/)

## Console Unit (ZimaBoard 2)
- A standard Batocera build is used for the ZimaBoard, which you can access [here](https://batocera.org/download). Select the version for *"Desktop PC, Laptop, NUC and Intel-based Apple Computers".*

### - CD Functionality
1. Create a *"cdrom-staging"* folder at */userdata/system/*
2. Create a *"cd-scripts"* folder at */userdata/system/*
3. Place the .sh scripts in the *"cd-scripts"* folder.

### - Controller Pairing
1. Open the Bluetooth setting in Batocera
2. Turn on the controller. It should display *"Searching..."* continuously
3. Scan for devices, and select *"ESP32 Gamepad"* 
