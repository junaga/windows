# `winget.exe` overview

After what feels like 10 years, $MSFT has finally settled on a decent package manager. Now all I have to do to install something is

### 1. Find the package

`winget.exe search "league of legends"` spits out eight packages.

```
Name                     Id                             Version        Source
------------------------------------------------------------------------------
League of Legends - PBE  RiotGames.LeagueOfLegends.PBE  62.0.4.4878570 winget
League of Legends - OC1  RiotGames.LeagueOfLegends.OC1  62.0.4.4878570 winget
League of Legends - NA   RiotGames.LeagueOfLegends.NA   62.0.4.4878570 winget
League of Legends - LA2  RiotGames.LeagueOfLegends.LA2  62.0.4.4878570 winget
League of Legends - LA1  RiotGames.LeagueOfLegends.LA1  62.0.4.4878570 winget
League of Legends - EUW  RiotGames.LeagueOfLegends.EUW  62.0.4.4878570 winget
League of Legends - EUNE RiotGames.LeagueOfLegends.EUNE 62.0.4.4878570 winget
League of Legends - BR   RiotGames.LeagueOfLegends.BR   11.13.382.1241 winget
```

### 2. Install the package

we want `winget.exe install riotgames.leagueoflegends.euw`

### 3. Thats it

`winget.exe` has a builtin `export` subcommand (similar to `$ pip freeze` in python), that spits out a JSON file, of all the installed packages. Now I can run a single command to install 100+ packages from a file.

## Subcommands and usage

Run `winget.exe --help` for a full CLI usage print

### Discover packages

- `winget.exe search <QUERY>` the repositories for a package
- `winget.exe show <QUERY>` package details. version,description,license
- `winget.exe list` installed packages

### Manage packages

- `winget.exe install <QUERY>`
- `winget.exe uninstall <QUERY>`

### Advanced

- `winget.exe settings` - open the CLI settings file
- `winget.exe source` - `add`,`list`,`remove` repositories
- `winget.exe export <FILE>` - JSON of installed packages
- `winget.exe import --accept-package-agreements <FILE>` - install all packages from a previously exported JSON file
- `winget.exe source export` - JSON of added repositories

The simple `<QUERY>` parameter is either matching, or a substring of, the packages' `--name` (human readable), `--id` (unique) or `--moniker` (like an alias or nickname). If you don't know the package `--id` put `<QUERY>` in quotation marks `""` to escape the space character, (for example `winget.exe search "visual studio code"`).

## My system

I have two repositories set in `winget.exe source`

1. The official `"msstore"` Microsoft Store
2. The "_Microsoft Community_" maintained `"winget"` manifests https://github.com/microsoft/winget-pkgs

`winget.exe --version` is v1.3.2691 on:

```
june-win-box
x64 (64-Bit PC)
Windows 11 Pro
Build 22621.1105
Windows Feature Experience Pack 1000.22638.1000.0
Microsoft.DesktopAppInstaller v1.18.2691.0
```
