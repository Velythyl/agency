#!/bin/bash 

wal -n -i "$@"
wallchange "$(cat "${HOME}/.cache/wal/wal")"

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

spicetify update
spicetify apply
sleep 2
spicetify restart
