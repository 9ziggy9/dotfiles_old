#!/bin/bash

fzf_in=$1

setsid emacs $fzf_in &
