-- @file: toggleShowMode.applescript
-- @author: Brendan Hogan
-- @version: 1.0.0
-- @update: 2018-07-06

-- Version history

-- ver. 1.0.0
-- 2018-07-06
-- initial build

-- set on a hotkey trigger to cycle between EDIT and SHOW workspace modes
-- largely depricated in QLab 4 by OSC hooks...

-- Copyright (c) 2014 Brendan Patrick Hogan
-- This software is provided "as is" and may be freely modified and distributed.
-- User assumes all risk.

tell application id "com.figure53.qlab.3" to tell front workspace
	if edit mode is true then
		set show mode to true
	else
		if show mode is true then
			set edit mode to true
		end if
	end if
end tell