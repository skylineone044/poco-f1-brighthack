# BrightHack Poco F1

A simple Magisk module for lowering the minimum brightness on EvolutionX,
where I found the minimum brightness to be too low: in the range of 1-4096,
the minimum the brightness slider will allow is 146.

This crude hack will manually lower the brigtness by writing to the following file:
```
/sys/class/backlight/panel0-backlight/brightness
```

In the brightness region the script actially modifies the brightness values,
the screen will flicker while adjusting the brightness slider, because the
moment you change the slider value, the OS will update the screen brightness,
then the script will lower it.

Tested on POCO F1 running EvolutionX: evolution_beryllium-ota-tq2b.230505.005.a1-05300048-unsigned
