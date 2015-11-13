#!/usr/bin/env bash

installSVN() {
	sudo apt-get install subversion
	sudo apt-get install libapache2-svn
}

installGIT() {
	echo "Instalar o GIT?\n"
	sudo add-apt-repository ppa:git-core/ppa --yes
	sudo apt-get update
	sudo apt-get install git --yes
}