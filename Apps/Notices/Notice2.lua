os.pullEvent = os.pullEventRaw


-- Start of Variables
	-- Choice
	local ReturnChoice = "1"
	-- Input
	local input = ""
	-- Notice Info
	local NoticeTitle = "Life Underground"
	local NoticeDate = "11/1/2750"
	local NoticeAuthor = "V01d"
	-- Other
	local Return = "/Apps/Notices.lua"
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

function Header()
	Title()
	print("Title: " .. NoticeTitle)
	print("Date: " .. NoticeDate)
	print("Author: " .. NoticeAuthor)
	print()
end

function Input()
	print()
	print("To return, press ENTER")
	input = read()
end
-- End of Functions


-- Start of Program
Header()
print("I hope as everyone has unpacked and got settled in that you will like your new home, RiverWall")
Input()

if input == RetunChoice then
	shell.run(Return)
else
	shell.run(Return)
end
-- End of Program