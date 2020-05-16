# uvcvideo-switch

Script to dynamically load/unload uvcvideo module from kernel

1. Install the script to `$PATH`
2. Bind to shortcut in your Window Manager/Desktop Environment of choice

## i3 wm example

```
bindsym XF86Display exec --no-startup-id sudo uvcvideo_toggle_mod.sh
```

Note that the script needs `x` permission and requires `sudo` as it's dealing with kernel modules.
