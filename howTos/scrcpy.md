
## PC 
### install android sdk
### download app
    sudo apt install scrcpy
### run app
    scrcpy
### to find device
    adb device
 
## PHONE
### developer mode -> usb debug to true (Settings > About phone and tap Build number seven times. Return to the previous screen to find Developer options at the bottom.)


# WIRELESS CONNECT
1. connect phone <-> pc via usb
2. $ adb tcpip 5555
3. $ adb connect {PHONE_LAN}:5555
4. $ scrcpy
