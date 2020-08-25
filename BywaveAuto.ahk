; Author = Kaiyan Zhang
; E-mail = zhangkaiyan3@gmail.com
; Version = alpha
; Platform = Windows10
; Dependency = AutoHotKey
; Data = 2020/AUG/20

my_click(Xpercent, Ypercent){
    global Width
    global Height
    X := Width*Xpercent
    Y := Height*Ypercent
    Click, %X%, %Y% ;The Click function uses relative-coordinate
}

; ^j means Ctrl+J
; #m means Win+M
; +u means Shift+U
; !p means Alt+P

; Set start short cut end with ::
^i:: ; Here I use Ctrl+I
Run ByWave.exe ; You have to add ByWave.exe to your PATH
WinWaitActive, ByWave
WinGetPos, , , Width, Height, A ; A means current window
Sleep, 100
my_click(0.5, 0.313)
Sleep, 100
my_click(0.5, 0.824)
Sleep, 100
my_click(0.956, 0.077)
Sleep, 100
my_click(0.5, 0.967)
Sleep, 100
my_click(0.5, 0.802)
Sleep, 100
WinClose, ByWave ; You can remove this line if you wish
Return

; Set stop short cut
; Here I use Ctrl+K
^k::
Run ByWave.exe
WinWaitActive, ByWave
WinGetPos, , , Width, Height, A
Sleep, 100
my_click(0.061, 0.077)
Sleep, 100
my_click(0.5, 0.313)
Sleep, 100
WinClose, ByWave
Return

;toggleProxy
;I made this because there are many times I found that
;the internet is disconnected
;and I found stopping the Proxy is useful
;but toggle the proxy every is extremely annoying
;so I made this
^h::
Send, #i
Sleep, 1000
Send, proxy
Sleep, 200
Send, {Space} ;Attention, I made this because I'm using Chinese-input method
Send, {BackSpace}
Sleep, 200
Send, {Down}
Sleep, 200
Send, {Enter}
Sleep, 500
Send, {Tab}
Send, {Tab}
Sleep, 200
Send, {Space}
Return