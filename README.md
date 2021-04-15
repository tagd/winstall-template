# winstall-template
 My template for making a directory for a fast windows install

## Usage
I'd reccomend for a clean and custom windows install setup Windows based on the file in the [setup](https://gist.github.com/tagd/ca71d387876a26772e05a64ed5229a9d) folder, then I've also got a list of the settings I change in `settings/windows.txt`.
Head over to the program's directory and customise for your install, I've written my install-process based on [use-package](https://github.com/jwiegley/use-package) syntax but you can write your's in whatever way works for you.
I'd strongly reccommend using [winget](https://github.com/microsoft/winget-cli) to manage all the package installs then like I've done the separate file for manual configurations.
During your daily usage backup your settings to the `settings` folder and device specific install to the `devices` folder
