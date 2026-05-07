# iMessage Sticker Grabber

A shell script that lets you collect all of the recently used stickers from iMessage on your Mac! It is super useful to retrieve [Genmoji](https://support.apple.com/en-my/guide/mac-help/dev73add4d3e/mac), or [Memoji](https://support.apple.com/en-us/111115) with a **transparent** background!

This script requires [Full Disk Access](https://support.apple.com/guide/security/controlling-app-access-to-files-secddd1d86a6/web). This must be granted to the terminal you are executing the shell script within. You **should** revoke this access after running the script. 

## How to use
### Enable Full Disk Access for your Terminal
This script accesses `~/Library/Messages` to copy all of the recently cached stickers. The Messages folder is protected under "Full Disk Access" (a macOS feature to prevent dangerous reads from apps). This access will need to be given to your terminal application. You can do this by going to [System Settings -> Privacy -> Full Disk Access](x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles). 

> It is **highly** recommend that you remove your terminals Full Disk Access after running this script.

### Clone the repository

```
git clone https://github.com/ActuallyTaylor/iMessage-Sticker-Grabber
cd iMessage-Sticker-Grabber
```

## Running the script
Run the following command in the terminal that you gave full disk access to. It will find all of the iMessage Stickers and move them into an `output` folder within the root `iMessage-Sticker-Grabber` folder.

```bash
./collect-imessage-stickers.sh
```
