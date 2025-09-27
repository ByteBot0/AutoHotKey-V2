;New Mouse:
;Copy and paste:
;1=cut
;2=copy
;2+1= win+v
;1+2=paste

;MButton = apps
;M=prtsc
;M+1=VIP
;M+2=Menu
;M+R=Lock
;M+L=Esc

;2 Button = frequent ctrl
;2+L=ctrl+s
;2+R=ctrl+r
;2+M=ctrl+z

;1 Button = less frequent ctrl
;1+L=ctrl+f
;1+R=ctrl+a
;1+M=ctrl+t




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
;M+R=lock
;M+L=esc

; prtsc
MButton:: {
    Send("#+s")
}

; VIP
MButton & XButton1:: {
    Send("^!v")
}

; Menu
MButton & XButton2:: {
    Send("^!m")
}

;Lock
MButton & RButton:: {
    DllCall("LockWorkStation")
}

;esc
MButton & LButton:: {
    Send("{Esc}") 
}

;2 Button = frequent ctrl
;2+L=ctrl+s
;2+R=ctrl+r
;2+M=ctrl+z

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

;1 Button = less frequent ctrl
;1+L=ctrl+f
;1+R=ctrl+a
;1+M=ctrl+t

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



^Esc::ExitApp
