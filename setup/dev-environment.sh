#!/usr/bin/env bash
clear
# [ Black Mesa - Vue.js Dependencies ]
# ------------------------------------------------------------------
# Lucas Moreira - l.moreira@live.ca 
# ------------------------------------------------------------------
# 
# Setup Bash Script for installing Node dependencies and running dev server
# with support for Windows | Mac | Linux architectures.

# Program Variables
BLACKMESA="[ Black Mesa ] | Setup Script"

# Error Handling Function
error_handle() {
  echo
  echo "${RED}[ ERROR ] || ${BLACKMESA}: $1${NC}"
  echo
  exit 1
}

# Color Variables
ORANGE=`tput setaf 5`
GREEN=`tput setaf 2`
RED=`tput setaf 1`
YELLOW=`tput setaf 3`
NC=`tput sgr0`

# Intro / Continue
echo "__________________________________________________________________________________________"
echo
echo "[ ${YELLOW}Black Mesa - Vue.js App${NC} ]"
echo
echo "${GREEN}Welcome Aboard Black Mesa! We are happy to have you as part"
echo "${GREEN}of our intrepid team. We are just getting your environment setup.${NC}"
echo
echo "__________________________________________________________________________________________"

sleep 2s
echo
echo "This Script will install and configure all the necessary Software & Dependencies to run the project."
echo
echo "${YELLOW}[ Including ]"
echo
echo "- Node & NPM"
echo "- Vue"
echo "- NPM Dependencies${NC}"
echo
echo
echo "For more information and useful documentation please refer "
echo "to the [${GREEN} ~/docs ${NC}] folder inside of this repository."
echo 
echo "It includes information on Linting, Testing and styleguides. "
echo
echo "------------------------------------------------------------------------------------------"

sleep 2s

echo
echo "${YELLOW}[ NOTICE! ]${NC} - This application depends on ${GREEN}Node.js${NC} and ${GREEN}Vue.js being installed globally."
echo
echo "${YELLOW}[ NOTICE! ]${NC} - This Installation Script will check to make sure Node.js install and install it for you if necessary."
echo
echo "${RED}[ SUDO! ]${NC} - This application requires ${YELLOW}SUDO priviledges${NC} to install ${GREEN}Node${NC}."

sleep 1s
echo
# TODO Modify Prompt
# Ask User for permission
echo "${YELLOW}--------------------------------------------${NC}"
echo "${YELLOW}--------------------------------------------${NC}"
read -p "${YELLOW}|   Continue with installation?   ${NC}|${NC}  " answer

# [ Black Mesa ] Setup Script RUN
clear
echo "${GREEN}Initiating Install...${NC}"
echo
sleep 2s

# [ BASE SYSTEM CHECKS ]
# Check and install system dependencies based on OS

# Check for XCode on OSX platforms
if [ "$(uname)" == "Darwin" ]
then
  if gcc
  then
    clear
  else
    clear
    echo
    echo "${RED}Missing xCode developer tools...${NC}"
    echo "${YELLOW}Please Install xCode before trying again${NC}"
    error_handle "Apple xCode Developer Tools are not installed."
  fi
else
  echo "Not Darwin"
  sleep 1s
  clear
fi

# [[ NODE JS ]].
if node -v
  then
    echo
    echo "${GREEN}Node is already installed. Proceeding with Dependencies...${NC}"
    sleep 5s
  else
    clear
    echo
    echo "${RED}Node installation is missing.${NC}"
    echo
    echo "${GREEN}Preparing to Install Node..."
    sleep 3s
    
    #[ OS BASED NODE INSTALLATION ]
    if [ "$(uname)" == "Darwin" ]
    then
      # OSX Install Script
      clear
      echo 
      echo "${YELLOW}[ Operating System Detected as: ${GREEN}Darwin / OSX${NC} ${YELLOW}]${NC}"
      echo
      sleep 2s
      # Install Node
      echo
      echo "${GREEN}Installing Node via Bew. Cheers!${NC}"
      sleep 2s
      brew install node

    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]
    then
      # Linux Node Install Script
      clear
      echo
      echo "${YELLOW}[ Operating System Detected as: ${GREEN}Linux / GNU${NC}${YELLOW}]${NC}"
      sleep 2s
      # Prepare Install
      curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash
      # Install Node
      sudo apt-get install -y nodejs
    
    elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]
    then
      # Windows
      # Install Node VIa Chocolatey
      cinst nodejs.install
    elif *
    then
      error_handle "Could Not Find Your OS. Please Install Node Manually And Try Again."
   fi
fi
# NODE INSTALL FINISH.

# Fetch latest master branch
echo "${GREEN}Fetching latest codebase from Master...${NC}"
if git fetch && git checkout master && git pull origin master
  then
    sleep 2s
else
  error_handle "Please clear your Git workspace by commiting or stashings your changes and try again."
fi
echo
echo
echo "${GREEN}Installing Vue.js Globally...${NC}"
echo
echo
sleep 2s
sudo npm install -g vue
sudo npm install -g vue-cli

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]
  then
    #[ Install Libpng for pngquant ]
    clear
    echo
    echo "${YELLOW}[ INSTALLING LIBPNG ]${NC}"
    sudo apt-get install libpng-dev

    #[ Install Libtool, automake, nams and autoconf ]
    clear 
    echo
    echo "${YELLOW} [ Fixing MOZJPEG ]${NC}"
    sudo apt-get install libtool automake autoconf nasm
  else
    error_handle "Not Linux, Moving on..."
fi

# Install NPM dependencies
sleep 1s
clear
echo
echo "${GREEN}Installing Node dependencies...${NC}"
echo
echo
sleep 2s
if cd vue-app-base/
  then
    npm install
else
  error_handle "Seems there was a problem here. Contact an Admin."
fi
echo

# Run Test Server
clear
echo 
echo "${GREEN}SUCCESS! All dependencies installed...${NC}"
echo
echo "${GREEN}[ Welcome Aboard The ${ORANGE}Black Mesa${GREEN} ]${NC}"
echo
echo "${GREEN}------------------------------------------------------------------------------------------${NC}"
echo
echo "Please refer to the ${GREEN}[ ~/docs ]${NC} folder or the GitHub Wiki for guides on"
echo
echo "${YELLOW}- Dependencies"
echo "${YELLOW}- Naming Convention"
echo "${YELLOW}- Code Styleguide"
echo "${YELLOW}- Linting"
echo "${YELLOW}- Best Practices"
echo "${YELLOW}- Code Recepies"
echo "${YELLOW}- Routes [vue-router]"
echo "${YELLOW}- VueX [State Management]"
echo "${YELLOW}- Vue Resource [Ajax Wrapper]"
echo "${YELLOW}- Firebase [OODB]"
echo "${YELLOW}- Templating Structure"
echo "${YELLOW}- Responsive Breakpoints"
echo "${YELLOW}- SCSS Structure"
echo "${YELLOW}- SCSS Styleguide"
echo "${YELLOW}- And More...${NC}"
sleep 3s
echo
echo "${YELLOW}Booting Up Test Server on [ ${GREEN}localhost:8080${NC} ]"
echo
sleep 1s
npm run dev;
