@echo off
REM Wechsle ins lokale Git-Repository
cd "C:\Pfad\zu\deinem\Repo"

REM Alle Änderungen zum Commit hinzufügen (neue, geänderte, gelöschte Dateien)
git add -A

REM Commit mit Zeitstempel als Nachricht
git commit -m "Automatischer Commit am %date% %time%"

REM Push zum Remote-Repository (GitHub)
git push

echo ---
echo Automatischer Commit und Push abgeschlossen.
pause
exit