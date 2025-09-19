@echo off

REM Este script guarda tu trabajo, lo sube a una rama de evacuación
REM y notifica a tu equipo en Slack.

REM =========================================================================
REM === INSTRUCCIONES: REEMPLAZA LA URL DE ABAJO CON TU WEBHOOK DE SLACK ===
REM =========================================================================
set "SLACK_WEBHOOK_URL=https://hooks.slack.com/services/T00000000/B00000000/xxxxxxxxxxxxxxxxxxxxxxxx"

REM Define un nombre de rama unico usando la fecha y hora.
for /f "tokens=1-4 delims=/: " %%i in ("%date% %time%") do set BRANCH_NAME=evacuacion/%%i-%%j-%%k-%%l

echo Iniciando evacuacion...
echo ---

REM 1. Crea una nueva rama y cambiate a ella.
git checkout -b %BRANCH_NAME%

REM 2. Agrega todos los archivos modificados, nuevos y eliminados.
git add -A

REM 3. Haz un commit con un mensaje de emergencia.
git commit -m "chore: EMERGENCY COMMIT - Codigo de evacuacion."

REM 4. Sube la rama y el commit al repositorio remoto.
git push origin %BRANCH_NAME%

echo ---
echo ¡Tu codigo ha sido guardado de forma segura en la rama '%BRANCH_NAME%'!
echo ---

REM 5. Envia la notificacion de emergencia a Slack.
REM Usa curl para enviar una peticion POST con el mensaje JSON.
curl -X POST -H "Content-type: application/json" --data "{\"text\":\"Josue ha detonado el script de evacuación. Su código esta en la rama: \`%BRANCH_NAME%\`\\. Se reportara en caso de que todo salga bien.\"}" "%SLACK_WEBHOOK_URL%"

echo Notificacion de emergencia enviada a Slack. ¡Ahora puedes evacuar!
