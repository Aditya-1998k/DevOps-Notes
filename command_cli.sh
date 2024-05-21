Devops:

development --------------> Build ------------------> Production
.py                         .exe                      server = 172.168.1.1 --->Mapped with Domain

CLI Commands:-
----------
cat file.txt    -------> read data from file.txt
cat > file.txt  -------> Write data into file.txt
                         After writing press CTRL+D


VI EDITOR:
----------
vi editor have two mode
1.command mode - (by default):
                move -->arrow key
                delete single character --> x
                delete whole line --> dd
                copy--> yy
                paste --> p
                scroll up/down --> ctrl+u/d
                ESC -- To goto command mode
                :w -- save changes in file
                :wq -- save and quit
                : ->command
                /of --> find all words containing of and press n to move to next occurance
2.Insert Mode - i (to go to insert mode)

More Linux Commands
==================
whoami  : username of loggedin user
id      : id of the loggedin user
su zeomega : swich user to zeomega
ssh jiva@172.168.1.2 : login to other server or ip address

ls/root - (restricted)
          ls: cannot open directory /root: Permission denied
          open in sudo if permission denied
sudo /etc/sudoers
sudo ls/root

Download file
==============
curl https://www.google.com/hello.txt -o
if we will not give -o then it will read only not save

wget https://www.google.com/hello.txt -o /folder/folder1
it will save hello.txt into folder1

OS Version and other information
============================
ls /etc/*release*
cat /etc/*release*

Package Managers
=================

RPM (Red Hat Package Manager)
-----------
RPM -----------------> (telnet.rpm)
rpm helps to get exact location of package but it does not
care about any dependency in package.


rpm -i telnet.rpm   Install Package
rpm -e telnet.rpm    Uninstall Package
rpm -q telnet.rpm    Query Package


RPM -----------------------> ansible

installing ansible through RPM, but ansible requires
python and other dependent library which will not
install dependency.

rpm -i ansible


YUM (deal with problem of dependency)
------------------------------
YUM is high level package manager which uses RPM as package managers and
query package and install other dependency also.

--------|
|  YUM  |                                                            |--->pyYAML
|  RPM  |-----warehouse where package available------->ansible------->python----->all other dependency in right order
---------               |                                            |---->sshpass
                        |
                        /etc/yum.repos.d


yum install ansible     Install Package and other dependency also
yum repolist            List of repository in system

ls /etc/yum.repos.d     files where these repo configured
cat /etc/yum.repos.d    you can find url to get location of the packages

yum list ansible        list the package and version
yum remove ansible     remove all the ansible pakcage

yum --showduplicates list ansible    Show all the ansible pakcage even duplicate also

yum install ansible <version>     To install perticular version of ansible or any other package


Services :
=========
once you install a software on a servers, especially web servers or database servers,
we need to make sure those services should run even though if servers rebooted.
And also services should start in right orders because one may dependent on others.

Ex: start apache server
--------------
service httpd start       start HTTPD service
systemctl start httpd     start HTTPD service (new way to start service)
systemctl stop httpd      stop service
systemctl status httpd    check httpd service status
systemctl enable httpd    configure HTTPD to start at startup
systemctl disable http    configure HTTPD to not start at startup

How do you configure a program as service?
----------------------------------
Suppose i have a program my_app.py in /opt/code/my_app.py
when i will run this
>>/usr/bin/python3 /opt/code/my_app.py
it will start running at 
running at http://127.0.0.1:500

>> curl http://localhost:5000
Hello, World!

Now i want this to run as service
------------------------
Our expectation:
----
systemctl start my_app
systemctl stop my_app

How to do this
----
/etc/systemd/system   (create a file here with name as you want your service)

----------------------------------------------------------
my_app.service
[Unit]
Description=my python web application

[Service]
ExecStart= /usr/bin/python3 /opt/code/my_app.py
ExecStartPre= /opt/code/configure_db.sh
ExecStartPost= /opt/code/email_status.sh
Restart=always

[Install]
WantedBy=multi-user.target
-----------------------------------------------------------
save the file and run 
>> systemctl daemon-reload
>> systemctl start my_app


>> cat /lib/systemd/system/docker.service


Networking Basics
================
* Switching
* Routing
* Default Gateway
* DNS Configuration on Linux

Switching
----------
system A ----------------------switch------------------------->system B




















































