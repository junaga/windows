# Windows 11

## What's new

The [new Windows 11](https://www.microsoft.com/en-us/windows/windows-11) is basically the same as version 10, ~~like version 9~~, and 8, and carries almost all utilities and apps from [previous Windows versions](https://en.wikipedia.org/wiki/List_of_Microsoft_Windows_versions). As always, the system is fully [backwards-compatiable](https://www.youtube.com/watch?v=bC6tngl0PTI) and all previous Apps _should_ work.

- The Taskbar and Windows 10 Settings are redesigned.
- [Window Layouts](https://support.microsoft.com/en-us/windows/snap-your-windows-885a9b1e-a983-a3b1-16cd-c531795e6241) and multiple Desktops. (10 years late but finally, laughs in mad Linux user voice)
- It does include the [epic new Windows Terminal](https://www.youtube.com/watch?v=8gw0rXPMMPE) as the default terminal App.
- File Explorer now has Tabs. There is a new (right click) context menu.
- The Notifications menu and quicksettings got split up.
- Cortona is off by default. (good choice, Alexa already dead)
- Every Network is treated as Public by default (again, good choice).
- Apps for Drivers, _NVIDIA Control Panel_ (graphics card), or _HP Smart_ (printer) are installed by <ms-settings:windowsupdate-optionalupdates> automatically.

## System requirements

[complete system requirements](https://www.microsoft.com/en-us/windows/windows-11-specifications#table1)

- PC, Monitor and Keyboard
- _PC Should not be older then 10 years_
- A SSD is, practically required, at this point.
- x64 _(x86-64, amd64, 64-Bit PC)_ chip is required, x86 _(i386, 32-Bit PC)_ is **not supported**.
- A Microsoft Account, [account.microsoft.com](https://account.microsoft.com) sign-in
- Firmware needs to be [UEFI](https://en.wikipedia.org/wiki/UEFI) not [BIOS](https://en.wikipedia.org/wiki/BIOS)
- The PC needs to have something called [TPM 2.0](https://support.microsoft.com/en-us/topic/what-is-tpm-705f241d-025d-4470-80c5-4feeb24fa1ee) or newer
  - It's like [30 bucks](https://www.google.com/search?q=tpm+2.0&tbm=shop) if not already on the Motherboard. (I already had it on the board)
  - `tpm.msc` should be "ready for use"
  - [Documentation](https://learn.microsoft.com/en-us/windows/security/information-protection/tpm/trusted-platform-module-overview)

Old devices can basically be _brought back to life_ by replacing the device primary disk, with an SSD. However Windows-NT (like Windows-DOS) is still trash, and Ubuntu _(recommended)_, or Linux Mint should be used on weak old Laptops.

## Editions

Just install "**Windows 11 Pro**". See [installation](#installation) below

Windows _Pro_ has some technical features _Home_ is lacking. Even though only a developer would really notice the difference. However you can install Windows Home on your moms old laptop if you want to.

They share the same system requirements, but Windows 11 Pro does support more cores and memory. So in theory Pro is build _and optimized_ against higher compute power. Which again, _in theory_ would mean Home requires weaker Hardware to run smoothly. The following is missing from Windows 11 Home.

- Bitlocker and Remote Desktop Hosting (_server_)
- Microsoft Hyper-V, Windows Sandbox, and Windows Information Protection
- Can not be used in Active Directory or similar Endpoint Management services.

Windows 11 Education should only be installed in schools and universities by IT admins, and Windows 11 Enterprise should only be installed by Enterprise Administrators, both should use Endpoint Management services, [Microsoft has like 10 of those](https://learn.microsoft.com/en-us/mem/endpoint-manager-overview).

I would not recommend installing either the Windows 11 "S" or "N" Editions anywhere.

### "S" Editions

[Windows 11 S](https://support.microsoft.com/en-us/windows/windows-10-and-windows-11-in-s-mode-faq-851057d6-1ee9-b9e5-c30b-93baebeebc85) does not allow program installations outside the Microsoft Store, or the usage of another browser besides Microsoft Edge. It's just a locked down Box. However Windows S Editions can be downgraded anytime into a normal system.

### "N" Editions

In 2004 [European lawmakers forced Microsoft](https://en.wikipedia.org/wiki/Microsoft_Corp._v._Commission), _after fining them 800 Million dollars_, to release future Windows distributions, without some of the preinstalled in-house apps from Microsoft. _Windows Media Player_ or _Skype_ would not be on the desktop by default to weaken Microsofts desktop software dominance. The plan never really worked out, and modern Apps like _Microsoft Teams_ could malfunction, because some other software _like DRM or Codecs_ would also be missing on the system. This can be fixed by installing the [_Media Feature Pack_](https://support.microsoft.com/en-us/topic/media-feature-pack-list-for-windows-n-editions-c1c6fffa-d052-8338-7a79-a4bb980a700a) on Windows 10/11 N Edition systems through the Windows Update settings menu.

## Installation

1. Plug the USB Drive into your PC and boot the _Windows Preinstallation Environment_ from the PC Firmware (BIOS or UEFI) UI.
2. Select "Windows 11 Pro" for installation, **not "N"**.
3. Follow the onscreen installation instructions, and complete the setup.
4. un/install the apps you like, with `winget.exe`
   - `winget.exe install debian.debian` to setup WSL
   - `winget.exe uninstall xbox` etc.
