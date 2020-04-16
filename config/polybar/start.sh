source ~/.config/polybar/icon-color.sh
killall -q polybar
while pgrep -x polybar > /dev/null; do sleep 1; done

polybar openbox-1 -c ~/.config/polybar/config & 
polybar openbox-2 -c ~/.config/polybar/config &
