#Include winsparkle.ahk

WinSparkleSetAppDetails("Example Author", "Example Name", "1.0.0")
WinSparkleSetAppCastUrl("http://127.0.0.1:8000/appcast.xml")
WinSparkleInit()
WinSparkleCheckUpdateWithUIAndInstall()

Loop 500
   Sleep, 1000