# iOS Hacktivation Toolkit

### WORKING ON THE LATEST iOS FIRMWARE CURRENTLY AVAILABLE (iOS 13.6.1)

This is an iOS Activation Lock Bypass Tool. I wrote this tool mainly because there is nothing out there for Linux (that i could find anyway). 

Looking for developers! This is a work in progress. If you think you can add to this project please get in touch!

### Screenshot

![img](https://i.imgur.com/5KQOlSb.png)

### Supported Devices

```
iPhone X
iPhone 8
iPhone 7
iPhone SE
iPhone 6s
iPhone 6
iPhone 5s

iPad Pro (2015 & 2017 models)
iPad 5th/6th/7th Generation
iPad Mini 4
iPad Air 2
iPad Air 1 (WiFi)
iPad Mini 3
iPad Mini 2 (WiFi)

iPod Touch 7th Generation
iPod Touch 6th Generation
iPod Touch 3rd Generation
iPod Touch 2nd Generation
iPod Touch 1st Generation
```

### Features

```
- Firmware Restore / Upgrade
- Jailbreak (checkra1n)
- Activation Lock Bypass for all checkm8 vulnerable devices
```

### Install

#### Debian / Ubuntu

```
sudo apt install git
git clone https://github.com/0n1cOn3/iOS-Hacktivation-Toolkit.git
cd iOS-Hacktivation-Toolkit/
chmod +x hacktivation.sh
sudo ./hacktivation.sh
```

#### Fedora / RHEL / AlmaLinux / Rocky Linux

```
sudo dnf install git
git clone https://github.com/0n1cOn3/iOS-Hacktivation-Toolkit.git
cd iOS-Hacktivation-Toolkit/
chmod +x hacktivation.sh
sudo ./hacktivation.sh
```

The script auto-detects your distribution and installs the correct packages.

### Tested On

- Debian 10
- Ubuntu 20.04
- Fedora 43

### Notes

- **checkra1n** is downloaded as a static binary on non-Debian distros (the checkra1n APT repo is Debian-only)
- All libimobiledevice components are built from source on every distro
- Python 3 is required (Python 2 support dropped)

Looking for developers! This is a work in progress. If you think you can add to this project please get in touch!
