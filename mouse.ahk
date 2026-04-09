;Mouse:

;Copy and paste:
;1=cut
;2=copy
;2+1= win+v
;1+2=paste

;MButton = apps
;M=prtsc
;M+1=VIP
;M+2=Menu
;M+R=LWin
;M+L=Esc
;M+WheelUp=Show all windows
;M+WheelDown=Enter

;2 Button = frequent ctrl
;2+L=ctrl+s
;2+R=ctrl+r
;2+M=ctrl+z
;2+WheelUp=Space
;2+WheelDown=Backspace

;1 Button = less frequent ctrl
;1+L=ctrl+f
;1+R=ctrl+a
;1+M=ctrl+t
;1+WheelUp=arrow left
;1+WheelDown=arrow right



;ACTUAL CODE:

;Copy and paste:
;1=cut
;2=copy
;2+1= win+v
;1+2=paste

; cut
XButton1:: {
    Send("^x")
}

; copy
XButton2:: {
    Send("^c")
}

; win+v
XButton2 & XButton1:: {
    Send("#v")
}

; paste
XButton1 & XButton2:: {
    Send("^v")
}

;MButton = apps
;M=prtsc
;M+1=VIP
;M+2=Menu
;M+R=LWin
;M+L=Esc
;M+WheelUp=Show all windows
;M+WheelDown=Enter

; prtsc
~MButton:: {
    Send("#+s")
}

; VIP
~MButton & XButton1:: {
    Send("^!v")
}

; Menu
~MButton & XButton2:: {
    Send("^!m")
}

;Windows key
~MButton & RButton:: {
    Send("{LWin}")
}

;esc
~MButton & LButton:: {
    Send("{Esc}") 
}

;Show all windows
~MButton & WheelUp:: {
    Send "{LWin Down}{Tab}{LWin Up}"
    Sleep 250
}

;Enter
~MButton & WheelDown:: {
    Send '{Enter}'
    Sleep 250
}




;2 Button = frequent ctrl
;2+L=ctrl+s
;2+R=ctrl+r
;2+M=ctrl+z
;2+WheelUp=Enter
;2+WheelDown=Backspace

; ctrl+s
XButton2 & LButton:: {
    Send("^s")
}

; ctrl+r
XButton2 & RButton:: {
    Send("^r")
}

; ctrl+z
XButton2 & MButton:: {
    Send("^z")
}

; Enter
XButton2 & WheelUp:: {
    Send '{Space}'
}

; Backspace
XButton2 & WheelDown:: {
    Send('{BS}')
}


;1 Button = less frequent ctrl
;1+L=ctrl+f
;1+R=ctrl+a
;1+M=ctrl+t
;1+WheelUp=arrow left
;1+WheelDown=arrow right

; ctrl+f
XButton1 & LButton:: {
    Send("^f")
}

; ctrl+a
XButton1 & RButton:: {
    Send("^a")
}

; ctrl+t
XButton1 & MButton:: {
    Send("^t")
}

; Left Arrow Key
XButton1 & WheelUp:: {
    Send('{Left}')
}

; Right Arrow Key
XButton1 & WheelDown:: {
    Send('{Right}')
}


^!Esc::ExitApp