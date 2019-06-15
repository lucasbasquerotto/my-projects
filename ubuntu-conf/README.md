## 1. Install the Tweaks tool to be able to customize the desktop look and feel

```bash
curl -L https://raw.githubusercontent.com/lucasbasquerotto/my-projects/master/ubuntu-conf/desktop.sh -o ~/desktop
chmod +x desktop
./desktop
rm desktop
```

### To use it:

1) Log-out and Log back-in
2) Launch the “Tweaks” application
3) Click the “Extensions” category at the left side of the Tweaks window
4) Enable the “Dash to Panel” extension
5) Click in the Settings button of the “Dash to Panel” extension
(or right-click the 'Show Applications' button at the bottom left corner of your screen and click 'Dash to Panel Settings')
6) Go to Behaviour -> Desktop Button
7) Go to Behaviour -> Ungroup Applications
(in the settings define title width as 0)

## 2. Disable the mouse middle click button pasting text:

1) VSCode: `"editor.selectionClipboard": false`
2) Chrome: extension/plugin AutoScroll
