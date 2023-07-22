#Include GoogleTranslate.ahk ; use path to your file if in different directory

F7::
	ClipSave := ClipboardAll
	Clipboard := ""
	Send, {Ctrl down}c{Ctrl up}
	ClipWait, 1
	if ErrorLevel
		return
	Clipboard := GoogleTranslate(Clipboard, "en", "es")
	Send, {Ctrl down}v{Ctrl up}
	Sleep, 500
	Clipboard := ClipSave
return