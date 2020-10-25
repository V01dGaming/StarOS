os.pullEvent = os.pullEventRaw


-- Start of Variables
	-- Choices
	local Notice1 = "1"
	local Notice2 = "2"
	local ReturnChoice = "3"
	-- Choice Titles
	local Option1 = "Welcome Home"
	local Option2 = "Life Underground"
	local Option3 = "Back"
	-- Notice Dates
	local Date1 = "10/30/2750"
	local Date2 = "11/1/2750"
	-- Choice Actions
	local Action1 = "/Apps/Notices/Notice1.lua"
	local Action2 = "/Apps/Notices/Notice2.lua"
	local Return = "/Sys/OS.lua"
	local InvalidInput = "/Sys/Errors/NoticeError.lua"
	-- Other
	local NoticeAmt = "2"
	
	local input = ""
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

function ListNotices()
	print("Notice Board |  " .. NoticeAmt .. " Notices Avaliable")
	print()
	print("1) " .. Option1 .. "| Date: " .. Date1)
	print("2) " .. Option2 .. "| Date: " .. Date2)
	print("3) " .. Option3)
	print()
end

function Choose()
	print("Choice:")
	input = read()
end

function Program()
	Title()
	ListNotices()
	Choose()
end
-- End of Functions


-- Start of Program
Program()

if input == Notice1 then
	shell.run(Action1)
elseif input == Notice2 then
	shell.run(Action2)
elseif input == ReturnChoice then
	shell.run(Return)
else
	shell.run(InvalidInput)
end
-- End of Program