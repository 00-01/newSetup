
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


# WIRELESS CONNECT (writing)
The application communicates with the device over adb, so it should be easy to make it work wirelessly: Connect to a device over Wi-Fi.

It was not counting on an adb bug preventing adb reverse to work over a connection established by adb connect.

Therefore, we implemented a workaround to fallback using adb forward (and reversing the client/server roles) when adb reverse fails.

 

How to run scrcpy wirelessly?
Here are the steps:
1. Connect the device to the same Wi-Fi as your computer
2. Get your device IP address (in Settings → About phone → Status)
3. Enable adb over TCP/IP on your device: adb tcpip 5555
4. Connect to your device: adb connect DEVICE_IP:5555 (replace DEVICE_IP)
5. Unplug your device
6. Run scrcpy as usual

To switch back to USB mode: adb usb.

As expected, the performances are not the same as over USB.

The default scrcpy bit-rate is 8Mbps, which is probably too much for a Wi-Fi connection. Depending on the use case, decreasing the bit-rate and the resolution may be a good compromise:

scrcpy --bit-rate 2M --max-size 800
For people in a hurry:

scrcpy -b2M -m800
Note that while it now works over TCP/IP, this is not an optimal solution for streaming a video wirelessly, since the raw stream is still sent over TCP, where a packet loss is very bad for latency, due to head-of-line blocking. But it’s better than nothing!
