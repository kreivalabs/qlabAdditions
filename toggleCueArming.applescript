-- @file: toggleCueArming.applescript
-- @author: Brendan Hogan
-- @version: 1.0.0
-- @update: 2018-07-06

-- Version history

-- ver. 1.0.0
-- 2018-07-06
-- initial build

-- set on a hotkey trigger to cycle between armed/not armed of selected cue(s)


tell application id "com.figure53.qlab.4"
tell front workspace
	set selectedCues to (selected as list)
	if (count selectedCues) is 0 then -- If no cues are selected arm/disarm the current cue list
		set armed of current cue list to not armed of current cue list
	else
		repeat with eachCue in reverse of selectedCues -- Reversed so as to do a Group Cue's children before it
			set armed of eachCue to not armed of eachCue
		end repeat
	end if
end tell
end tell