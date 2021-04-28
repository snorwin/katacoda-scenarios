launch.sh

apt install bc

sed -i 's/echo "Complete the following tasks to progress:"//' /usr/local/bin/challenge.sh
sed -i 's/printf "\x1b[32mKatacoda Challenge\x1b[0m\n";//' /usr/local/bin/challenge.sh
sed -i 's/printf "Please share your feedback:\n";//' /usr/local/bin/challenge.sh
sed -i 's/printf "https://get.oreilly.com/skills-challenge-survey.html\n";//' /usr/local/bin/challenge.sh

mkdir -p /AmongUs/
mkdir -p /AmongUs/Cafeteria
mkdir -p /AmongUs/Cafeteria/Admin
mkdir -p /AmongUs/Cafeteria/Lager
mkdir -p /AmongUs/Cafeteria/O2

echo "alias pwd='echo 1 > /tmp/pwd && pwd'" >> /root/.bashrc
echo "alias ls='echo 1 > /tmp/ls && ls'" >> /root/.bashrc

echo "cd /AmongUs/Cafeteria" >> /root/.bashrc

echo 'done' > /opt/katacoda-background-finished