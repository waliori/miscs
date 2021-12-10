# launch 

```bash
sudo crontab -e
```

then add this line in the end of the file and save

```bash
* * * * * /usr/bin/sudo -H /home/pi/wifi-check-restart-if-down.sh 1> /home/pi/logs/wifi-check-restart-if-down.out 2> /home/pi/logs/wifi-check-restart-if-down.err
```

