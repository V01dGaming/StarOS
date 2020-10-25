os.pullEvent = os.pullEventRaw


-- Start of Functions
function Cursor1()
    term.setCursorPos(1,3)
end

function Title()
	term.clear()
	term.setCursorPos(1,1)
	print("Welcome to StarOS (TM)")
end

function BootP1()
	Title()
	Cursor1()
	print("Booting")
	textutils.slowPrint("#######################")
end

function BootP2()
	Cursor1()
	print("Boot Sequence Complete!")
end

function BootFull()
	BootP1()
	sleep(1)
	BootP2()
	sleep(1)
	term.clear()
end
-- End of Functions


-- Start of Program
BootFull()
shell.run("Sys/OS.lua")
-- End of Program
