Here we will try to write a cron job to backup file
--------------------------------------------

echo
====
>> echo $RANDOM     will return any random number every time
>> echo $RANDOM > /home/gaditya/cron/myfile.txt        it will right random number to myfile.txt

But this $RANDOM only works in bash shell not other shell, like
----------------------------------------
>>/bin/sh
$echo $RANDOM      it will not work here

So We need to write that in bash shell only
------------------------------------
>> /bin/bash -c 'echo $RANDOM'    give you random number (it is same as above)
Full Command
-----------
>> /bin/bash -c 'echo $RANDOM > /home/gaditya/cron/myfile.txt'


Now we will write this full command with cron to schedule this
-------------------------------------
>> crontab -e
When you hit enter:
================================================================================
# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command
* * * * * /bin/bash -c 'echo $RANDOM > /home/gaditya/cron/myfile.txt'

==========================================================================
We can write like above file our cron job, Here * means every min/hour/day/month etc.

To define the time you can provide concrete values for
minute (m), hour (h), day of month (dom), month (mon),
and day of week (dow) or use '*' in these fields (for 'any').


=================================================
CRON JOB TO AUTOMATE THE PROCESS WITH PYTHON
=================================================
in folder cron
>> touch backup_program.py
--------------------------------------------------------------------------------
------------------------------------------------------------------------------
import os
import shutil     #works with file

file_path = '/home/gaditya/cron/backup_file'
dropbox_path = '/home/gaditya/cron/DROPBOX'

for file in os.listdir(file_path):
    shutil.copy(os.path.join( file_path, file), os.path.join(dropbox_path, file)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

Create some file in backup_file to take backup in dropbox by our python script
To run python script in bash shell

>>which python3
/usr/bin/python3

>>crontab -e

write cron tab like this:

* * * * * /usr/bin/python3 /home/gaditya/cron/backup_program.py

--------------------------------------------------------------------------------
above cron job will trigger backup_program.py every 1 min











