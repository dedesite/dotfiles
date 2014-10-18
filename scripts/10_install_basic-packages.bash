#!/usr/bin/env bash

echo
echo "=============================="
echo "Installing basic packages"
echo "=============================="

. utils/functions.sh

get_os

case "$OS" in
  "ubuntu"|"debian")
    PKGLIST="openssh-server htop ethtool screen dstat tmux"
    ;;
  "arch")
    PKGLIST="tmux vim-runtime htop ethtool dstat"
    ;;
  "centos"|"redhat")
    PKGLIST="tmux htop ethtool dstat"
    ;;
esac

install_packages $PKGLIST

