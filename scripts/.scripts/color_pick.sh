#!/bin/sh

echo -n $(colorpicker --short --one-shot --preview) | xclip -selection clipboard
