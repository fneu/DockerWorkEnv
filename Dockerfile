FROM opensuse:tumbleweed

RUN zypper ref && zypper -n in \
    python3 \
    python3-pip \
    python3-jupyter_ipython \
    neovim \
    python3-neovim \
    man \
    git \
    curl \
    zsh \
    python-virtualenvwrapper
WORKDIR /root
RUN git clone https://github.com/fneu/dotfiles.git
WORKDIR /root/dotfiles
RUN bash install
WORKDIR /
CMD zsh
