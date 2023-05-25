FROM archlinux:latest
WORKDIR /tmp
RUN pacman -Sy 
RUN pacman-key --init
RUN pacman-key --populate
RUN pacman -Sy archlinux-keyring --noconfirm
RUN pacman -S wget neovim --noconfirm
RUN wget https://www.multichain.com/download/multichain-2.3.3.tar.gz
RUN tar -xvzf multichain-2.3.3.tar.gz
WORKDIR multichain-2.3.3
RUN mv multichaind multichain-cli multichain-util /usr/local/bin
