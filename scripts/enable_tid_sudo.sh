#!/bin/bash

if [[ `grep tid /etc/pam.d/sudo` ]]
then
	echo "Touch ID already enabled for sudo."
else
	echo "Enabling Touch ID for sudo..."
	sed -i '' '1 a\
	auth sufficient pam_tid.so' /etc/pam.d/sudo
fi