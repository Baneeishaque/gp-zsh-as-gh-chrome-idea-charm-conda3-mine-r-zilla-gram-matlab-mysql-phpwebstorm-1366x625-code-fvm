FROM baneeishaque/gp-vnc-zsh-as-gh-chrome-idea-charm-conda3-mine-r-zilla-gram-matlab-mysql-phpwebstorm-1366x625-code

RUN brew tap leoafarias/fvm \
 && brew install fvm

RUN mkdir -p /home/gitpod/fvm/versions \
 && cd /home/gitpod/fvm/versions \
 && git clone https://github.com/flutter/flutter.git master\ 
 && fvm global master

ENV PATH=$HOME/fvm/default/bin:$PATH

RUN flutter config --enable-linux-desktop \
 && flutter config --single-widget-reload-optimization \
 && flutter precache

# RUN cd $HOME \
#  && wget -qO discord_current.deb https://discord.com/api/download?platform=linux&format=deb \
#  && sudo apt update \
#  && sudo apt install -y \
#      ./discord_current.deb \
#  && sudo rm -rf /var/lib/apt/lists/* \
#  && rm discord_current.deb

RUN sudo apt update \
 && sudo apt install -y \
     clang cmake ninja-build pkg-config libgtk-3-dev \
 && sudo rm -rf /var/lib/apt/lists/*
