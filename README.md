# winstall-template
 I reinstall windows more frequently than any sane person should, so I created this template to routinize the process of settings configuration, cleaning pre-installed [junk](https://github.com/Sycnex/Windows10Debloater) and installing programs with [winget](https://github.com/microsoft/winget-cli)

## Installation
Click `use-this-template` top right and customise for your usage.

## Usage

### Cleaning windows junk
Head over to the [setup](https://gist.github.com/tagd/ca71d387876a26772e05a64ed5229a9d) folder to see a gist I wrote on this.

### installing and configuring
Customise `winget.txt` to list the program you want to install that can be installed with winget and add this to `/winget-package-install` and run the ps1 file. 
Also add any non-wingettable program to your version of the list in `install-process.txt` and add the config.
My `install-process.txt` is loosely based on [use-package](https://github.com/jwiegley/use-package) syntax but you can write your's in whatever way works for you.

### Saving settings for next install
Export any setting file to the `settings` dir, the add any configuration you can't to `install-process.txt`

## File structure
`devices` configuration files for specific devices
`programs` install and configuration of programs
`scripts` A list of scripts you use I usually use [AHK](https://www.autohotkey.com/)(example included)
`settings` settings and configuration files from apps that will allow you to export them
`setup` submodule for a gist I wrote on clean-setting up windows
`winget-package-install` my fork of [this](https://gist.github.com/karaeren/5b1ca6e523231e4cbdb9ee52d5dfccf4) gist that uses powershell to install a program list, I've added skipping commented lines.
