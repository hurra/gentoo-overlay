EAPI=8
inherit cmake
DESCRIPTION="Water treatment calculator for brewing beer"
HOMEPAGE="https://github.com/jo-hannes/Aqua-mixtura"

if [[ ${PV} != 9999 ]]; then
	SRC_URI="https://github.com/kleiner-brauhelfer/kleiner-brauhelfer-2/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	# TODO
else
	inherit git-r3
	EGIT_REPO_URI="https://github.com/jo-hannes/Aqua-mixtura.git"
fi

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	dev-qt/qtbase:6[widgets,network]
"

RDEPEND="${DEPEND}"
BDEPEND="${DEPEND}"


src_configure() {
	cmake_src_configure
}

src_install() {
	cmake_src_install
}

