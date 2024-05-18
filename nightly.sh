#!/bin/bash
# A script to run nightly, preforms system maintinence before shutting down.
# Ellie Schaefer - 4/30/2024
echo "Are you ready to shut down?"
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
~/Scripts/update.sh
if [ $? -eq 0 ]
then
	echo "Update successful, shutting down now."
	echo "sudo shutdown now"
else
	echo "Update failed, not shutting down."
fi
