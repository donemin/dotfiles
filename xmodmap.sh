xmodmap ~/.Xmodmap

xmodmap -e 'keycode 108 = Hangul'
xmodmap -e 'keycode 105 = Hangul_Hanja'

gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['Hangul']"
gsettings set org.freedesktop.ibus.general.hotkey triggers "['Hangul']"
gsettings set org.freedesktop.ibus.general.hotkey next-engine "['Hangul']"

