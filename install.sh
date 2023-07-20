#!/bin/bash

if [ -e /usr/bin/makepkg ]; then
	printf "using AUR package\n"
	pushd $(mktemp -d)
	curl -s 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=maxfetch' -o PKGBUILD
	makepkg -sci
else
	pushd /usr/local/bin
	sudo curl -s https://raw.githubusercontent.com/jobcmax/maxfetch/main/maxfetch -o maxfetch
	sudo chmod +x maxfetch
fi
popd
printf "\033[1;34;48mmaxfetch is installed! \033[1;37;0m\n"
maxfetch
