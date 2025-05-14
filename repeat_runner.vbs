' ===== repeat_runner.vbs =====
Option Explicit

Dim fso, WshShell, stopFile
Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = CreateObject("WScript.Shell")

' Pfad zur Stop-Datei
stopFile = "C:\Users\Linus\Documents\GitHub\wishlist\stop.txt"

' Aufräumen: Stop-Datei beim Start löschen (falls vorhanden)
If fso.FileExists(stopFile) Then
    fso.DeleteFile stopFile
End If

Do
    ' Wenn Stop-Datei existiert → Schleife beenden
    If fso.FileExists(stopFile) Then
        WScript.Quit
    End If

    ' run_sync_silent.vbs unsichtbar starten
    WshShell.Run chr(34) & "C:\Users\Linus\Documents\GitHub\wishlist\run_sync_silent.vbs" & chr(34), 0

    ' 10 Sekunden warten (10000 ms)
    WScript.Sleep 10000
Loop
