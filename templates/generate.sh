#!/bin/bash

gomplate -c .=schemes/siheyuan.yml -f templates/xrdb/.Xresources.tmpl -o xrdb/siheyuan.Xresources
gomplate -c .=schemes/siheyuan.yml -f templates/wezterm/colorscheme.toml.tmpl -o wezterm/siheyuan.toml
