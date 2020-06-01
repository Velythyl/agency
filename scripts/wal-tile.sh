#!/bin/bash 

wal -n -i "$@"
wallchange "$(cat "${HOME}/.cache/wal/wal")"

#sed -i '/^Opacity/d' ~/.cache/wal/colors-konsole.colorscheme
#echo "Opacity=0.4" >> ~/.cache/wal/colors-konsole.colorscheme
#echo "Blur=true" >> ~/.cache/wal/colors-konsole.colorscheme

names=( "Background" "BackgroundIntense" "Foreground" "ForegroundIntense" )

result="$(cat ~/.cache/wal/colors-konsole.colorscheme)"

echo "$result"

for i in "${names[@]}"
do
  result="$( echo "$result" | tr '\n' '\f' | sed "s/\[$i\]\fColor=[0-9,]\+\f/$i/" )"
done

echo "$result"

result="$(
  echo "$result" | 
  sed "s/Background/[Background]\fColor=44,44,44\f/" |
  sed "s/BackgroundIntense/[BackgroundFaint]\fColor=49,54,59\f\f[BackgroundIntense]\fColor=35,38,41\f/" | 
  sed "s/Foreground/[Foreground]\fColor=239,240,241\f/" |
  sed "s/ForegroundIntense/[ForegroundFaint]\fColor=220,230,231\f\f[ForegroundIntense]\fColor=252,252,252\f/"
)"

echo "$result" | tr '\f' '\n' > ~/.cache/wal/colors-konsole.colorscheme

. "${HOME}/.cache/wal/colors.sh"

newcolors="[Base]
main_fg                               = ${color3}
secondary_fg                          = ${color6}
main_bg                               = ${color0}
sidebar_and_player_bg                 = ${color0}
cover_overlay_and_shadow              = 000000
indicator_fg_and_button_bg            = ${color3}
pressing_fg                           = FF5C86
slider_bg                             = ${color1}
sidebar_indicator_and_hover_button_bg = ${color2}
scrollbar_fg_and_selected_row_bg      = ${color5}
pressing_button_fg                    = ${color6}
pressing_button_bg                    = ${color4}
selected_button                       = ${color2}
miscellaneous_bg                      = ${color1}
miscellaneous_hover_bg                = ${color4}
preserve_1                            = FFFFFF"

echo "${newcolors//#}" > ~/spicetify/Themes/PywalBinding/color.ini

spicetify config current_theme PywalBinding
spicetify update
spicetify apply
sleep 2
spicetify restart
