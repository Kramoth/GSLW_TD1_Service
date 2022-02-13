# GSLW_TD1_Service
This is the solution for TD1 on services, a quick tutorial on how to implement a daemon

This TD implements two dummy services: solodated.service and continuousdated.service

#Install

To install these services, type the following commands in a terminal:

```sh
git clone https://github.com/Kramoth/GSLW_TD1_Service.git
cd GSLW_TD1_Service
./install.sh
```

# solodated

This service write the date on boot on a file situated at /var/log/solodate/solodated.out
It write date each time it is started.

To trigger it, type the following command:

```sh
sudo systemctl start solodated.sh
```

Then check on /var/log/solodated/solodate.out 

It is also possible to check he service status:

```sh
sudo systemtcl status solodated.service
```

#continuousdated

This service write date on a file situated at /var/log/continuousdated/continuousdate.out every 2 seconds

To check if it works properly check the log file or type the folowing command:

```sh
sudo systemctl status continuousdated.service
```
# Uninstall

To uninstall this project, in a terminal:

```sh
cd /folder/where/the/project/is
./uninstall.sh
```
