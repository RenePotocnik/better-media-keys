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
    }
}

Left:: {
    if GetKeyState("Capslock", "T") {
        Send "{Media_Prev}"
    }
}

Up:: {
    if GetKeyState("Capslock", "T") {
        Send "{Volume_Up}"
    }
}

Down:: {
    if GetKeyState("Capslock", "T") {
        Send "{Volume_Down}"
    }
}

^Space:: {
    if GetKeyState("Capslock", "T") {
        Send "{Media_Play_Pause}"
    }
}
