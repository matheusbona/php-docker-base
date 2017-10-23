#DEPLOY
echo "Iniciando deploy"
rm -rf /www
git clone bitbucket-repo-ssh-url www

echo "Running bagaça on 0.0.0.0:7000"
php -S 0.0.0.0:7000 -t /www
