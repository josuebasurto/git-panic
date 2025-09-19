#!/bin/bash

# Este script guarda tu trabajo, lo sube a una rama de evacuación
# y notifica a tu equipo en Slack.

# =========================================================================
# === INSTRUCCIONES: REEMPLAZA LA URL DE ABAJO CON TU WEBHOOK DE SLACK ===
# =========================================================================
SLACK_WEBHOOK_URL="https://hooks.slack.com/services/T00000000/B00000000/xxxxxxxxxxxxxxxxxxxxxxxx"

# Define un nombre de rama único usando la fecha y hora.
BRANCH_NAME="evacuacion/$(date +%Y%m%d-%H%M%S)"

echo "Iniciando evacuación..."
echo "---"

# 1. Crea una nueva rama y cámbiate a ella.
git checkout -b $BRANCH_NAME

# 2. Agrega todos los archivos modificados, nuevos y eliminados.
git add -A

# 3. Haz un commit con un mensaje de emergencia.
git commit -m "chore: EMERGENCY COMMIT - Codigo de evacuacion."

# 4. Sube la rama y el commit al repositorio remoto.
git push origin $BRANCH_NAME

echo "---"
echo "¡Tu codigo ha sido guardado de forma segura en la rama '$BRANCH_NAME'!"
echo "---"

# 5. Envía la notificación de emergencia a Slack.
# Usa curl para enviar una petición POST con el mensaje JSON.
curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"Josue ha detonado el script de evacuación. Su codigo esta en la rama: \`$BRANCH_NAME\`\\. Se reportara en caso de que todo salga bien.\"}" $SLACK_WEBHOOK_URL

echo "Notificación de emergencia enviada a Slack. ¡Ahora puedes evacuar!"
