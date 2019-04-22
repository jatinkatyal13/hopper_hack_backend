chmod 600 key.pem

COMMAND="cd ~/servers/hopper_hack_backend/ && \
	git checkout master && \
	git fetch --all --prune && \
	git reset --hard origin/master && \
	git pull && \
	yarn && \
	pm2 startOrRestart ecosystem.config.js --env production"

ssh -o StrictHostKeyChecking=no $USER@$SERVER $COMMAND
studyabacus
ec2-100-27-29-8.compute-1.amazonaws.com