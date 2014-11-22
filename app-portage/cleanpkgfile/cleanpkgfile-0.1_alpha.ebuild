# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3

DESCRIPTION="Checks and cleans your package.* files"
HOMEPAGE="https://github.com/aayla-secura/cleanpkgfile"
EGIT_REPO_URI="https://github.com/aayla-secura/cleanpkgfile.git"

KEYWORDS="~amd64"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND=">dev-lang/perl-5
	dev-perl/File-Find-Rule
	virtual/perl-File-Temp
	virtual/perl-Term-ANSIColor
"

src_install() {
	dosbin cleanpkgfile
	insinto /etc
	doins cleanpkgfile.conf
	dodoc README
}