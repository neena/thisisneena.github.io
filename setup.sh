curl https://sh.rustup.rs -sSf | sh -s -- -y -v --default-toolchain nightly

touch ~/.zshrc

sudo apt-get install zsh -y

# Switch to zsh and run these...

rm ~/.zshrc

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

sudo chsh -s /bin/zsh ubuntu

# Now, copy .zshrc and ~/.zpreztorc (TODO: make these curl from a neena.me url)
