# tazcron

*tazcron* is a simple Shell script that loads the first page of the german newspaper [*Die Tageszeitung* aka. *taz*](http://www.taz.de/) as PDF from their website and send it to you by E-Mail. When you set it up as a cronjob, you'll receive the first page of the *taz* every morning in your E-Mail inbox.

## Setup

1. Place the `tazcron.sh` in `~/bin` or any other binary directory owned by you.
2. Setup the E-Mail receiver and sender in the `tazcron.sh`.
3. Create an text file with the E-Mail body, something simple like: "This is the taz from today:" and safe it as `~/.tazcron.txt`.
4. Setup the cronjob: Run `crontab -e` and insert: `00 07 * * 1-6 ~/bin/tazcron.sh` (This cronjob runs every day, except Sundays, at 7 o'clock in the morning.)

**Note:** *tazcron* was created for an Linux environment and uses `wget` for downloading the PDF and `mutt` for sending the E-Mail. Ensure that `wget` and `mutt` are installed on your Linux machine, otherwise the script won't run.

## Important note

This script only works because the *taz* publishs their first page every day for free. If you use this script on a daily basis with a cronjob (as intended) please support the *taz* with [taz.zahl ich](https://www.taz.de/!115932/) and/or a [taz.abo](https://www.taz.de/Abo/!p4209/).
