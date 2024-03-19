#!/bin/bash

# Load values from the configuration file
source usr.cfg

cd content
$xelatexInstallPath/xelatex "$1.tex"