#!/bin/sh
xrandr \
  --dpi 144 \
  --output eDP-1 \
    --mode 1920x1080 \
    --pos 0x1080 \
    --rotate normal \
  --output HDMI-1 \
    --mode 3840x2160 \
    --pos 1920x0 \
    --rotate normal \
  --output DP-2 --off \
  --output DP-1 --off \
  --output HDMI-3 --off \
  --output HDMI-2 --off \
