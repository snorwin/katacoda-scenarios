launch.sh

apt install bc

sed -i 's/echo "Complete the following tasks to progress:"//' /usr/local/bin/challenge.sh

mkdir /AmongUs/
mkdir /AmongUs/Cafeteria

cd /AmongUs/Cafeteria

echo "alias pwd='pwd && echo 1 > /tmp/pwd'" >> /root/.bashrc
echo "alias ls='ls && echo 1 > /tmp/ls'" >> /root/.bashrc

echo 'done' > /opt/katacoda-background-finished