#!/bin/bash

# tazcron 0.1.1
#
# Download the first page of the taz newspaper and send it by E-Mail.
#
# @uses wget
# @uses mutt
#
# @author Arne Kamola <arne@kamola.de>
# @date 2012-12-03
# @edit 2018-01-16 Arne Kamola <arne@kamola.de>

# Setup

EMAIL_RECIEVER="john.doe@example.com" # Reciever
EMAIL_SENDER="tazcron <tazcron@example.com>" # Sender

# DO NOT EDIT BELOW!

TAZ_PDF="taz_"`date +"%Y%m%d"`"_s1.pdf" # PDF filename

# Download the current first page of the taz newspaper

wget -q -O /tmp/$TAZ_PDF "http://dl.taz.de/taz/shop/download_action.php?model=20100&typ=seite1"

# Send it by mail

export EMAIL=$EMAIL_SENDER

mutt -s "taz vom "`date +"%d.%m.%Y"` -a /tmp/$TAZ_PDF -- $EMAIL_RECIEVER < ~/.tazcron.txt

# Clean up

rm /tmp/$TAZ_PDF
