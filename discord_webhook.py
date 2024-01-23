import sys
import requests

def send_to_discord(message):
    webhook_url = "YOUR_DISCORD_WEBHOOK_LINK"
    data = {"content": message}
    response = requests.post(webhook_url, json=data)
    print(response.text)

if __name__ == "__main__":
    send_to_discord(sys.argv[1])
