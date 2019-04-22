COMMAND="cd ~/servers/hopper_hack_backend/ && \
	git checkout master && \
	git fetch --all --prune && \
	git reset --hard origin/master && \
	git pull && \
	yarn && \
	pm2 startOrRestart ecosystem.config.js --env production"

ssh -o StrictHostKeyChecking=no -i ~/.traviskey $USER@$SERVER $COMMAND
