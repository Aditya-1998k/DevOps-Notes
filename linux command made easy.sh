============================================
           Linux commands Made Easy
============================================

Basic Commands
--------------
>> date
return dates and time

>> cal
returns calander of months

>> cal -y
return whole year calender

>> man cal
you can see documents of all linux command with man <command_name>

>> history
Show executed command on terminal (sometime we forget some command
after use)

>> clear
clear the terminal

================================================================
                  FILE SYSTEM
================================================================

/(root directory)|
                 |boot -- containing boot system programs
                 |user -- installed software and libraries  -- bin, lib, share, include
                 |etc -- config files
                 |home -- user data who logged in to the system | ------------> sue (user1) --> .bashrc, .mozilla, Desktop, Pictures, Music
                 |                                              | 
                 |                                              | ------------> fred (user2) --> .bashrc, Desktop, Docs
                 |                                             
                 |dev
                 |proc

suppose some image in Pictures folder
path = /home/sue/Pictures/hawai.png
This is called absolute path which start from directory.

relative_path = /Pictures/hawai.png
it not start from root, but start from somewhere in linux
file system.

suppose we are in boot

./   --> refers to boot
../  --> referers to parent of boot which is root

------------------------------------------
>> pwd 
you can get the abosolute path where you are
/home/gaditya/Pictures

>> cd    | change directory

To move to root directory
>> cd /

To move to home directory
>> cd 
hit enter you will be in home directory

>> cd ..   
go to parent of current working directory

>> ls
returns list of all files in current working directory (by default)

>> ls -a
returns list of all files including .files also (hided folders)

>> ls -l
returns all the files along with more information about file excluding (. file)
eg:
drwxrwxr-x  4 gaditya gaditya  4096 May 23 22:54 cron
drwxr-xr-x  2 gaditya gaditya  4096 Aug 28  2023 Desktop
drwxrwxr-x 12 gaditya gaditya  4096 Sep 11  2023 develop_py3
drwxr-xr-x  3 gaditya gaditya  4096 May 25 19:35 Documents

>> ls -la 
returns all files including . file/folder also

>> ls -lt
return all files sorted in order of time

>> ls -lS
returns all files sorted in order of size

>> ls -lsh
returns all files in sorted order of size with human readable size details
eg:
drwxr-xr-x  2 gaditya gaditya  20K May 24 17:15 Pictures
drwxr-xr-x  2 gaditya gaditya  16K May 24 17:16 Downloads
drwxrwxr-x  4 gaditya gaditya 4.0K May 23 22:54 cron
drwxr-xr-x  2 gaditya gaditya 4.0K Aug 28  2023 Desktop
>> ls -lSrh
returns all files in sorted of size in revers order
eg:
drwxrwxr-x  4 gaditya gaditya 4.0K May 23 22:54 cron
drwxr-xr-x  2 gaditya gaditya  16K May 24 17:16 Downloads
drwxr-xr-x  2 gaditya gaditya  20K May 24 17:15 Pictures

Note: We can do different combination of lSrht etc.
------------------------------------------------------------
            Auto Completion in Terminal
------------------------------------------------------------
while doing cd we can hit TAB button to get auto 
suggetion.

>> cd (hit TAB) --> you will get suggestion

suppose one folder name is  (same first part 1)
>> cd same\first\part\1

this way you can go to that folder

==========================================================
               Directory Administor
==========================================================
>> mkdir | make directory
>> mkdir newdir
create newdir folder in current working directory(cwd)

>> mkdir newdir1 newdire2 newdir3
create three folder in cwd

>> midir newdir{4..10}
create newdir4 to newdir10 folder so we can create 
number of directory if naming pattern is same

>> mkdir -p newdir11/newdir12/newdir13
it will create tree of directory 
newdir12 in newdir11
newdir13 in newdir12

----------------------
Copy Command (cp)
----------------------
>> cp file1 file2
copy file1 to same folder with name file2

>> cp -v file1 file2
it will show from where to where file copied

>> cp -v <source_path> <destination_path>
-v is just to show the file structure after copy

>> cp -v -R folder2 folder1
it will copy the whole original structure of folder2 to 
folder 1

Copy in UPDATE MODE
------------------
>> cp -u file1 folder/file1
Here if folder/file1 is newer than file1 in such
case update will not be going to happen

only case when file1 is newer than folder/file1 update
will happen

------------------------------------
        mv (move and rename)
-----------------------------------

>> mv file1 file3
here renaming will happen
and file1 will become file3

>> mv file folde1
move file to folder1

Moving directory into other directory
>> mv folder1 folder3

--------------------------------------
            rm (remove)
--------------------------------------
>> rm file1
remove file1 completely (gone)

>> rm folder
rm: cannot remove 'folder': is a directory

>> rm -r folder
to remove folder in a directory

======================================================
                    wildcards
======================================================
Wildcards is a fast and pwoerful way to select multiple
file at once. Here is the basic set of wildcards.
    * represents zero or more characters
    ? represents a single character
    [] represents a range of characters

    *    all files
    g*   all files beginning with g
    b*.txt  any file beginning with 'b' and ending with '.txt'

>> cd /var/log
suppose you want only '.log' file in log folder

>> ls *.log
return all files with ends with '.log'

I want 4 character in a file which is ending with '.log'

>> ls ????.log
return all the files which have 4 characters
one ? means 1 character

>> ls [a,k]*.log
return all file which is start with 'a' or 'k' and ends with '.log'

copy .log file to desktop

>> cp *.log ~/Desktop/
here ~ represents home directory

move all .log file in new folder1 in desktop
>> mkdire folder1
>> mv *.log folder1

>> rm *.log 
remove all .log files

===========================================================
                       find
===========================================================
>> find . -name test.txt
return file path starting from starting point
first Argument (.) is starting point of search -- here . means current directory
-name   name of the file

>> find . -name test.txt -delete
it will find and delete

>> find . -name folder2 -type d
-type d mean wants to find directory not file
it will return path of folder2

>> find /var/log -vmtime -30
return all the files which is modified in last 30 days.

----------------------------------------------------
     LOCATE (faster than find but works on db)
----------------------------------------------------

>> locate test.txt
it will return all the file with abosulute path which ends with test.txt

eg:
/home/gaditya/Documents/test.txt
/usr/share/box/clock_test.txt
/etc/config/hell_test.txt

>> locate -c test.txt
return number of such files
return 2 here

>> locate -l 1 test.txt
/home/gaditya/Documents/test.txt
limit return to 1

Suppose you just created a newfile.txt
and it is not updated in database
>> locate newfile.txt
will not return any thing

In such case needs to return database

>> sudo updatedb
>> locate newfile.txt
/home/gaditya/Documents/newfile.txt

===========================================================
                      FILE CONTENTS
===========================================================








