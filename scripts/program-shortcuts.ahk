;;;; This is an example file
; Replace with your version
; for detail of run on startup see README.md


#z::Run https://www.autohotkey.com  ; Win+Z

;SetWorkingDir, C:/somedir ;This is where ahk opens programs from

;;;Windows store apps
; `Win + R` enter "shell:AppsFolder"
; Create shortcut
; click properties
; Copy Target
; enter like spotify below

^!m::  ; Ctrl+Alt+m Open spotify
Run shell:AppsFolder\SpotifyAB.SpotifyMusic_zpdnekdrzrea0!Spotify
return

;;; Normal Apps


^!n::  ; Ctrl+Alt+N Ted notepad a more full-featured alternative to Windows Notepad
if WinExist("Untitled - TED Notepad")
    WinActivate
else
    Run C:\Program Files (x86)\TED Notepad\TedNPad.exe
return

^!x::  ; Ctrl+Alt+X Emacs
Run, "C:\Program Files\Emacs\x86_64\bin\runemacs.exe"
return

^!a::  ; Ctrl+Alt+A teams
Run, C:\Users\<user>\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
return

^!f::  ; Ctrl+Alt+f
Run, "C:\Program Files\Mozilla Firefox\firefox.exe"
return


;;; PWA's and browser profiles

^!w::  ; Ctrl+Alt+W some edge profile
Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --profile-directory="Profile 2"
return

;; To locate app id
; open PWA, pin to taskbar, press "'Win' +R" enter "shell:User Pinned\TaskBar" + RET
; C:\Users\<username>\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar
; and copy the app-id, this will be the string of chars

^!s::  ; Ctrl+Alt+S other Teams ;;https://teams.microsoft.com/_#/calendarv2
Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge_proxy.exe"  --profile-directory="Profile 2" --app-id=longstringkbpecnijapbekepjdoieci
return

;; Firefox 84+ doesn't include PWA's so I use a new tab, you can use the LTS version if you want this functionality

^!c::  ; Ctrl+Alt+C Open messenger
Run "C:\Program Files\Mozilla Firefox\firefox.exe" -new-tab https://messenger.com/
return
