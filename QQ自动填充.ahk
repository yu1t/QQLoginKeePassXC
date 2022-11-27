
; 图形用户界面
Gui, Margin, 50, 30
gui, font, s12, 微软雅黑
Gui, Add, Text,, 使用KeePassXC来自动输入
gui, font, s18, 
Gui, Add, Edit,Password WantTab w300 vStr
gui, font, s12,
Gui, Add, Button, default w300, OK  ; ButtonOK(如果存在) 会在此按钮被按下时运行.
gui, font, s10, 
Gui, Add, Text,w300 cGray, 输入序列 {USERNAME}{TAB}{PASSWORD}{ENTER}
Gui, Show,, QQ自动填充

; 按下KeePassXC全局快捷键，打开填充窗口
Send ^!v

return  ; 自动运行段结束. 在用户进行操作前脚本会一直保持空闲状态.



GuiClose:
ExitApp

ButtonOK:
Gui, Submit  ; 保存用户的输入到每个控件的关联变量中.

Ar := StrSplit(Str, A_Tab,,2)
WinActivate, ahk_exe QQ.exe
#IfWinActive ahk_exe QQ.exe
{
    qq = % Ar[1]
    pp = % Ar[2]

    SendInput {Text}%qq%
    SendInput,{Tab}
    SendInput {Raw}%pp%
    SendInput {Enter}

}
#IfWinActive

ExitApp
