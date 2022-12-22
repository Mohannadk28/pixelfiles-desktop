#! /bin/sh

chosen=$(printf "Power Off\nRestart\nLogout\nLock" | rofi -dmenu -i)

case "$chosen" in
	"Power Off") pkexec poweroff ;;
	"Restart") pkexec reboot ;;
  "Logout") echo "awesome.quit()" | awesome-client ;;
	"Lock") slock ;;
	*) exit 1 ;;
esac
