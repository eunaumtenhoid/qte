#!/bin/bash
#
# This file is part of the phpBB Forum Software package.
#
# @copyright (c) phpBB Limited <https://www.phpbb.com>
# @license GNU General Public License, version 2 (GPL-2.0)
#
# For full copyright and license information, please see
# the docs/CREDITS.txt file.
#
set -e
set -x

EPV=$1
NOTESTS=$2
TRAVIS_PHP_VERSION=$3

if [ "$EPV" == "1" -a "$DB" == "mysqli" -a "$TRAVIS_PHP_VERSION" == "5.6" ]
then
	cd phpBB
	composer require phpbb/epv:dev-master --dev --no-interaction
	cd ../
fi