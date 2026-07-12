<div align="center">

# 🔓 iOS Hacktivation Toolkit

### Activation Lock Bypass & iOS Device Toolkit for Linux

![Platform](https://img.shields.io/badge/Platform-Linux%20x86__64-blue?style=for-the-badge&logo=linux&logoColor=white)
![Distro](https://img.shields.io/badge/Works%20on-Debian%20%7C%20Fedora%20%7C%20RHEL%20%7C%20Ubuntu-success?style=for-the-badge)
![checkra1n](https://img.shields.io/badge/checkra1n-checkm8-red?style=for-the-badge&logo=apple&logoColor=white)
![License](https://img.shields.io/badge/License-GPLv3-blueviolet?style=for-the-badge)

<p>
  <b>Activate. Restore. Bypass. SSH. All from one menu.</b>
</p>

---

</div>

## 📖 Overview

A Linux-first toolkit for working with activation-locked iOS devices. Built because the iOS hacking community focuses almost exclusively on macOS and Windows — leaving Linux users with nothing but scattered forum posts and half-working scripts.

This toolkit wraps the entire workflow into a single interactive menu: from building the libimobiledevice stack from source, through checkra1n jailbreak, to tethered activation lock bypass via patched `mobileactivationd`.

> **Disclaimer:** This tool is intended for use on devices you **own** or have **explicit authorization** to work on (forgotten credentials, second-hand devices, research, etc.). Bypassing activation locks on devices you do not own may be illegal in your jurisdiction. The authors assume no responsibility for misuse.

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🔧 **Complete Installation** | Auto-builds libimobiledevice, libirecovery, idevicerestore, usbmuxd, and more from source |
| 🔄 **Factory Reset** | Restore any iOS device to factory state via `idevicerestore` |
| ⛓️ **checkra1n Jailbreak** | Integrated checkra1n launch for checkm8-vulnerable devices |
| 🔓 **Tethered Bypass (iOS 13.x)** | Swap `mobileactivationd` with patched binary, reboot into activated state |
| 🔓 **Tethered Bypass (iOS 12.4.7)** | Same approach with iOS 12.4.7-specific patched binary |
| 🐚 **SSH Shell** | One-shot SSH relay via `tcprelay.py` — drop directly into a root shell on-device |

## 📱 Supported Devices

All **checkm8** vulnerable devices (A7–A11):

<details>
<summary><b>Click to expand full list</b></summary>

```
iPhone X          iPhone 8          iPhone 7          iPhone SE
iPhone 6s         iPhone 6          iPhone 5s

iPad Pro (2015 & 2017)
iPad 5th/6th/7th Gen
iPad Mini 4       iPad Mini 3       iPad Mini 2 (WiFi)
iPad Air 2        iPad Air 1 (WiFi)

iPod Touch 7th/6th Gen
iPod Touch 3rd/2nd/1st Gen
```

</details>

## 🚀 Quick Start

### Debian / Ubuntu

```bash
sudo apt install git
git clone https://github.com/0n1cOn3/iOS-Hacktivation-Toolkit.git
cd iOS-Hacktivation-Toolkit/
chmod +x hacktivation.sh
sudo ./hacktivation.sh
```

### Fedora / RHEL / AlmaLinux / Rocky Linux

```bash
sudo dnf install git
git clone https://github.com/0n1cOn3/iOS-Hacktivation-Toolkit.git
cd iOS-Hacktivation-Toolkit/
chmod +x hacktivation.sh
sudo ./hacktivation.sh
```

> The script **auto-detects** your distribution and installs the correct package set. No manual intervention needed.

### Menu

```
 **********************************************************************
 ********************** iOS Hacktivation Toolkit **********************
 **********************************************************************

 1 : Complete Installation
 2 : Factory Reset (Restore iDevice)
 3 : Jailbreak (checkra1n)
 4 : Tethered Bypass iOS 13.0 > [PATCHED MOBILEACTIVATIOND]
 5 : Tethered Bypass iOS 12.4.7 > [PATCHED MOBILEACTIVATIOND]
 6 : SSH Shell
 0 : Exit
```

## 🛠️ How It Works

```
                    ┌─────────────────┐
                    │   hacktivation  │
                    │       .sh       │
                    └───────┬─────────┘
                            │
          ┌─────────────────┼─────────────────┐
          ▼                 ▼                 ▼
   ┌──────────────┐  ┌──────────────┐  ┌──────────────┐
   │ libimobile-  │  │  checkra1n   │  │ mobileactiv- │
   │ device stack │  │  (checkm8)   │  │ ationd patch │
   │ built native │  │   jailbreak  │  │  + tcprelay  │
   └──────────────┘  └──────────────┘  └──────────────┘
```

**Tethered bypass** works by:
1. Jailbreaking with checkra1n (checkm8 bootrom exploit)
2. SSH into device via `tcprelay.py` USB tunnel
3. Replacing `/usr/libexec/mobileactivationd` with a patched binary
4. Restarting the activation daemon → device reports as activated

The bypass is **tethered** — it must be re-applied after every reboot.

## 📋 Tested On

| Distribution | Version | Status |
|-------------|---------|--------|
| Debian | 10 (Buster) | ✅ |
| Ubuntu | 20.04 (Focal) | ✅ |
| Fedora | 43 | ✅ |

## ⚙️ Technical Notes

- **checkra1n** is installed via APT repo on Debian/Ubuntu, and as a static binary download on Fedora/RHEL (the checkra1n APT repo is Debian-only)
- All **libimobiledevice** components are compiled from upstream source on every distro — ensures latest fixes regardless of distro packaging
- **Python 3** required (Python 2 support dropped)
- **Root** required (`sudo`) for USB access and system-wide installs

## 🤝 Contributing

This is a work in progress. Originally written by [exploit-development](https://github.com/exploit-development), now maintained by [0n1cOn3](https://github.com/0n1cOn3). If you can contribute — additional bypass methods, newer iOS versions, cleaner code, better distro support — get in touch.

Fork → Branch → PR.

## 📜 License

GPL-3.0 — see [LICENSE](LICENSE) for details.

## ⚠️ Disclaimer

This software is provided for **educational and authorized testing purposes only**. Using activation lock bypass tools on devices you do not own or without explicit permission may violate laws in your country. **You are responsible for how you use this tool.**

The authors and contributors of this project assume no liability for any damage, legal consequences, or misuse of this software.

---

<div align="center">

**Maintained by** [0n1cOn3](https://github.com/0n1cOn3) · Originally by [exploit-development](https://github.com/exploit-development)

</div>
