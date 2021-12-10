# launch 

```bash
sudo crontab -e
```

then add this line in the end of the file and save

```bash
* * * * * /usr/bin/sudo -H /home/pi/check.sh 1> /home/pi/logs/check.out 2> /home/pi/logs/check.err
```

