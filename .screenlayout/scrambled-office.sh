#!/bin/sh
xrandr \
  --dpi 144 \
  --output eDP1 \
    --mode 1920x1080 \
    --pos 0x1080 \
    --rotate normal \
  --output HDMI1 \
    --mode 3840x2160 \
    --pos 1920x0 \
    --rotate normal \

