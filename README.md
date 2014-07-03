Vera Blue Iris Cam Plugin Version 0.3
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

Install Video
-----------

[![Vera Blue Iris Plugin How-to Video](http://img.youtube.com/vi/flDc84wrue8/0.jpg)](http://www.youtube.com/watch?v=YflDc84wrue8)


Installation
-----------

- Extract Vera Blue Iris zip file you downloaded from here 

- Navigate to apps --> develop apps --> Luup files in vera UI

- Add I_BlueIris.xml under the luup files folder you extracted from the zip *check restart luup after upload

- Create a new device (apps --> develop apps --> Create device), enter the following
```
Upnp Device Filename: D_DigitalSecurityCamera2.xml

Upnp Implementation Filename: I_BlueIris.xml

Ip Address: <IP ADDRESS OF BLUE IRIS server>:<Port>
```

- Click "Create Device"

- Reload Vera


Configuration
-----------

Go to the Camera Tab and you should now see
Blue Iris CAM #XXX

Click the edit button

In the Advanced tab of the plugin

```
CameraName : Enter the Camera Short Name from Blue Iris Config
```

If your web interface has a username and password (normal this is not the case)
You can configure it by going to the Settings Tab and scrolling all the way to the bottom

```
Username: your Blue Iris username

Password: your Blue Iris password
```

Save and Reload Vera


Configuration of Motion Detection Sensor ( v0.3+ Only )
-----------

__It is recommended you have your camera feed setup and working in vera before you proceed to configure
the motion sensor.__


**VERA CONFIGURATION**

- Got your camera you want to configure for motion sensor and click the edit button (wrench)

- Go to the Advance Tab

- Scroll until you see "EnableMotionSensor" and change the value to 1
	
	(**0** = Disable Motion Sensor | **1** = Enable Montion Sensor)

- Close the settings and the Red Save button, this will reload vera and create the motion sensor

- Find your montion sensor "Devices" > "Sensor Tab" it defaults to the name of the Camera followed by "Motion Sensor"

- Click on Edit (wrench) > Settings Tab and get your device ID number (REMEMBER THIS). This is how we tell Blue Iris to trigger the sensor

- This is all you need to do in Vera the next step is to configure Alert trigger in Blue Iris for the Sensor in Vera


**BLUE IRIS CONFIGURATION**

- From your zip file you downloaded take the folder named "biveratools" and copy it to your C: drive

- So the path to this folder should be C:\biveratools and the there should be 2 files in that folder

- Open Blue Iris

- Right Click on the Camera that you want to configure to Trigger Vera for motion sensor

- Click "Camera Properties"

- Click the "Alerts" tab

- Click Run a program or execute a script and hit Configure

- Click the "..." button next to the File file and browse to the file C:\biveratools\blueiris2vera.bat

- In Parameters Box enter Your Vera IP address then a space followed by the numerical sensor id# from vera in the step where i said REMEMBER THIS
```
Example

Vera IP address is 192.168.1.2

Your Sensor ID is : 123

You would put this in the Parameters Box: 192.168.1.2 123

*It is very important to put the space in between the Vera IP and Sensor ID
```
- That is it once you have entered all this you can hit the "Test" button in the bottom left hand corner of Blue Iris. If you go into Vera and see that motion sensor it should then trigger red for 30 secs and then shut off.

- If everything works you can then OK and OK out of the camera properties settings


Screenshots
-----------

![Vera Blue Iris - Add Device - Different States](https://dl.dropboxusercontent.com/u/617004/BlueIris/Add-Device.jpg "Vera Blue Iris - Add Device")

![Vera Blue Iris - Cam View](https://dl.dropboxusercontent.com/u/617004/BlueIris/Cam-View.jpg "Vera Blue Iris - Cam View")

![Vera Blue Iris - Advance Tab](https://dl.dropboxusercontent.com/u/617004/BlueIris/Advance.jpg "Vera Blue Iris - Advance Tab")
