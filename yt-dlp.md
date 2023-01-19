# How to download Video and Audio from the web

We do this using the Open Source program [yt-dlp](https://github.com/yt-dlp/yt-dlp). The program `yt-dlp` supports downloading from [hundreds of websites](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md), like `tiktok.com`, `instagram.com` and of course also `youtube.com`.

### TODO:

`youtube-dl` Although it is named _youtube_ DL you can download videos from almost any site on the web, as it supports [hunderts of websites](https://ytdl-org.github.io/youtube-dl/supportedsites.html). Excluding paid services like <netflix.com>, <disneyplus.com> or Amazon <primevideo.com>. If you search for "download" on <github.com> it is the [most stared repo](https://github.com/search?q=download&s=stars).

## Installation and Setup

### 1. Open Windows Admin Shell

Open the Windows Shell (Command Prompt) `cmd.exe` as Administrator.

1. Open the Start Menu <kbd>⊞ Win</kbd>.
2. Search for `cmd`.
3. Right click and select "Open as administrator"

![Open Windows Shell as administrator](./open-cmd-admin.png)

```cmd
winget.exe install yt-dlp.yt-dlp
winget.exe install videolan.vlc
```

Now you can reopen your terminal and use `yt-dlp.exe --version`.

### Windows 10

I also recommend installing the epic [new Windows Terminal](https://www.youtube.com/watch?v=8gw0rXPMMPE). _It is installed on Windows 11 by default._

```cmd
winget.exe install microsoft.windowsterminal
```

## Usage

Navigate to any directory in the Windows File Explorer (`explorer.exe`), for example I opened `C:\Users\junaga\Videos`. Right-click on the empty space, and select "Open in Terminal"
