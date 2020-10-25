os.pullEvent = os.pullEventRaw


-- Start of Variables
local Return = "/Apps/Info.lua"
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
-- End of Functions

-- Start of Program
Title()
print("Invalid Input")
sleep(2)
shell.run(Return)
-- End of Program