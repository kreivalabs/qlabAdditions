-- @file: toggleMSC.applescript
-- @author: Brendan Hogan
-- @version: 1.0.0
-- @update: 2018-07-06

-- Version history

-- ver. 1.0.0
-- 2018-07-06
-- initial build

-- set on a hotkey trigger to globally arm or disarm all MIDI Show Control
-- cues in a workspace. 

tell application id "com.figure53.qlab.4"
	tell front workspace
		set foundCues to every cue whose message type is msc
		set foundCuesRef to a reference to foundCues
		repeat with eachCue in foundCuesRef
			if armed of eachCue is true then
				set armed of eachCue to false
			else
				if armed of eachCue is false then
					set armed of eachCue to true
				end if
			end if
		end repeat
	end tell
end tell