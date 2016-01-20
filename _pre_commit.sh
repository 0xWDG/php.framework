if [ -e ".git/hooks/pre-commit" ]; then
	#get version string

	VER=`git log --oneline | wc -l`
	TAGVER=`expr $VER + 1`
	MYVERS=`cat _ver`
	TAGVER=`$MYVERS.$TAGVER`

	#Need to update Xcode version for framework...
	cd PHPFramework
	xcrun agvtool new-version -all TAGVER
	# ok
else
	echo 'Creating pre-commit git hook...'
	echo '#!/bin/sh' > .git/hooks/pre-commit
	echo 'if [ -x ./_pre-commit.sh ]; then' >> .git/hooks/pre-commit
	echo '	source ./_pre-commit.sh' >> .git/hooks/pre-commit
	echo 'fi' >> .git/hooks/pre-commit
fi