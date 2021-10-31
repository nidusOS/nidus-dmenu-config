# Maintainer: nidusOS
# Fork From: Derek Taylor (DistroTube) <derek@distrotube.com>
pkgname=nidus-dmenu-config
_pkgname=nidus-dmenu-config
pkgver=1.0.r1.478ec33
pkgrel=1
pkgdesc="A collection of dmenu scripts"
arch=('any')
url="https://github.com/nidusos/nidus-dmenu-config.git"
license=('GPL3')
depends=(dmenu ffmpeg findutils xclip xdotool xorg-xrandr bind jq)
groups=()
makedepends=(pandoc git)
checkdepends=()
optdepends=(
  'emacs: editor for dm-confedit'
  'libnotify: used by dm-logout'
  'maim: used by dm-main'
  'mpc: used by dm-music'
  'mpd: used by dm-music'
  'qutebrowser: used by dm-bookman'
  'reddio: used by dm-reddit'
  'yad: used by dm-reddit and dm-weather'
  'slock: used by dm-logout'
  'sxiv: used by dm-setbg'
  'xwallpaper: used by dm-setbg'
  'udisks2: used by dm-usbmount'
  'wl-clipboard: wayland alternative to xclip'
  )
provides=(nidus-dmenu-config)
conflicts=(nidus-dmenu-config dmscripts)
replaces=()
backup=()
options=()
source=("git+$url")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

pkgver() {
  cd "${_pkgname}"
  printf "1.0.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
  cd "${_pkgname}"
  DESTDIR="$pkgdir/" make clean build
}

package() {
  cd ${_pkgname}
  NAME="${pkgname}" DESTDIR="${pkgdir}/" make install
}

post_install () {
  mandb
}

