#!/bin/sh
xrandr \
  --dpi 144 \
  --output VIRTUAL1 \
    --off \
  --output eDP1 \
    --mode 2880x1800 \
    --right-of HDMI3 \
    --rotate normal \
  --output DP1 \
    --off \
  --output HDMI3 \
    --primary \
    --mode 3840x2160 \
    --pos 0x0 \
    --rotate normal \
  --output HDMI2 \
    --off \
  --output HDMI1 \
    --off \
  --output DP2 \
    --off \