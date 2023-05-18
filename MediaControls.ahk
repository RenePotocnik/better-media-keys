#Requires AutoHotkey v2.0

/*
    When CAPSLOCK is pressed remap:
        Right arrow key -> Play next
        Left arrow key  -> Play previous
        Up arrow key    -> Volume up
        Down arrow key  -> Volume down
        Space           -> Play/Pause
*/

Right:: {
    if GetKeyState("Capslock", "T") {
        Send "{Media_Next}"
    } else {
        Send "{Right}"
    }
}

Left:: {
    if GetKeyState("Capslock", "T") {
        Send "{Media_Prev}"
    } else {
        Send "{Left}"
    }
}

Up:: {
    if GetKeyState("Capslock", "T") {
        Send "{Volume_Up}"
    } else {
        Send "{Up}"
    }
}

Down:: {
    if GetKeyState("Capslock", "T") {
        Send "{Volume_Down}"
    } else {
        Send "{Down}"
    }
}

^Space:: {
    if GetKeyState("Capslock", "T") {
        Send "{Media_Play_Pause}"
    }
    else {
        Send "{^Space}"
    }
}
