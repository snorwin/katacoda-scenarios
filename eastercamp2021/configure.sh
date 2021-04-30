launch.sh

apt install bc

sed -i 's/echo "Complete the following tasks to progress:"//' /usr/local/bin/challenge.sh
sed -i 's/Katacoda Challenge//' /usr/local/bin/challenge.sh
sed -i 's/Please share your feedback://' /usr/local/bin/challenge.sh
sed -i 's/https:\/\/get.oreilly.com\/skills-challenge-survey.html//' /usr/local/bin/challenge.sh
sed -i 's/printf "$value" | fmt $FMT_OPTIONS/printf "$value"/' /usr/local/bin/challenge.sh

mkdir -p /AmongUs/
mkdir -p /AmongUs/Cafeteria
mkdir -p /AmongUs/Cafeteria/Admin/O2
mkdir -p /AmongUs/Cafeteria/Lager
mkdir -p /AmongUs/Cafeteria/Lager/Elektrik
mkdir -p /AmongUs/Cafeteria/Lager/Reaktor
mkdir -p /AmongUs/Cafeteria/Navigation
mkdir -p /AmongUs/Cafeteria/Security

echo "Abfall" > /AmongUs/Cafeteria/Abfall
echo "Abfall" > /AmongUs/Cafeteria/Navigation/Abfall
echo "Abfall" > /AmongUs/Cafeteria/Admin/O2/Abfall

echo "alias pwd='echo 1 > /tmp/pwd && pwd'" >> /root/.bashrc
echo "alias ls='echo 1 > /tmp/ls && ls --color=auto'" >> /root/.bashrc
echo "alias tree='echo 1 > /tmp/tree && tree'" >> /root/.bashrc
echo "alias find='pwd | /usr/bin/cat > /tmp/find && find'" >> /root/.bashrc
echo "alias ps='echo 1 > /tmp/ps && ps -ef | head -1 && ps -ef | grep Spieler | grep -v grep'" >> /root/.bashrc
echo "function cat() { /usr/bin/cat "\$@" && echo \$1 > /tmp/cat; }" >> /root/.bashrc
echo "function nano() { echo \$1 > /tmp/nano &&/usr/bin/nano "\$@";  }" >> /root/.bashrc

echo "cd /AmongUs/Cafeteria" >> /root/.bashrc

for ((i=1;i<10;i++));
do
   cp /AmongUs/Spieler /AmongUs/Spieler-$i
   nohup ./AmongUs/Spieler-$i &
done

echo 'done' > /opt/katacoda-background-finished