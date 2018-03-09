# offapt
Install packages offline using APT
---

### Usage:

1. On a machine that has internet access:

`./offapt.sh [package name]`

You can run this command as many times as you want. This command will create a .debs folder, with one subfolder for each package downloaded. The packages will be downloaded with all its dependencies.

---

2. Tar the .debs folder and send it to the machine that does not have internet access

`tar -cvf debs.tar .debs`

---

3. Untar on the machine without internet access

`tar -xvf debs.tar`

---

4. Install all packages

`cd .debs`

`./install_all.sh`


You can also install each package individually by running the install.sh file inside its folder.
