#!/usr/bin/env bash
# Ayra - UserBot
# Copyright (C) 2021-2022 Key
#
# This file is a part of < https://github.com/naya1503/Ayra/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.
git pull
echo "
            █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
            █░░╦─╦╔╗╦─╔╗╔╗╔╦╗╔╗░░█
            █░░║║║╠─║─║─║║║║║╠─░░█
            █░░╚╩╝╚╝╚╝╚╝╚╝╩─╩╚╝░░█
            █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

      

"
if [ -f .env ] ; then  set -o allexport; source .env; set +o allexport ; fi

if [ $SESSION1 ] ; then
  wget https://gist.githubusercontent.com/naya1503/8757ecdfdccd3cffaa2827be3824c078/raw/a51d6d06b85e7fcef1c5414bfa42101d10f5fccb/main.py && \
  python3 app.py && \
  python3 main.py
else
  python3 app.py && \
  python3 -m Ayra
fi