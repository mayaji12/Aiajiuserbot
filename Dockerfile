FROM python:3.10

COPY . .

COPY installer.sh .

RUN bash installer.sh

# changing workdir
WORKDIR "/root/Key-Userbot"

# start the bot.
CMD ["bash", "start"]
