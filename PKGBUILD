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

pkgver() {
	cd "$srcdir/${pkgname%-git}"
	printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
	cd "$srcdir/${pkgname%-git}"
	make
}

package() {
	cd "$srcdir/${pkgname%-git}"
	make DESTDIR="$pkgdir/" install
}
