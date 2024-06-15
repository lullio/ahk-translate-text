#Include <Default_Settings>
#Include %A_ScriptDir%/GoogleTranslate.ahk ; use path to your file if in different directory

F7::
	ClipSave := ClipboardAll
	Clipboard := ""
	Send, {Ctrl down}c{Ctrl up}
	ClipWait, 1
	if ErrorLevel
		return
	Clipboard := GoogleTranslate(Clipboard, "pt-br", "en")
	Send, {Ctrl down}v{Ctrl up}
	Sleep, 100
	Clipboard := ClipSave
return

F8::
	ClipSave := ClipboardAll
	Clipboard := ""
	Send, {Ctrl down}c{Ctrl up}
	ClipWait, 1
	if ErrorLevel
		return
	Clipboard := GoogleTranslate(Clipboard, "en", "pt-br")
	Send, {Ctrl down}v{Ctrl up}
	Sleep, 100
	Clipboard := ClipSave
return