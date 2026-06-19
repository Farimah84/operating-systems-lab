# Linux System Administration Lab

## Overview

This repository contains the exercises and scripts developed for the **Operating Systems Laboratory** course.

All tasks were performed using **Ubuntu on Windows Subsystem for Linux (WSL)** to practice Linux command-line tools, Bash scripting, file management, permissions, and basic system administration concepts.

---

## Environment

- **OS:** Ubuntu (WSL)
- **Shell:** Bash
- **Platform:** Windows Subsystem for Linux (WSL)
- **Course:** Operating Systems Laboratory

---

## Repository Contents

### 1. User Management Script

A Bash script developed to practice Linux user administration and automate user management tasks.

Main concepts covered:

- Creating and managing Linux users
- Working with user information
- Understanding user permissions
- Using Linux system commands inside shell scripts

Run the script:

```bash
./user_management.sh
```

---

## 2. File Permissions and Access Control

Exercises related to Linux file permissions and access control.

Topics practiced:

- Viewing file permissions:

```bash
ls -l
```

- Changing file permissions:

```bash
chmod
```

- Understanding Linux permission types:

```
r -> read
w -> write
x -> execute
```

- Managing permissions for:

```
owner
group
others
```

Example:

```bash
chmod 644 filename.txt
```

---

## 3. Linux Command Practice

Several Linux commands were practiced during the laboratory sessions.

### awk

Used for text processing and extracting information from files.

Example:

```bash
awk '{print $1}' file.txt
```

---

### df

Used to display disk space usage.

Example:

```bash
df
```

---

### tee

Used to display command output and save it into a file at the same time.

Example:

```bash
ls -l | tee file_list.txt
```

---

### tar

Used for creating and extracting archive files.

Example:

```bash
tar -cvf archive.tar folder/
```

---

### tr

Used for translating or replacing characters.

Example:

```bash
echo "hello" | tr 'a-z' 'A-Z'
```

---

## Running Shell Scripts in Ubuntu WSL

To execute a shell script:

1. Open Ubuntu terminal.

2. Navigate to the project directory:

```bash
cd project_path
```

3. Give execution permission:

```bash
chmod +x script_name.sh
```

4. Run the script:

```bash
./script_name.sh
```

---

## Learning Objectives

Through these exercises, the following concepts were practiced:

- Linux command-line environment
- Bash scripting
- File system management
- User and permission management
- Automation using shell scripts
- Working with Ubuntu through WSL

---

## Author

Farimah Nourpanah

Operating Systems Laboratory Course