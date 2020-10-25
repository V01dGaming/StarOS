os.pullEvent = os.pullEventRaw


-- Start of Variables
	-- Software Info
	local OS = "StarOS"
	local Version = "3.0"
	local SignalType = "Termlink"
	-- Hardware Info
	local RAM = "2 Gb"
	local CPU = "CosmicDrive v4"
	local GPU = "N/A"
	local Man = "V01d Industries (TM)"
	-- Other
	local InfoType = ""
	
	local ChoiceSoftware = "1"
	local ChoiceHardware = "2"
	local ChoiceBack = "3"
	
	local Option1 = "Software"
	local Option2 = "Hardware"
	local Option3 = "Back"
	
	local Restart = "/Apps/Info.lua"
	local Back = "/Sys/OS.lua"
	local InvalidInput = "/Sys/Errors/InfoError.lua"
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

function SoftwareInfo()

end

function ListSoftwareInfo()
	print("OS: " .. OS)
	print()
	print("Version: " .. Version)
	print()
	print("Signal Type: " .. SignalType)
end

function ListHardwareInfo()
	print("RAM: " .. RAM)
	print("CPU: " .. CPU)
	print("GPU: " .. GPU)
	print("Manufacturer: " .. Man)
end

function ListOptions()
	Title()
	print("1) " .. Option1)
	print("2) " .. Option2)
	print("3) " .. Option3)
	print()
end

function Selection()
	Title()
	ListOptions()
	print("Option:")
	InfoType = read()
end
-- End of Functions


-- Start of Program
Selection()

if InfoType == ChoiceSoftware then
	Title()
	ListSoftwareInfo()
	sleep(5)
	shell.run(Restart)
elseif InfoType == ChoiceHardware	then
	Title()
	ListHardwareInfo()
	sleep(5)
	shell.run(Restart)
elseif InfoType == ChoiceBack then
	shell.run(Back)
else
	shell.run(InvalidInput)
end
-- End of Program