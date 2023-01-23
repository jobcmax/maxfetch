dir=$(pwd)
cd ~/.local/bin/
curl -s -o /dev/null https://raw.githubusercontent.com/jobcmax/maxfetch/main/maxfetch --output maxfetch
chmod +x ~/.local/bin/maxfetch
echo "done"
cd $dir
