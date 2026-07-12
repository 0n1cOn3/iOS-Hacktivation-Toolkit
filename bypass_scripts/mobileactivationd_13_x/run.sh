#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

rm ~/.ssh/known_hosts >/dev/null 2>&1
pgrep -f 'tcprelay.py' | xargs kill >/dev/null 2>&1
python3 "$SCRIPT_DIR/iphonessh/python-client/tcprelay.py" -t 44:2222 &
sleep 1
while true ; do 
  result=$(ssh -p 2222 -o BatchMode=yes -o ConnectTimeout=1 root@localhost echo ok 2>&1 | grep Connection)
  echo "DEBUG: WAITING FOR CONNECTION, PLEASE DISCONNECT AND RE-CONNECT USB CABLE"
  sleep 1
  if [ -z "$result" ] ; then
echo 'CONNECTED TO DEVICE!'
sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p 2222 mount -o rw,union,update /
sshpass -p 'alpine' scp -P 2222 "$SCRIPT_DIR/bypass_scripts/mobileactivationd_13_x/mobileactivationd" root@localhost:/usr/libexec/mobileactivationd
sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p 2222 chmod 755 /usr/libexec/mobileactivationd
sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p 2222 launchctl unload /System/Library/LaunchDaemons/com.apple.mobileactivationd.plist
sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p 2222 launchctl load /System/Library/LaunchDaemons/com.apple.mobileactivationd.plist
sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p 2222 uicache -a
sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p 2222 killall backboardd
sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no root@localhost -p 2222 killall SpringBoard
pgrep -f 'tcprelay.py' | xargs kill >/dev/null 2>&1
    break
  fi
done

read -p "RETURN TO MENU? [ Y / N ] : " check

if [[ "$check" =~ ^[Yy](es)?$ ]]; then
    exec bash "$SCRIPT_DIR/hacktivation.sh"
else
    exit 1
fi
