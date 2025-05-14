' ===== stop_sync.vbs =====
Dim fso, stopFile
Set fso = CreateObject("Scripting.FileSystemObject")

stopFile = "C:\Users\Linus\Documents\GitHub\wishlist\stop.txt"

' Stop-Datei erstellen (Inhalt ist egal)
If Not fso.FileExists(stopFile) Then
    Dim file
    Set file = fso.CreateTextFile(stopFile, True)
    file.WriteLine "Stop"
    file.Close
End If