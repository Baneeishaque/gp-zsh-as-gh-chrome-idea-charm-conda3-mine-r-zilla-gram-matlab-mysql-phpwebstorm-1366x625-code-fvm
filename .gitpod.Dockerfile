FROM baneeishaque/gp-vnc-zsh-as-gh-chrome-idea-charm-conda3-mine-r-zilla-gram-matlab-mysql-phpwebstorm-1366x625-code

RUN brew tap leoafarias/fvm \
 && brew install fvm

ENV PATH=/home/linuxbrew/.linuxbrew/Cellar/fvm/2.2.2/bin:$PATH
