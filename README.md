**USE AT YOUR OWN RISK**
_May impact permformance on server_


BeamMP Chat Logger with Discord Webhook Integration
Overview
This tool provides a chat logging solution for BeamMP servers and integrates with Discord via a webhook. It captures in-game chat messages, logs them to a file, and optionally sends them to a specified Discord channel.

Features
Chat Logging: Records all chat messages on the BeamMP server to a text file with timestamps.
Discord Integration: Sends chat messages to a Discord channel using a webhook.
Configurable: Easily toggle the Discord webhook feature on or off using a configuration file.
Requirements
BeamMP Server
Python installed on the server
Python requests module
Files
chat_logger_with_webhook.lua: Lua script for BeamMP server.
discord_webhook.py: Python script for handling Discord webhook.
webhook_config.txt: Configuration file to enable/disable Discord webhook.
Setup Instructions
1. Setting Up the Lua Script
Place chat_logger_with_webhook.lua in your BeamMP server's script directory.
Modify the webhookScriptPath variable in the Lua script to the path of discord_webhook.py.
2. Setting Up the Python Script
Save discord_webhook.py in the specified location on your server.
Replace YOUR_DISCORD_WEBHOOK_URL in the Python script with your actual Discord webhook URL.
Ensure Python is installed and the requests module is available.
3. Configuration File
Create webhook_config.txt in the same directory as your Lua script.
Add webhook_enabled=true to enable Discord integration or webhook_enabled=false to disable it.
Usage
Start your BeamMP server. The script will automatically log chat messages.
Edit webhook_config.txt to toggle Discord webhook integration without needing to restart the server.
Notes
The Lua script checks webhook_config.txt every 60 seconds for updates.
Ensure the server has appropriate permissions to execute scripts and write to files.
