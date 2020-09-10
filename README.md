# simpleScreenCapture
Personal Script using ffmpeg and PowerShell to record my screen and audio for my courses

## How to install it

1. Install FFmpeg
https://github.com/adaptlearning/adapt_authoring/wiki/Installing-FFmpeg#installing-ffmpeg-in-windows

2. Install: 
https://github.com/rdp/screen-capture-recorder-to-video-windows-free

To verify if it works:
`ffmpeg -list_devices true -f dshow -i dummy`
`ffmpeg -f dshow -i video="screen-capture-recorder" -f dshow -i audio="virtual-audio-capturer" output.mkv`

3. Enable running script in PowerShell
`set-executionpolicy unrestricted`

4. Run `capture.ps1` 

TO DO:
- Better Implementation 
- Add the possibility to automatically upload the videos online (Personal server, GDrive etc.) 
- Simple GUI in WinForm
