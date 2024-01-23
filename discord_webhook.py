import sys
import requests

def send_to_discord(message):
    webhook_url = "https://discord.com/api/webhooks/1199391173102542888/DrAYxf1gq7DGj87vU6mtc50SEcAPzPCL3QXB1U85enIqQdiDKYTgRd8nUwV66pg1UDnR"
    data = {"content": message}
    response = requests.post(webhook_url, json=data)
    print(response.text)

if __name__ == "__main__":
    send_to_discord(sys.argv[1])
