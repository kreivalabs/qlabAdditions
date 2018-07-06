-- @file: channelCheckVoice.applescript
-- @author: Brendan Hogan
-- @version: 1.0.0
-- @update: 2018-07-06

-- Version history:

-- ver. 1.0.0
-- 2018-07-06
-- initial build

-- Create audio files for QLab output tests.
-- Files will verbally announce the output path (e.g. "Channel One")


-- Variables. Update values as necessary.

set theWord to "Channel" -- or "output", or "speaker", etc.
set saveLocation to "/Users/brendanhogan/Desktop/Checks/" & theWord -- update save path as necessary. The file name will match the value entered for theWord. For example, "Channel7.aiff"
set fileType to ".aiff" -- this could also be ".wav"
set outputNumber to "16" -- change this value to match the number of output destinations used in your workspace

-- Main script. Do not change.

repeat with theIncrementValue from 1 to outputNumber
	
	say theWord & theIncrementValue saving to (POSIX file saveLocation & theIncrementValue as string) & fileType
end repeat