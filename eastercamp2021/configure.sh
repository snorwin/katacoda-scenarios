launch.sh

apt install bc

sed -i 's/echo "Complete the following tasks to progress:"//' /usr/local/bin/challenge.sh

mkdir /AmongUs/
mkdir /AmongUs/Cafeteria
mkdir /AmongUs/Cafeteria/Admin
mkdir /AmongUs/Cafeteria/Lager
mkdir /AmongUs/Cafeteria/O2

echo "alias pwd='pwd && echo 1 > /tmp/pwd'" >> /root/.bashrc
echo "alias ls='ls && echo 1 > /tmp/ls'" >> /root/.bashrc

echo "cd /AmongUs/Cafeteria" >> /root/.bashrc

echo 'done' > /opt/katacoda-background-finished