#Requires AutoHotkey v2.0

; AutoHotkey v2

devices := [
    { Name: "AA:BB:CC:DD:EE", IPv4: "192.168.1.100", IPv6: "fe80::1", Link: "https://win"},
    { Name: "AA:BB:CC:DD:EF", IPv4: "192.168.1.101", IPv6: "fe80::2", Link: "https://Plume" },
    { Name: "AA:BB:CC:DD:AA", IPv4: "192.168.1.102", IPv6: "fe80::3", Link: "https://test"}
]

; Function to show a simple GUI with the value
ShowTextMenu(value) {
    MyGui := Gui("+AlwaysOnTop")
    MyGui.Add("Edit", "w300 r1 ReadOnly", value)
    
    ; Use lambda to close GUI
    MyGui.OnEvent("Close", (g) => g.Destroy())
    
    MyGui.Show()
}



GuiClose(gui) {
    gui.Destroy()
}

; Build the menu
mainMenu := Menu()
mainMenu.Title := "Devices"

for index, device in devices {
    localDevice := device

    deviceMenu := Menu()
    deviceMenu.Title := localDevice.Name
    deviceMenu.Add("IPv4", (*) => ShowTextMenu(localDevice.IPv4))
    deviceMenu.Add("IPv6", (*) => ShowTextMenu(localDevice.IPv6))
    deviceMenu.Add("Link", (*) => ShowTextMenu(localDevice.Link))


    mainMenu.Add(localDevice.Name, deviceMenu)
}

; Hotkey to show the menu
^!m::mainMenu.Show()

; Exit app with Esc
^Esc::ExitApp

