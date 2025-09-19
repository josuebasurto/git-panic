# git-panic: El Script de Evacuación de Código Definitivo

# ¿Qué es git-panic?

git-panic es un script de emergencia diseñado para guardar tu trabajo y notificar a tu equipo en caso de que necesites evacuar de forma inmediata. Con una sola ejecución, el script se encarga de:

Crear una rama de Git única para la evacuación.

Hacer un "commit" de todos tus cambios locales.

Subir los cambios al repositorio remoto.a

Enviar una notificación a Slack a un canal predefinido.

Una vez ejecutado, puedes cerrar tu computadora y poner tu seguridad en primer lugar.

Instalación y Configuración Rápida
1. Configurar el Webhook de Slack
Antes de usar el script, necesitas obtener la URL del Incoming Webhook de Slack. Puedes encontrarla o crear una nueva en api.slack.com/apps.

2. Descargar e Instalar
Para Linux y macOS:
Abre tu terminal y ejecuta los siguientes comandos. Esto descargará el script y le dará los permisos necesarios para ser ejecutado.

# Descarga el script de forma segura
curl -o git-panic.sh [https://github.com/josuebasurto/git-panic/raw/main/git-panic.sh](https://github.com/josuebasurto/git-panic/raw/main/git-panic.sh)

# Haz el script ejecutable
chmod +x git-panic.sh


Abre el archivo git-panic.sh con tu editor de texto y pega tu URL de Slack en la variable SLACK_WEBHOOK_URL.

Para Windows:
Puedes descargar el archivo git-panic.bat directamente desde el repositorio:

Haz clic en este enlace: https://github.com/josuebasurto/git-panic/raw/main/git-panic.bat

Guarda el archivo en el directorio raíz de tus proyectos.

Abre el archivo .bat con el Bloc de Notas o tu editor favorito y pega tu URL de Slack en la variable SLACK_WEBHOOK_URL.

Modo de Uso
En caso de emergencia, abre la terminal o el Símbolo del sistema, navega a la carpeta de tu proyecto y ejecuta el script:

# Para Linux y macOS
./git-panic.sh

# Para Windows
git-panic.bat


Disclaimer
Este script se proporciona "tal cual" y es una herramienta de utilidad. El autor y los contribuidores no se hacen responsables de ningún uso indebido, pérdida de datos o cualquier otro incidente que pueda ocurrir. Es tu responsabilidad usar esta herramienta de forma segura y ética.

Aviso de Seguridad: Tu Seguridad Primero**
Recuerda, no hay nada más importante que tu vida. Ningún código o trabajo vale la pena arriesgarse. Siempre prioriza tu seguridad personal y la de los demás. En caso de emergencia real, evacúa de inmediato y no te demores.

Créditos
Esta idea fue inspirada por Josue Basurto y el script fue generado por el modelo de lenguaje de Google, Gemini.
