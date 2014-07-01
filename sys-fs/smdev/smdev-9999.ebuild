# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils savedconfig git-2

DESCRIPTION="suckless mdev"
HOMEPAGE="http://git.2f30.org/smdev/"
EGIT_REPO_URI="http://git.2f30.org/smdev/"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

RDEPEND=""

src_prepare() {
	restore_config config.h
	epatch_user
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/" install
	save_config config.h
}
