#Requires AutoHotkey v2.0

/*
    When `NUMLOCK` is toggled OFF remap numpad keys to media keys:
        6 -> Play next
        4 -> Play previous
        2 -> Volume up
        8 -> Volume down
        5 -> Mute/Unmute
        0 -> Play/Pause
        7 -> Launch Default Media App
*/

NumpadRight:: {
    Send "{Media_Next}"
}

NumpadLeft:: {
    Send "{Media_Prev}"
}

NumpadUp:: {
    Send "{Volume_Up}"
}

NumpadDown:: {
    Send "{Volume_Down}"
}

NumpadClear:: {
    Send "{Volume_Mute}"
}

NumpadIns:: {
    Send "{Media_Play_Pause}"
}

NumpadHome:: {
    Send "{Launch_Media}"
}

NumLock:: {
    TrayTip
    if GetKeyState("NumLock", "T") != 1 {
        TrayTip "Media Numpad Activated", "", "Mute"
        SetTimer TrayTip, -2000
    } else {
        TrayTip "Media Numpad Deactivated", "", "Mute"
        SetTimer TrayTip, -2000
    }
    SetNumLockState !GetKeyState("NumLock", "T")
}