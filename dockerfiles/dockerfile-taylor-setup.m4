FROM ubuntu:14.04.5

MAINTAINER Taylor Monacelli <taylormonacelli@gmail.com>

RUN sudo apt-get -qq -y update
RUN sudo apt-get install -y emacs git lsof
RUN cd ~ && git init && git remote add origin https://github.com/taylormonacelli/dotfiles.git && git fetch && git checkout --force -t origin/master||:
