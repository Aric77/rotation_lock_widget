# rotation_lock_widget
A custom widget I made for my Linux (Fedora KDE Plasma) setup that toggles rotation lock

# How to setup

## Where to put the bash script
I placed ```rotation-lock.sh``` into ```~/.local/bin/```

## How to set up the widget
1. navigate to ```~/.local/share/plasma```
2. Make a new folder called 'plasmoids' (you can do these steps with ```mkdir -p ~/.local/share/plasma/plasmoids```)
3. In 'plasmoids', make a folder named `com.<username>.rotationlock` and put all the contents of '``rotation-lock-widget``' inside of it
4. If you go to your taskbar and add a new widget, you should be able to to see a widget called "Rotation Lock" and you can add it

I got the instructions for making a new widget from:
https://develop.kde.org/docs/plasma/widget/
