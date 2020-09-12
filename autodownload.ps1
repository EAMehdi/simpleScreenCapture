utput "`n-- Script Courses Recorder --`n"

function recordScreen{
$course= Read-Host "Enter the course name`n"
$currentdate = Get-Date -Format "dd-MM"
$time = Read-Host "Time Limit in min (n=no)`n"

$filename= $course+"_"+$currentdate

Write-Output $namefile

if($time -like '*n*'){
    $time= [int]7200
    Write-Output "No limit of Time, think about to abort your record"
}
else{
   $time= [int]$time*60
}

Write-Output "There You Go"

ffmpeg -f dshow -i video="screen-capture-recorder" -f dshow -i audio="virtual-audio-capturer" -t $time D:\$($filename).mkv

[console]::beep(1000,500)
[console]::beep(1000,500)
[console]::beep(1000,500)
[console]::beep(1000,500)
}

recordScreen

