#!/bin/bash
echo -n "Downloading gotty..."
cd "./gotty"
curl -s -L -o "gotty_linux_amd64.tar.gz" "https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz"
tar zxf "gotty_linux_amd64.tar.gz"
chmod +x ./gotty/gotty
rm "gotty_linux_amd64.tar.gz"
cd ".."
ls -la "./gotty/"
echo " done".
