@echo off
cd "C:\Pfad\zu\deinem\Repo"

REM Datei, die automatisch geändert wird (z. B. ein Logfile)
echo %date% %time% >> auto_log.txt

git add .
git commit -m "Automatischer Commit am %date% %time%"
git push 
