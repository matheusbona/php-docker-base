# php-docker-base
Base docker image to run PHP applications hosted on bitbucket.org

# Guide

1. Checkout this REPO

git clone https://github.com/matheusbona/php-docker-base.git

2. create a public/private key (Atlassian docs - https://confluence.atlassian.com/bitbucket/set-up-an-ssh-key-728138079.html)

ssh-keygen -f $(pwd)/id_rsa

3. Setup your public key on your bitbucket account (Atlassian docs - https://confluence.atlassian.com/bitbucket/set-up-an-ssh-key-728138079.html)

cat id_rsa.pub

4. Adjust the init.sh file (Put your bitbucket ssh url) 

vim init.sh

5. Build docker image 

docker build -t matheusbona/my-php-application .

6. Run the bagaça

docker run -d --name my-app matheusbona/my-php-application


# Enjoy
