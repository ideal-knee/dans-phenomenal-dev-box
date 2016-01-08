# Just because you can SSH in doesn't mean Debian is initialized you idiot
sleep 30

# Install packages
apt-get update
apt-get install -y curl default-jre emacs git ruby tmux

# Install gems
gem install rake

# Install leiningen
curl -o /usr/local/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod a+x /usr/local/bin/lein

# Customize stuff
pushd /root
  echo "export LEIN_ROOT=1" >> .profile
  mkdir Development

  pushd Development
    git clone https://github.com/ideal-knee/dotfiles.git

    pushd dotfiles
      rake activate
    popd
  popd
popd
