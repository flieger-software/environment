#!/usr/bin/env bash

dependencies=(
    'wget'
    'curl'
    'build-essential'
    'zlib1g-dev'
    'libssl-dev'
    'libreadline6-dev'
    'libyaml-dev'
)

x=0;

while [ $x != ${#dependencies[@]} ]
do
    dependencie=${dependencies[$x]}

    sudo apt-get install ${dependencie} --yes

    let "x = x +1"
done

cd /tmp

echo "[!] Downloading Ruby.."
    wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.0.tar.gz

echo "[!] Downloading nodejs.."
    curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

echo "[!] Unpacking Ruby.."
    tar -xvzf ruby-2.3.0.tar.gz

echo "[!] Installing Ruby.."
    cd ruby-2.3.0
    ./configure --prefix=/usr/local
    make
    sudo make install

echo "[!] Installing nodejs.."
    sudo apt-get install nodejs --yes

ruby --version
node --version

gem install sass compass bundler jekyll
npm install --global bower