# Linux Fundamentals Lab — Day 2 to Day 7

## Objective
Complete the Linux fundamentals practical lab covering terminal navigation, file and directory management, file viewing/editing, permissions, and ownership.

## Topics Covered
- Navigation: `pwd`, `ls`, `ls -l`, `ls -la`, `cd`, `cd ..`, `cd ~`
- Creation: `mkdir`, `touch`
- File management: `cp`, `mv`, `rm`
- Reading/editing: `cat`, `less`, `nano`
- Permissions and ownership: `ls -l`, `chmod`, `chown`
- Final combined Linux mini-lab

## Practical Lab

### 1. Navigation
```bash
pwd
ls
ls -l
ls -la
cd ~
cd ..
cd /tmp
pwd
```

### 2. Create the lab structure
```bash
cd ~
mkdir CyberLab
cd CyberLab

mkdir Notes
mkdir Scripts
mkdir Logs
mkdir Backup

touch Notes/linux.txt
touch Notes/commands.txt
touch Scripts/test.sh
touch Logs/system.log

ls -la
```

### 3. Copy, move and remove
```bash
cp Notes/linux.txt Backup/linux_backup.txt
mv Notes/commands.txt Notes/linux_commands.txt
mv Scripts/test.sh Backup/test.sh
ls -R
rm Backup/test.sh
ls -R
```

### 4. Read and edit
```bash
nano Notes/linux.txt
cat Notes/linux.txt
less Notes/linux.txt
```

Exit `less` with `q`.

### 5. Permissions and ownership
```bash
ls -l Scripts/test.sh
chmod 755 Scripts/test.sh
ls -l Scripts/test.sh
sudo chown kali:kali Scripts/test.sh
ls -l Scripts/test.sh
```

### 6. Final mini-lab
Create this structure and verify it:
```text
CyberLab/
├── Notes/
│   ├── linux.txt
│   └── linux_commands.txt
├── Scripts/
│   └── test.sh
├── Logs/
│   └── system.log
└── Backup/
│   └── linux_backup.txt
```

## Evidence
Store actual terminal screenshots in `Screenshots/`.

## Completion
- [ ] Navigation completed
- [ ] Files/directories created
- [ ] Files copied, moved and removed
- [ ] File read and edited
- [ ] Permissions changed and verified
- [ ] Ownership checked/changed
- [ ] Final mini-lab completed
- [ ] Screenshots captured
