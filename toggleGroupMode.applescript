-- @file: toggleGroupMode.applescript
-- @author: Brendan Hogan
-- @version: 1.0.0
-- @update: 2018-07-06

-- Version history

-- ver. 1.0.0
-- 2018-07-06
-- initial build

-- set on a hotkey trigger to cycle through the four modes of a group cue


tell application id "com.figure53.qlab.4" to tell front workspace
	set selectedCue to last item of (selected as list)
	if mode of selectedCue is fire_first_enter_group then
		set mode of selectedCue to fire_first_go_to_next_cue
	else
		if mode of selectedCue is fire_first_go_to_next_cue then
			set mode of selectedCue to fire_all
		else
			if mode of selectedCue is fire_all then
				set mode of selectedCue to fire_random
			else
				if mode of selectedCue is fire_random then
					set mode of selectedCue to fire_first_enter_group
				end if
			end if
		end if
	end if
end tell