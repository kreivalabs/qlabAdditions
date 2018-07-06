-- @file: makeAdHocNetwork.applescript
-- @author: Brendan Hogan
-- @version: 1.0.0
-- @update: 2018-07-06

-- Version history:

-- ver. 1.0.0
-- 2018-07-06
-- initial build

-- create an ad hoc wireless network for secure show control


-- Properties

property CreateMenuName : "Create Network…"
property NetworkName : "Net" -- change name as necessary


-- Main script

tell application "System Events"
	tell process "SystemUIServer"
		tell menu bar 1
			set menu_extras to value of attribute "AXDescription" of menu bar items
			repeat with the_menu from 1 to the count of menu_extras
				if item the_menu of menu_extras contains "Wi-Fi" then exit repeat
			end repeat
			tell menu bar item the_menu
				perform action "AXPress"
				delay 0.2
				perform action "AXPress" of menu item CreateMenuName of menu 1
			end tell
		end tell
		repeat until exists window 1
			delay 0.5
		end repeat
		tell window 1
			keystroke NetworkName
			click button 1
		end tell
	end tell
end tell