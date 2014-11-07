To create custom content for this mission, start by visiting https://github.com/CER10TY/GlobalCrisis to access the .Altis file, which you will need to access the mission folder.

Start off by adding your mission to ciamc\ciamc.sqf; a template case is provided below number 2. Variable execTimes is global (defined in init.sqf) and should -not- be touched, as it is vital for proper mission addition.
To add multiple missions, simply execute add-mission.sqf multiple times with different values in a single case.

Next up, navigate to missions\missionswitch.sqf and add a block of code inside the switch statement with how your mission is supposed to look. This requires some additional coding experience not covered in this tutorial,
but if you're feeling up for the task with no prior experience and need help, ask your questions here: http://forums.bistudio.com/forumdisplay.php?162-ARMA-3-MISSION-EDITING-amp-SCRIPTING
Anyhow, if you've set it up this far, the mission should show up next time you complete Athira Drone Strike and Sweep. If you want to add your mission besides Athira Drone Strike, or Sweep, use cases 1 or 2 in missionswitch.sqf.

You also need to add a case to missions\add-mission.sqf. This should be self-explanatory.

The execution order from the moment you open up the dialog is as follows:

Open dialog
ciamc.sqf kicks in, adding mission depending on execTimes variable. It displays the standard advHint and adds a display EventHandler checking for Shift + Enter.
add-mission.sqf starts, adding a listbox entry to the listbox (IDC = 1500) and deleting the previous entry (if specified). The data of the newly created entry is set for missionswitch.sqf.
When user clicks Shift + Enter, missionswitch.sqf checks the current selection and its data, then uses the corresponding case (hence add-mission data value and missionswitch case value must be the same).
User receives mission, dialog can be closed.
Repeat
