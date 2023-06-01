#!/system/bin/sh

# This script checks the current brightness
# and offsets the values. It could surely
# be made more robust. Currently un-tested
# on Oxygen OS.

BRIGHTNESS_FILE=/sys/class/backlight/panel0-backlight/brightness

BRIGHTNESS=$(cat ${BRIGHTNESS_FILE})

#echo $BRIGHTNESS

if [[ ${BRIGHTNESS} < 200 ]] && [ ${BRIGHTNESS} -ge 146 ]; then
  echo $((${BRIGHTNESS}-140)) > ${BRIGHTNESS_FILE}
fi

exit 0
