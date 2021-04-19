# winstall-template
 I reinstall windows more frequently than any sane person should, so I created this template to routinize the process of settings configuration, cleaning pre-installed [junk](https://github.com/Sycnex/Windows10Debloater) and installing programs with [winget](https://github.com/microsoft/winget-cli)

  ## Installation
  Click `use-this-template` top right and customise for your usage.

  ## Usage
  0. Fresh install Windows 10
    <details>
      <summary>Note on customisation</summary>

      When installing you may be confronted by a "[Customise Your device](https://www.pcmag.com/news/latest-windows-10-build-asks-how-you-plan-to-use-your-device)" section.  I can't find any details on if your selection here changes the default installed apps, though I usually pick business as this skip auto installing candy-crush etc.
    </details>

  1. Download your version of this template.
  2. Download and run [windows 10 debloater](https://github.com/Sycnex/Windows10Debloater), this is a really cool project that cleans up some of the Windows Junk for you.
    <details>
      <summary>Here's the options I usually pick</summary>

      * RemoveAllBloatware
      * Cortana disable
      * Edgepdf disable
      * uninstall onedrive
      * disable telemetry
      * unpin-tiles-from-start-menu
      * remove-bloatware-reg-keys
  </details>

  3. (Optional)Install [winaero](https://winaero.com/download-winaero-tweaker/) and import winaero tweaks or set them and save to your settings.  You should also install any program you use to replace Windows defaults in my case [Ted Notepad](http://jsimlo.sk/notepad/download.php).  Winaero allows you to customised a lot of feature that either don't exist in Windows settings or are hard to find.

  4. Apply settings from `/devices`
    <details>
      <summary>Why we do this here.</summary>

      Some OEM's provide a settings file for devices which creates optimised power-plan's etc though this may reset some user-set option so we'll set those after.
    </details>
  
  5. Apply windows-settings.txt, this should be customised for the Windows settings you use.

  6. Remove remaining items in windows-trash.txt, you may not want to remove all of these's just providing what I go with.

  7. Customise winget.txt for the programs you wish to install

  8. Run [winget-package-install.ps1](https://gist.github.com/karaeren/5b1ca6e523231e4cbdb9ee52d5dfccf4) to install winget programs.

  9. Install program winget couldn't from win-not-get.xml, you can write this file in whatever format you like I've used xml as some file managers can use this though I didn't find any that were terribly effective. 

  10. Apply `your-configs` to programs and scripts.
