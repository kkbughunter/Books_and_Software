#!/bin/bash


while true; do
    echo -e " \n\n\t\t\t Welcome to Software Installer\n\t 1. Update System\n\t 2. Media Softwares VLC\n\t 3. Programming Software Python,GCC,GIT\n\t 4. Code Editer VScode \n\t 5. Flutter \n\t 6. Android Studio and Flutter\nEXIT - ctrl+c\n\n";
	read -p "Enter Your Option: " choice

	case $choice in
		1)
		    sudo apt update
			sudo apt upgrade
   			sudo apt install curl wget gcc g++ make
			sudo apt update
			echo -e "\n\n Update Competed......\n\n"

		    ;;
		2)
		    sudo snap install vlc
			echo -e "\n\n VLC Media Install Competed......\n\n"
		    ;;
		3)
		    	sudo apt install python3
			echo -e "\n\n Python Install Competed......\n\n"
			sudo apt install git
			echo -e "\n\n GIT Install Competed......\n\n"
			sudo apt install gcc
			echo -e "\n\n GCC Install Competed......\n\n"
		    ;;
		4)
			sudo snap install code --classic
			echo -e "\n\n VS Code Install Competed......\n\n"
			;;
		5)
			sudo snap install code --classic
			read -p "Do you want to install Flutter? (y/n): " install_flutter
				if [[ $install_flutter == "y" ]]; then
				sudo snap install flutter --classic 
				flutter sdk-path
				flutter doctor
				read -p "Do you want to Setup Flutter Path? (y/n): " flutter_path
				if [[ $flutter_path == "y" ]]; then
					export PATH="$PATH:/snap/bin/flutter/bin"
					echo -e "\n\n Flutter Path Setup Competed......\n\n"
				fi
				echo -e "\n\n Flutter Install Competed......\n\n"
			fi
			;;
   		6) 
     			read -p "

			Node: This might need <1GB Internet...
			Do you want to Install 
			Android Studio
			Flutter
			? (y/n): " user_input
			
			# Convert the input to lowercase for case-insensitive comparison
			user_input_lower=$(echo "$user_input" | tr '[:upper:]' '[:lower:]')
			
			# Check the user's input
			if [ "$user_input_lower" = "y" ]; then
				echo "Start Installing Android Studio."
				sudo snap install android-studio --classic
				echo "Start Installing Flutter"
				snap install flutter --classic
				flutter sdk-path
				flutter doctor
				which flutter dart
				flutter doctor --android-licenses
			fi
		;;
		*)
		    echo "Invalid choice"
		    ;;
	esac
done
