dir=$(pwd)
cd /usr/local/bin/
sudo curl -s https://raw.githubusercontent.com/jobcmax/maxfetch/main/maxfetch --output maxfetch
sudo chmod +x /usr/local/bin/maxfetch
echo "\033[1;34;48mmaxfetch is installed! \033[1;37;0m" 
maxfetch
cd $dir
