dir=$(pwd)
cd ~/.local/bin/
curl -s https://raw.githubusercontent.com/jobcmax/maxfetch/main/maxfetch --output maxfetch
chmod +x /usr/local/bin/
echo "\033[1;34;48mmaxfetch is installed! \033[1;37;0m" 
maxfetch
cd $dir
