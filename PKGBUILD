# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# The following guidelines are specific to BZR, GIT, HG and SVN packages.
# Other VCS sources are not natively supported by makepkg yet.

# Maintainer: Matthew Klein <mklein994@gmail.com>
pkgname=vgraph-c-git
pkgver=1
pkgrel=1
pkgdesc="Print a sparkline graph on the command line"
arch=('armv7h')
url="https://github.com/mklein994/vgraph-c"
license=('unknown')
groups=()
depends=()
makedepends=('git') # 'bzr', 'git', 'mercurial' or 'subversion'
provides=("${pkgname%-git}")
conflicts=("${pkgname%-git}")
replaces=()
backup=()
options=()
install=
source=('git+https://github.com/mklein994/vgraph-c')
noextract=()
md5sums=('SKIP')

# Please refer to the 'USING VCS SOURCES' section of the PKGBUILD man page for
# a description of each element in the source array.

pkgver() {
	cd "$srcdir/${pkgname%-git}"

# The examples below are not absolute and need to be adapted to each repo. The
# primary goal is to generate version numbers that will increase according to
# pacman's version comparisons with later commits to the repo. The format
# VERSION='VER_NUM.rREV_NUM.HASH', or a relevant subset in case VER_NUM or HASH
# are not available, is recommended.

# Bazaar
	# printf "r%s" "$(bzr revno)"

# Git, tags available
	# printf "%s" "$(git describe --long | sed 's/\([^-]*-\)g/r\1/;s/-/./g')"

# Git, no tags available
	printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"

# Mercurial
	# printf "r%s.%s" "$(hg identify -n)" "$(hg identify -i)"

# Subversion
	# printf "r%s" "$(svnversion | tr -d 'A-z')"
}

# prepare() {
# 	cd "$srcdir/${pkgname%-VCS}"
# 	patch -p1 -i "$srcdir/${pkgname%-VCS}.patch"
# }

build() {
	cd "$srcdir/${pkgname%-git}"
	# ./autogen.sh
	# ./configure --prefix=/usr
	make
}

# check() {
# 	cd "$srcdir/${pkgname%-git}"
# 	make -k check
# }

package() {
	cd "$srcdir/${pkgname%-git}"
	make DESTDIR="$pkgdir/" install
}
