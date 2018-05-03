#!/usr/bin/env bash
# Watchman Installer

# MIT License

# Copyright (c) 2018 WORAPAT KETENG

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

W_APP_NAME="watchman"
W_APP_GIT="https://raw.githubusercontent.com/thanabuts/watchman/master/sources/watchman"
W_INSTALL_PATH="/usr/local/bin/"

W_CHECK_INSTALL_PATH(){
  if [[ ! -e $W_INSTALL_PATH ]]; then
    echo "Creating "$W_INSTALL_PATH
    sudo mkdir -p $W_INSTALL_PATH
    sudo chmod 777 $W_INSTALL_PATH
  else
    sudo chmod 777 $W_INSTALL_PATH
  fi
}

W_DOWNLOAD(){
  echo "[Downloading...] $W_APP_NAME - $1"
  curl -ssl $W_APP_GIT$2 > $W_INSTALL_PATH$W_APP_NAME$2
  if [[ ! -e $W_INSTALL_PATH$W_APP_NAME$2 ]]; then
    echo "Can't installing "$W_APP_NAME
    exit
  fi

  if [[ "$2" = "" ]] && [[ -e $W_INSTALL_PATH$W_APP_NAME ]]; then
    sudo chmod 755 $W_INSTALL_PATH$W_APP_NAME
    sudo chmod 755 $W_INSTALL_PATH
  fi
}

W_CHECK_INSTALL_PATH
W_DOWNLOAD environment .env
W_DOWNLOAD sound  .aiff
W_DOWNLOAD script
echo "The Installation was successful"
echo "Please execute the command: '$W_APP_NAME -h' in your terminal."
exit
