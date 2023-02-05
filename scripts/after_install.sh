export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
cd /var/www/html/<project name>

if [ "$APPLICATION_NAME" == "<name of CodeDeploy application used for production deploys>" ]
then
	   cp .env.production .env
   else
	      cp .env.sandbox .env
fi

npm install
sequelize db:migrate
