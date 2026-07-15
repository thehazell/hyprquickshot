## Symlinking
If you prefer to keep this in your home directory to work on (which is my preference), you can symlink this to the proper directories.  You can accomplish this by using the following command:
```shell
ln -s ~/Projects/dots/tools/hyprquickshot ~/.config/quickshell/hyprquickshot
```
This symlinks the entire tool to the proper location, where we can then run a simple command to take a screenshot:
```shell
quickshell -c hyprquickshot
```

## Move it
You can also just move the entire hyprquickshot tool into `~/.config/quickshell/`, if you like.
