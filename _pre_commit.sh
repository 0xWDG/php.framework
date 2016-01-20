if [ -e ".git/hooks/pre-commit" ]; then
	#get version string

	VER=`git log --oneline | wc -l`
	TAGVER=`expr $VER + 1`
	MYVERS=`cat _ver`
	TAGVER=`echo $MYVERS.$TAGVER`
	git tag $TAGVER
	git add .

	#Need to update Xcode version for framework...
	cd PHPFramework
	xcrun agvtool new-version -all $TAGVER &> /dev/null

	# ok
else
	echo 'Creating pre-commit git hook...'
	echo '#!/bin/sh' > .git/hooks/pre-commit
	echo 'if [ -x ./_pre_commit.sh ]; then' >> .git/hooks/pre-commit
	echo '	source ./_pre_commit.sh' >> .git/hooks/pre-commit
	echo 'else' >> .git/hooks/pre-commit
	echo '	echo MISSING PRE-COMMIT' >> .git/hooks/pre-commit
	echo 'fi' >> .git/hooks/pre-commit
fi