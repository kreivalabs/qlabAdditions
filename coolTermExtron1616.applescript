-- @file: coolTermExtron1616.applescript
-- @author: Brendan Hogan
-- @version: 1.0.0
-- @update: 2018-07-06

-- Version history:

-- ver. 1.0.0
-- 2018-07-06
-- initial build

-- CoolTermMac control script for the Extron 1616 AV composite matrix switcher.
-- Define the routing preset in line 25.

-- Created for "Frost/Nixon" at Strawberry Theatre Workshop. Seattle, WA. 2018.


tell application "CoolTerm"
	
	set w to WindowID (0)
	if w < 0 then
		display alert "No open windows"
		return
	end if
	
	if Connect w then
		Write {w, "4."} -- replace the string in quotes with the preset number to be recalled. Include period.
	else
		display alert ("Not connected")
	end if
end tell