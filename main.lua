-- assign logical name to macro keyboard
lmc_device_set_name('MACROS', 'PNP0303')
lmc_print_devices()

--minimize
lmc.minimizeToTray = true
lmc_minimize()

-- define callback for whole device
lmc_set_handler('MACROS',function(button, direction)

-- NUMLOCK workaround (send another NUMLOCK to toggle back to original state)
    if (button == 144)
    then
      lmc_send_input(144, 0, 2); -- press NUMLOCK
      lmc_send_input(144, 0, 0); -- release NUMLOCK
      -- print('reversing NUMLOCK to original state');
    end

if (direction == 1 and t[button] == 0) then return end -- ignore down

    if (button == 27) -- ESC - Task Manager
    then
       lmc_spawn("cmd")
       print("Launching command line")
    end

-- F KEYS START

    if (button == 112) -- F1 - Blender
    then
        lmc_spawn("C:\\Users\\c41670\\software\\blender-2.79\\blender.exe")
        print("Opening Blender")
    end

    if (button == 113) -- F2 - Kdenlive
    then
        lmc_spawn("C:\\Users\\c41670\\Software\\kdenlive-18.12.0\\bin\\kdenlive.exe")
        print("Opening Kdenlive")
    end

    if (button == 114) -- F3 - GIMP
    then
        lmc_spawn("C:\\Users\\c41670\\Software\\GIMP-2.10.2\\App\\gimp\\bin\\gimp-2.10.exe")
        print("Opening GIMP")
    end

    if (button == 115) -- F4 - VS Code
    then
       lmc_spawn("C:\\Program Files\\Microsoft VS Code\\Code.exe")
       print("Opening VSCode")
    end

    if (button == 116) -- F5 - Inventor
    then
        lmc_spawn("C:\\Program Files\\Autodesk\\Inventor 2016\\Bin\\Inventor.exe")
        print("Opening Inventor")
    end

    if (button == 117) -- F6 - Autodesk Suite
    then
        lmc_spawn("C:\\Program Files\\Autodesk\\Product Design Suite 2016\\Bin\\ProductDesignSuite.exe")
        print("Opening Autodesk Suite")
    end

    if (button == 118) -- F7 - Cyclone
    then
        lmc_spawn("C:\\Program Files\\Leica Geosystems\\Cyclone\\Cyclone.exe")
        print("Opening Cyclone")
    end

    if (button == 119) -- F8 - Solid Edge
    then
        lmc_spawn("C:\\Program Files\\Solid Edge ST6\\Program\\Edge.exe")
        print("Opening Solid Edge")
    end

    if (button == 120) -- F9 - Work In Progress
    then
        lmc_spawn("explorer", "%userprofile%\\Documents\\02 - WORK IN PROGRESS")
        print("Opening Work In Progress")
    end

    if (button == 121) -- F10 - E Drive
    then
        lmc_spawn("explorer", "E:\\")
        print("Opening E Drive")
    end

    if (button == 122) -- F11 - T Drive
    then
        lmc_spawn("explorer", "T:\\")
        print("Opening T Drive")
    end

    if (button == 123) -- F12 - Home Directory
    then
        lmc_spawn("explorer", "%userprofile%")
        print("Opening Home Directory")
    end

-- F KEYS END

    if (button == 8) -- VMware
    then
       lmc_spawn("C:\\Program Files (x86)\\VMware\\VMware Workstation\\vmware.exe")
       print("Launching VMWare")
    end

    if (button == 105 or button == 33) -- H:\
    then
       lmc_spawn("explorer", "H:\\")
       print("Opening H Drive")
    end

    if (button == 104 or button == 38) -- C:\
    then
       lmc_spawn("explorer", "C:\\")
       print("Opening C Drive")
    end

    if (button == 103 or button == 36) -- Home
    then
       lmc_spawn("explorer", "C:\\Users\\Mcharlsto")
       print("Opening Home Folder")
    end

    if (button == 37 or button == 100) -- PyCharm
    then
       lmc_spawn("C:\\Program Files\\JetBrains\\PyCharm Community Edition 2018.3\\bin\\pycharm64.exe")
       print("Opening PyCharm")
    end

     if (button == 110 or button == 46) -- Outlook
    then
       lmc_spawn("C:\\Program Files (x86)\\Microsoft Office\\root\\Office16\\OUTLOOK.EXE")
       print("Opening Outlook")
    end

     if (button == 111) -- Authy
    then
       lmc_spawn("C:\\Users\\Mcharlsto\\AppData\\Local\\authy-electron\\Authy Desktop.exe")
       print("Opening Authy")
    end

     if (button == 144) -- CMD
    then
       lmc_spawn("cmd")
       print("Opening Command Prompt")
    end

     if (button == 99 or button == 34) -- Putty
    then
       lmc_spawn("C:\\Program Files\\PuTTY\\putty.exe")
       print("Opening Putty")
    end

     if (button == 106) -- LastPass
    then
       lmc_spawn("C:\\Program Files (x86)\\LastPass\\LastPass Pocket.exe")
       print("Opening LastPass")
    end

    if (button == 102 or button == 39) -- CAD
    then
       lmc_spawn("explorer", "C:\\Users\\Mcharlsto\\Desktop\\CAD")
       print("Opening CAD Folder")
    end

-- NUMPAD START

    if (button == 109) -- Num_Minus - Task Manager
    then
       lmc_spawn("taskmgr")
       print("Launching task manager")
    end

-- NUMPAD END

 print('Key Pressed: ' .. button)
end)
