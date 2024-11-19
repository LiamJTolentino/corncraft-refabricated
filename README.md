[CornCraft: Refabricated](https://modrinth.com/modpack/corncraft3), also stylized as CornCraft: R3fabricated or just CornCraft 3, is the third installment in the CornCraft series of Minecraft modpacks I started in 2020. 
This repo is just meant to help me keep track of changes while developing the modpack, but as you might be able to see, I also include the releases here on Github. 
If you would like to keep up with the developmental version of the modpack, I will eventually write a script that will let you do that, but for now, follow these steps that outline the general process.

# Steps to install dev version
### Step 1:
Download the .mrpack file from the latest release. Or actually any release really since you'll be pulling from the remote repository later anyway

### Step 2:
Open the Modrinth launcher. If you don't have it installed, install it first then come back. Once it's open, simply drag the .mrpack file onto the Modrinth launcher and it should install.
I've only tested this on my Linux distro, so idk if it works on Windows or Mac, but if it doesn't, just create a new profile from the huge **[+]** button and import from the .mrpack file

### Step 3:
Once you've installed the modpack, you should be able to find the folder in which it's stored from the launcher. Open the folder then open your terminal in that folder. Most file managers should allow you to just right-click
and open in terminal, but if not, just copy the filepath and then manually navigate to it in your terminal. On Linux, it should be something as simple as `cd ~/.config/com.modrinth.theseus/profiles/CornCraftR3fabricated`

### Step 4:
Okay, this is the part that I still screw up because it involves having to merge conflicts which I'm still new to. Basically, you wanna start with the command `git init` which will create a git repository in your modpack folder.

Now, these next parts may be a bit confusing, so I suggest you at least follow a git tutorial before doing this stuff, and if you understand git better than me, then great! Otherwise, prepare to suffer.

Create a new branch with `git branch localbranch` then switch to that branch with `git checkout localbranch`.

Now, we're gonna want to be able to pull from the remote repository so that your modpack is up to date with mine, so do `git remote add origin https://github.com/LiamJTolentino/corncraft-refabricated.git` to set the remote origin.

The default branch I push to is main, so to pull from there, you're gonna wanna do `git pull origin main --rebase` to update your local branch to wherever I am with the main branch. There's likely gonna be a bunch of conflicts and stuff
so I suggest you just figure that stuff out because I'm not even completely sure what I did to get it to work on my other computer, but for now, this is the best tutorial I can give.

To update, you basically do that last command again.

---

Honestly, the better thing to do is to just install it from the [Modrinth page](https://modrinth.com/modpack/corncraft3) like normal and just wait for when I release updates.
