dir=$(pwd)
cd ~/.local/bin/
curl https://raw.githubusercontent.com/jobcmax/maxfetch/main/maxfetch --output maxfetch
chmod +x ~/.local/bin/maxfetch
echo "done"
cd $dir
