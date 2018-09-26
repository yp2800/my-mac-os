# Hazel rules

I currently use Hazel to instantly commit any changes I make to all the [curated lists](https://github.com/learn-anything/curated-lists#readme) I maintain. As well as CSV files of [Web Searches](https://github.com/nikitavoloboev/alfred-web-searches#readme) and [Ask Create Share](https://github.com/nikitavoloboev/alfred-ask-create-share#readme).

I also automate committing the README of this [my macOS repo](https://github.com/nikitavoloboev/my-mac-os#readme) & [iOS](https://github.com/nikitavoloboev/my-ios#readme) repo as I want to instantly push any changes I make.

Since I want to keep my macOS repo always updated, I made a macro to open the README file in Sublime Text so I can quickly make a change, save and the change will instantly be committed with `readme: update` message.

The Hazel rule for this is simple and looks like this:

![](https://i.imgur.com/n8oDnmX.png)

With this as the shell script:

![](https://i.imgur.com/8tvZuQ0.png)

Here it is in code:

```bash
git add README.md
git commit -m "readme: update"
git push
```

## `~/Downloads`

I use prefixes for most files. This allows me to write some great rules for my Downloads folder that will file the files where I want them to be based on the prefix.

Here is one example of such rule:

![](https://i.imgur.com/8hqlybB.png)

It checks if the file is a PDF file, and has its name starting with `r.`, it will automatically move the file to my `~/Documents/papers` directory synced with iCloud. This rules won't automatically work for you but you can take ideas from some of these rules.

There are also rules I made that will automatically trash any opened `.alfredworkflow` files as I never want to keep them hanging after I opened the newly downloaded workflow in Alfred Preferences.

## Syncing

I [sync](https://www.noodlesoft.com/manual/hazel/work-with-folders-rules/manage-rules/sync-rules/) all my Hazel rules with Dropbox.
