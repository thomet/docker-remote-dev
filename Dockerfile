FROM ubuntu:20.04

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y software-properties-common && rm -rf /var/lib/apt/list/*
RUN add-apt-repository ppa:lazygit-team/release
RUN apt-get update && apt-get install -y \
  sudo \
  zsh \
  vim \
  curl \
  git-core \
  gnupg \
  tmate \
  lazygit \
  ruby \
  docker.io \
  docker-compose \
  mycli \
  gpg \
  bat \
  git-secret \
  && rm -rf /var/lib/apt/list/*

RUN useradd -s /bin/zsh -m -G sudo developer && echo "developer:developer" | chpasswd && usermod -aG docker developer
RUN echo "developer ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN bash -c "$(curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh)"

RUN curl -L https://github.com/antonmedv/fx/releases/latest/download/fx-linux.zip > fx-linux.zip
RUN unzip fx-linux.zip && rm fx-linux.zip && mv fx-linux /usr/local/bin/fx

USER developer
WORKDIR /home/developer

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN bash -c "$(curl -L https://bit.ly/janus-bootstrap)"

RUN git clone https://gist.github.com/a444d8cd84c08a50eea81ae32dbc1644.git ~/.oh-my-zsh/custom/plugins/connect-docker-db
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

ADD --chown=1000:1000 ./welcome.sh /home/developer/welcome.sh
ADD --chown=1000:1000 ./dotfiles/ /home/developer/.dotfiles/

RUN ln -sf ~/.dotfiles/zshrc ~/.zshrc
RUN ln -sf ~/.dotfiles/p10k.zsh ~/.p10k.zsh

CMD zsh -c "~/welcome.sh" ;  zsh
