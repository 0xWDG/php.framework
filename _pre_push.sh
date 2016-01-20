if [ -e ".git/hooks/pre-push" ]; then
	#get version string
	cd PHPFramework
	sh makeDocumentation.sh
	# ok
else
	echo 'Creating pre-push git hook...'
	echo '#!/bin/sh' > .git/hooks/pre-push
	echo 'if [ -x ./_pre_push.sh ]; then' >> .git/hooks/pre-push
	echo '	source ./_pre_push.sh' >> .git/hooks/pre-push
	echo 'else' >> .git/hooks/pre-push
	echo '	echo MISSING PRE-PUSH' >> .git/hooks/pre-push
	echo 'fi' >> .git/hooks/pre-push
fi