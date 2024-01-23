-- Chat Logger and Discord Webhook with Toggle Feature for BeamMP
local logFilePath = "BeamMP-ChatLogs.txt"
local configFilePath = "webhook_config.txt"
local webhookScriptPath = "path/to/discord_webhook.py" -- Adjust the path

local isWebhookEnabled = true

-- Function to read configuration file
local function readConfig()
    local file = io.open(configFilePath, "r")
    if file then
        local config = file:read("*a")
        isWebhookEnabled = config:find("webhook_enabled=true") ~= nil
        file:close()
    else
        print("Warning: Configuration file not found.")
    end
end

-- Function to log and send chat messages
local function logAndSendChatMessage(playerId, message)
    local timestamp = os.date("%Y-%m-%d %H:%M:%S")
    local formattedMessage = string.format("[%s] Player %d: %s", timestamp, playerId, message)

    -- Log to File
    local file = io.open(logFilePath, "a")
    if file then
        file:write(formattedMessage .. "\n")
        file:close()
    else
        print("Error: Unable to open log file.")
    end

    -- Send to Discord if enabled
    if isWebhookEnabled then
        os.execute("python " .. webhookScriptPath .. " \"" .. formattedMessage .. "\"")
    end
end

-- Register the event
RegisterEvent("onPlayerChat", logAndSendChatMessage)

-- Periodically read configuration
SetInterval(readConfig, 60000) -- Check every 60 seconds

-- Initial configuration read
readConfig()
