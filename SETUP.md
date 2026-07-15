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
If you don't plan on modifying the source, you can instead copy or move the hyprquickshot directory directly into ~/.config/quickshell/. Once it's there, you can launch it the same way:
```shell
quickshell -c hyprquickshot
```
