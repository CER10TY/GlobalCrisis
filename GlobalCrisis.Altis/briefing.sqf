// Briefing for mission.

player createDiaryRecord ["Diary",["Situation",
"Iran's Revolutionary Guard has settled down on Altis, effectively disrupting official military operations on the island and seizing control. 
Global Relations have shifted, and as such no military operation has officially launched yet. The CIA and a Pakistani ISI Representative have settled down on the islands southern part, in the hopes of wrestling influence
back towards the AAF. A local Resistance movement is also present on the island, entering the occasional fight with the much-better equipped Revolutionary Guard."]];

player createDiaryRecord ["Diary",["Initial Deployment",
"Your initial deployment will be via a parachute drop into the wide open sea. Detection risk has to be kept at minimum, and as such we have scheduled a helicopter pickup once you touch down on water.
The helicopter will be sufficiently marked and have visual aids to help you prepare for landing. When you have arrived at the base, equip yourself and then head over to Mission Control.
It is recommended that you find the various pieces of Intel spread out around the island, to make yourself more familiar with the situation at hand."]];

player createDiaryRecord ["Diary",["Custom Content",
"To create custom content for this mission, start by visiting https://github.com/CER10TY/GlobalCrisis to download the zip file, which you will need to access the mission folder.<br />
<br />
Start off by adding your mission to ciamc\ciamc.sqf; a template case is provided below number 2. Variable execTimes is global (defined in init.sqf) and should -not- be touched, as it is vital for proper mission addition.
To add multiple missions, simply execute add-mission.sqf multiple times with different values in a single case.<br />
<br />
Next up, navigate to missions\missionswitch.sqf and add a block of code inside the switch statement with how your mission is supposed to look. This requires some additional coding experience not covered in this tutorial,
but if you're feeling up for the task with no prior experience and need help, ask your questions here: http://forums.bistudio.com/forumdisplay.php?162-ARMA-3-MISSION-EDITING-amp-SCRIPTING <br>
Anyhow, if you've set it up this far, the mission should show up next time you complete Athira Drone Strike and Sweep. If you want to add your mission besides Athira Drone Strike, or Sweep, use cases 1 or 2 in missionswitch.sqf.<br />
<br />
Full documentation viewable in the missions folder's readme.txt"]];

player createDiaryRecord ["Diary",["Credits",
"Mission created by tryteyker with the help of the general editing community over at <br />
http://www.forums.bistudio.com/forumdisplay.php?162-ARMA-3-MISSION-EDITING-amp-SCRIPTING
<br/>
<br />
Github: https://www.github.com/CER10TY <br />
<br/>
About the author: http://www.about.me/soren_johansson <br />
<br/>
Bohemia Profile: http://www.forums.bistudio.com/member.php?73020-tryteyker <br />
<br/>
Contribute to this mission: https://www.github.com/CER10TY/GlobalCrisis"]];