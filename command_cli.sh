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






















































