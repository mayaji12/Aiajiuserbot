# Ayra - UserBot
# Copyright (C) 2021-2022 senpai80
#
# This file is a part of < https://github.com/senpai80/Ayra/ >
# PLease read the GNU Affero General Public License in
# <https://www.github.com/senpai80/Ayra/blob/main/LICENSE/>.


from . import LOG_CHANNEL, Button, asst, ayra_cmd, eor, get_string

REPOMSG = """
K E P O
"""

RP_BUTTONS = [
    [
        Button.url(
            get_string("bot_3"), "https://github.com/KojiraReyyAnata/Key-Userbot"
        ),
    ],
    [Button.url("Support Group", "t.me/Revansupport")],
]

AYSTRING = """🎇 **Thanks for Deploying Revanss-Userbot**

• Here, are the Some Basic stuff from, where you can Know, about its Usage."""


@ayra_cmd(pattern="repo")
async def useAyra(rs):
    button = Button.inline("Start >>", "initft_2")
    msg = await asst.send_message(
        rs.chat_id,
        AYSTRING,
        file="https://telegra.ph//file/643d8d49eec914aea0701.jpg",
        buttons=button,
    )
    if not (rs.chat_id == LOG_CHANNEL and rs.client._bot):
        await eor(rs, f"**[Click Here]({msg.message_link})**")
