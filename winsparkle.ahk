#SingleInstance
DllCall("LoadLibrary", "Str", "x86\WinSparkle.dll", "Ptr")
proc_win_sparkle_set_app_details      := DllCall("GetProcAddress", "Ptr", DllCall("GetModuleHandle", "Str", "WinSparkle.dll", "Ptr"), "AStr", "win_sparkle_set_app_details", "Ptr")
proc_win_sparkle_set_appcast_url      := DllCall("GetProcAddress", "Ptr", DllCall("GetModuleHandle", "Str", "WinSparkle.dll", "Ptr"), "AStr", "win_sparkle_set_appcast_url", "Ptr")
proc_win_sparkle_init                 := DllCall("GetProcAddress", "Ptr", DllCall("GetModuleHandle", "Str", "WinSparkle.dll", "Ptr"), "AStr", "win_sparkle_init", "Ptr")
proc_win_sparkle_check_update_with_ui := DllCall("GetProcAddress", "Ptr", DllCall("GetModuleHandle", "Str", "WinSparkle.dll", "Ptr"), "AStr", "win_sparkle_check_update_with_ui", "Ptr")
proc_win_sparkle_check_update_with_ui_and_install := DllCall("GetProcAddress", "Ptr", DllCall("GetModuleHandle", "Str", "WinSparkle.dll", "Ptr"), "AStr", "win_sparkle_check_update_with_ui_and_install", "Ptr")
proc_win_sparkle_set_hide_updater_windows := DllCall("GetProcAddress", "Ptr", DllCall("GetModuleHandle", "Str", "WinSparkle.dll", "Ptr"), "AStr", "win_sparkle_set_hide_updater_windows", "Ptr")

WinSparkleSetAppDetails(Author, AppName, AppVersion) 
{
   global proc_win_sparkle_set_app_details 
   DllCall(proc_win_sparkle_set_app_details, "AStr", Author, "AStr", AppName, "AStr", AppVersion)
}


WinSparkleSetAppCastUrl(Url)
{
   global proc_win_sparkle_set_appcast_url
   DllCall(proc_win_sparkle_set_appcast_url, "AStr", Url)
}


WinSparkleInit()
{
   global proc_win_sparkle_init 
   DllCall(proc_win_sparkle_init)
}


WinSparkleCheckUpdateWithUI() 
{
   global proc_win_sparkle_check_update_with_ui 
   DllCall(proc_win_sparkle_check_update_with_ui)
}


WinSparkleCheckUpdateWithUIAndInstall() 
{
   global proc_win_sparkle_check_update_with_ui_and_install
   DllCall(proc_win_sparkle_check_update_with_ui_and_install)
}


WinSparkleSetHideUpdaterWindows(Hide)
{
   global proc_win_sparkle_set_hide_updater_windows 
   DllCall(proc_win_sparkle_set_hide_updater_windows, "Int64", Hide)
}
