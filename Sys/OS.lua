os.pullEvent = os.pullEventRaw


-- Start of Variables
local Option1 = "Notice Board"
local Option2 = "System Info"
local Option3 = "Reboot"
local Option4 = "Update"
local Option5 = "Admin Login"

local Notices = "1"
local Info = "2"
local Reboot = "3"
local Update = "4"
local Admin = "5"

local Action1 = "/Apps/Notices.lua"
local Action2 = "/Apps/Info.lua"
local Action3 = "reboot"
local Action4 = "/Sys/Update.lua"
local Action5 = "/Sys/.Admin/Login.lua"
local InvalidInput = "/Sys/Errors/OSError.lua"
-- End of Variables


-- Start of Functions
function Cursor1()
    term.setCursorPos(1,3)
end

function Title()
	term.clear()
    term.setCursorPos(1,1)
	print("Welcome to StarOS (TM)")
	Cursor1()
end

function Options()
	print("1) " .. Option1)
	print("2) " .. Option2)
	print("3) " .. Option3)
	print("4) " .. Option4)
	print("5) " .. Option5)
	print()
end
-- End of Functions


-- Start of Program
Title()
Options()

local input = read()

if input == Notices then
	shell.run(Action1)
elseif input == Info then
	shell.run(Action2)
elseif input == Reboot then
	shell.run(Action3)
elseif input == Update then
	shell.run(Action4)
elseif input == Admin then
	shell.run(Action5)
else
	shell.run(InvalidInput)
end
-- End of Program
