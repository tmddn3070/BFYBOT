FROM python:3.8.5


ENV BOT_TOKEN=DISCORD_TOKEN
ENV INVLINK=INVLINK
ENV prefix=prefix
ENV RBOT_NAME=BOT_NAME

WORKDIR /BFYBOT

COPY . .
RUN python3 -m pip install -U pip && python3 -m pip install -r requirements.txt
ENTRYPOINT ["python3", "bot/bot.py"]

