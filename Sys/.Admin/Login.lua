os.pullEvent = os.pullEventRaw


-- Start of Variables
local UserInput = ""
local PassInput = ""

local User = "Admin"
local Pass = "Robco"
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

function Login()
	Title()
	print("Username:")
	UserInput = read()
	Title()
	print("Password:")
	PassInput = read("*")
end
-- End of Functions


-- Start of Program
Login()

if (UserInput == User) and (PassInput == Pass) then
	Title()
	print("ACCESS GRANTED")
	sleep(1)
	shell.run("/Sys/.Admin/Main.lua")
else
	Title()
	print("ACCESS DENIED")
	sleep(2)
	shell.run("/Sys/OS.lua")
end
-- End of Program
