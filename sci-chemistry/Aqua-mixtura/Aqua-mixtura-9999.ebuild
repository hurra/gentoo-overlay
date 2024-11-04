EAPI=8
inherit cmake desktop
DESCRIPTION="Water treatment calculator for brewing beer"
HOMEPAGE="https://github.com/jo-hannes/Aqua-mixtura"

if [[ ${PV} != 9999 ]]; then
	SRC_URI="https://github.com/kleiner-brauhelfer/kleiner-brauhelfer-2/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	# TODO
else
	inherit git-r3
	EGIT_REPO_URI="https://github.com/jo-hannes/Aqua-mixtura.git"
	EGIT_BRANCH="github-actions"
fi

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	dev-qt/qtbase:6[widgets,network]
"

RDEPEND="${DEPEND}"
BDEPEND="${DEPEND}
	>=dev-build/cmake-3.5
"

src_compile()
{
	cmake_src_compile
}

src_configure() {
	cmake_src_configure
}

src_install() {
	cmake_src_install
#	domenu ${S}/pack/aqua-mixtura.desktop
}

