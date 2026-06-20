# Operating Systems Lab Notes

## Session 1

### Change Directory

```bash
cd ~
cd ..
cd /home
cd /etc
```

- `~` means home directory.
- `$` indicates a normal user.
- `#` indicates root user.

### Current Path

```bash
pwd
```

### List Files

```bash
ls
ls -l
```

---

## Session 2

### Variables

Create variable:

```bash
st5=ali
```

Show variable:

```bash
echo $st5
```

Delete variable:

```bash
unset st5
```

### Environment Variables

```bash
echo $PATH
echo $PS1
```

### Help

```bash
ls --help
ls -lh
man pwd
```

### Bash Version

```bash
echo $BASH_VERSION
bash --version
```

### Text Editors

```bash
touch test.txt
nano test.txt
cat test.txt
vi test.txt
```

---

## Session 3

### Large Files

```bash
less filename
```

### Log Files

```bash
cd /var/log
```

Linux kernel logs:

```bash
dmesg
```

Last 10 lines:

```bash
tail /var/log/dmesg
```

First 10 lines:

```bash
head /var/log/syslog
```

First 20 lines:

```bash
head -n 20 /var/log/syslog
```

### Live Monitoring

```bash
tail -f filename
```

### Permission Denied

```bash
sudo cat boot.log
```

### Text Processing

```bash
grep root /etc/passwd
grep -i root /etc/passwd
grep -v root /etc/passwd
grep ^sys /etc/passwd
grep [[:digit:]] random.txt
grep groupname /etc/group

cut -d ":" -f 1,3,6 /etc/passwd
```

### Redirection

```bash
ls > test.txt
ls >> test.txt

sh t.sh 2> test.txt
sh t.sh &> test.txt
```

### Pipe

```bash
ls -l /usr/bin/bash | less
cat test.txt | grep -i user
```

### Copy

```bash
cp test2.txt /home/farimah84/test
```

---

## Session 4

### Package Manager

```bash
sudo apt update
sudo apt install net-tools -y
```

Search package:

```bash
apt-cache pkgnames | grep nano
```

### Libraries

```bash
ls /etc/ld.so.conf.d
```

### Find Files

```bash
sudo find /home -type f -name "test.txt"
```

### Ownership

```bash
sudo chown username test.txt
sudo chgrp groupname test.txt
```

### Permissions

```bash
sudo chmod g+w test2.txt
sudo chmod 755 test2.txt
sudo chmod 644 test2.txt
```

### Users and Groups

```bash
sudo groupadd groupname
sudo useradd username
sudo usermod -aG groupname username
```

### Delete User and Group

```bash
sudo userdel -r username
sudo groupdel groupname
```

### Directories

```bash
mkdir dirname
rmdir dirname
rm -rf dirname
```

## Session 5

### awk

`awk` is a text processing tool.
It works like `cat` but it can process and filter text.

Example:

```bash
awk '{print $1}' file.txt
```

---

### Disk Space Usage

Show disk usage:

```bash
df
```

Show human-readable sizes:

```bash
df -h
```

---

### tee

`tee` saves command output into a file and also displays it.

Example:

```bash
ls -l | tee file_list.txt
```

---

### tar

`tar` is used to archive files.

Create archive:

```bash
tar -cvf archive.tar folder/
```

Extract archive:

```bash
tar -xvf archive.tar
```

---

### tr

`tr` means translate.
It can convert characters.

Convert lowercase to uppercase:

```bash
echo "linux" | tr a-z A-Z
```

Convert uppercase to lowercase:

```bash
echo "LINUX" | tr A-Z a-z
```
