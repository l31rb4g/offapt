# offapt
Install packages offline using APT
---

Usage:

1. On a machine that has internet access:
$ ./offapt.sh [package name]

---

This will create a .debs/ folder.

2. Tar the .debs folder and send it to the machine without internet access
$ tar -cvf debs.tar .debs

---

3. Untar on the machine without internet access
$ tar -xvf debs.tar

---

4. Install all packages
$ cd .debs
$ ./install_all.sh
