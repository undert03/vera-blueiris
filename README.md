Vera Blue Iris Cam Plugin Version 0.2
===========
![Blue Iris Vera Plugin](https://dl.dropboxusercontent.com/u/617004/BlueIris/Vera-Blue-Iris_LG.png "Blue Iris Vera Plugin")

Plugin Programmed by undertoe@chemlab.org


Plugin Features
-----------

- Blue Iris Camera Intergration
- PTZ Function
- MJPEG Stream URL
- Username & Password Support

Requirements
-----------

Blue Iris system running with cameras configured in blue iris

Installation
-----------

- Extract Vera Blue Iris zip file you downloaded from here 

- Navigate to apps --> develop apps --> Luup files in vera UI

- Add I_BlueIris.xml under the luup files folder you extracted from the zip *check restart luup after upload

- Create a new device (apps --> develop apps --> Create device), enter the following
Upnp Device Filename: D_DigitalSecurityCamera2.xml
Upnp Implementation Filename: I_BlueIris.xml
Ip Address: <IP ADDRESS OF BLUE IRIS server>:<Port>

Click "Create Device"

- Reload Vera


Configuration
-----------

Go to the Camera Tab and you should now see
Blue Iris CAM #XXX

Click the edit button

In the Advanced tab of the plugin

CameraName : <Enter the Camera Short Name from Blue Iris Config>

If your web interface has a username and password (normal this is not the case)
You can configure it by going to the Settings Tab and scrolling all the way to the bottom

Username: your Blue Iris username
Password: your Blue Iris password

Save and Reload Vera


Screenshots
-----------

![Vera Blue Iris - Add Device - Different States](https://dl.dropboxusercontent.com/u/617004/BlueIris/Add-Device.jpg "Vera Blue Iris - Add Device")

![Vera Blue Iris - Cam View](https://dl.dropboxusercontent.com/u/617004/BlueIris/Cam-View.jpg "Vera Blue Iris - Cam View")

![Vera Blue Iris - Advance Tab](https://dl.dropboxusercontent.com/u/617004/BlueIris/Advance.jpg "Vera Blue Iris - Advance Tab")
