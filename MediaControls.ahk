#Requires AutoHotkey v2.0

/*
    When CAPSLOCK is pressed remap:
        Right arrow key -> Play next
        Left arrow key  -> Play previous
        Up arrow key    -> Volume up
        Down arrow key  -> Volume down
        CTRL + Space    -> Play/Pause
*/

send_if_pressed(send_button, pressed_button) {
    if GetKeyState("Capslock", "T") {
            Send send_button
        } else {
            Send pressed_button
        }
}

Right:: {
    send_if_pressed("{Media_Next}", "{Right}")
}

Left:: {
    send_if_pressed("{Media_Prev}", "{Left}")
}

Up:: {
    send_if_pressed("{Volume_Up}", "{Up}")
}

Down:: {
    send_if_pressed("{Volume_Down}", "{Down}")
}

^Space:: {
    send_if_pressed("{Media_Play_Pause}", "{^Space}")
}
