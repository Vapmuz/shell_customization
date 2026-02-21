#! /bin/bash


#install brew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# check install
brew doctor

# Update homebrew recipes
brew update


# Command-line 

# brew list -1 --formulae
binaries=(


asciidoc
autoconf
wget

coreutils

dialog
dos2unix
ffmpeg
flac
fontconfig
freetype
gd
gdbm
gettext
ghostscript
git
glib
gnu-getopt
gnutls
graphicsmagick
graphviz
htop
imagemagick
jansson
jasper
jbig2dec
jemalloc
jpeg
jq
lame
lz4
lzlib
mariadb
markdown
midnight-commander
msgpack
mysql-client
ncdu
nmap
openjpeg
openssl@1.1
p11-kit
p7zip
pandoc
pcre
pcre2
pkg-config
protobuf
readline
rename
rlwrap
s3cmd
sox
sqlite
ssh-copy-id
sshfs
task
tmux
trash
tree
unzip
watch
webp
wget
x264
x265
xdelta
xmlto
xvid
xz
yajl
zstd
  rename
  htop
  fdupes
  wget

  links
  uv

)

echo "installing binaries... ${binaries[@]}"
brew install ${binaries[@]}



# Apps
apps=(

brave-browser
calibre
copyq
db-browser-for-sqlite
firefox
iterm2
sublime-text
visual-studio-code
vlc

)


# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps... ${apps[@]}"
brew install  --appdir="/Applications" ${apps[@]}


#After you're done, you should clean everything up with:
brew cleanup


#Cask can also be used to automatically download and install fonts. In order to enable this, you'll need to tap the fonts cask:
brew tap  homebrew/cask-fonts

# fonts (list https://github.com/caskroom/homebrew-fonts/tree/master/Casks)
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
)

# install fonts
echo "installing fonts..."
brew install cask ${fonts[@]}


#
# Settings git
#

git config --global alias.l "log --oneline --graph"
git config --global alias.ll "log --stat --pretty=short --graph"
git config --global alias.zilla  "show --stat --stat-width=80 --stat-graph-width=5"

git config --global push.default current


