_G.stream_mode = _G.stream_mode or false -- Hide Notifications?
_G.forceallowlagswitch = true -- In case you crash a lot and don't care for your PC's well being.
_G.delete_script = false -- If you need to remove the script for any reason.
_G.ffao = _G.ffao or false -- Free For All Override

-- Script
_G.load_time = tick()
wait()

local a = "5.5"
local b = "f"
local c = 0.001
local d = "e"
local e = 0.01
local f = "FakeHead"
local g = CFrame.new(0, 0, 0).Position
local h = true
local i = 0.08
local j = false
local k = false
local l = "j"
local m = 4
local n = Color3.new(0, 255, 255)
local o = true
local p = true
local q = "v"
local r = 1 / 2
local s = 8
local t = 127
local u = 29
local v = "c"
local w = "5"
local x = "o"
local y = 0.3
local z = "6"
local A = "!"
local B = "9"
local C = 23
local D = 96
local E = "x"
local F = 0.735
local G = "z"
local H = "h"
local I = "="
local J = "-"
local K = "["
local L = "]"
local M = "t"
local N = "CT"
local O = "k"
local P = "l"
local Q = "p"
local R = "\\"
local S = "i"
local T = 75
local U = 27
local V = "7"
local W = "8"
local X = true
local Y = {
    ["StarryGazor"] = true,
    ["nerf_bos"] = true,
    ["LucarioZombie"] = true,
    ["blueblastors"] = true,
    ["Guest 7042"] = true,
    ["Guest 3871"] = true
}
local Z = {}
local _ = {
    ["confirm_reset"] = false,
    ["overwrite"] = false,
    ["createpart"] = false,
    ["auto_fix"] = false,
    ["justteleported"] = false,
    ["panic"] = false,
    ["allow_assist"] = true,
    ["auto_defuse"] = false,
    ["spining"] = false,
    ["auto_play"] = false,
    ["derp"] = false,
    ["god"] = false,
    ["page"] = 0,
    ["auto_shoot"] = false,
    ["bring_list"] = "All",
    ["aimbot_on"] = false,
    ["value_num"] = 1,
    ["skin_num"] = 1,
    ["plr_num"] = 1,
    ["gun_num"] = 1,
    ["esp_on"] = false,
    ["hover_on"] = false,
    ["speed2_on"] = false,
    ["speed1_on"] = false,
    ["bhop_on"] = false,
    ["cash_on"] = false,
    ["auto_join"] = false,
    ["bring_on"] = false,
    ["psshootdelay"] = 0,
    ["speed1"] = 23,
    ["speed2"] = 192,
    ["fire"] = false,
    ["shots"] = 0,
    ["path_on"] = false,
    ["auto_walk"] = false,
    ["in_loop"] = false
}
local a0 =
    PROTOSMAHSER_LOADED or elysianexecute or Synapse or keypress or mouse1press or printconsole or decompile or
    mousemoverel
local a1 = keypress
local a2 = keyrelease
local a3 = keypress
local a4 = mouse1press or mouse1click
local a5 = mousemoverel
if PROTOSMASHER_LOADED then
    warn("Using protosmasher functions")
    a5 = Input.MoveMouse
    a1 = Input.KeyDown
    a2 = Input.KeyUp
    a3 = Input.KeyPress
    a4 = Input.LeftClick
end
local a6 = 90
local a7 = 0
local a8 = 0
local a9 = nil
local aa = nil
local ab = nil
local ac = nil
local ad = false
local ae = nil
local af = false
local ag = nil
local ah = nil
local ai = nil
local aj = nil
local ak = game.Players.LocalPlayer:GetMouse()
_G.delete_script = _G.delete_script or false
if _G.cpepsi_script == nil then
    _G.cpepsi_script = true
    ak.KeyDown:Connect(
        function(al)
            local am = al:lower()
            if _G.delete_script then
                script:Destroy()
                return nil
            end
            if am == b:lower() then
                if _["aimbot_on"] == true then
                    a7 = 0
                    _["aimbot_on"] = false
                    if X then
                        print("Aimbot off")
                    end
                    print("Aimbot off")
                else
                    a7 = 0
                    _["aimbot_on"] = true
                    if X then
                        print("Aimbot on")
                    end
                    print("Aimbot on")
                    repeat
                        if _["aimbot_on"] then
                            Aimbot()
                            a8 = 1 + a8
                            if a8 == 1000 then
                                Notify("Aimbot is still On")
                                a8 = 0
                            end
                            a7 = 1 + a7
                        end
                        wait(c)
                    until not _["aimbot_on"]
                end
            elseif al:byte() == s then
                if _["god"] then
                    _["god"] = false
                    local an = GetHuman()
                    if an then
                        local ab = FindPart(game.Players.LocalPlayer)
                        if ab then
                            ai = ab.CFrame
                        end
                    end
                    local ao = game.ReplicatedStorage.Events:FindFirstChild("Spawnme")
                    if ao then
                        ao:FireServer()
                        wait(0.5)
                        if ai then
                            local ap = GetHuman()
                            if ap then
                                local ab = FindPart(game.Players.LocalPlayer)
                                if ab then
                                    ab.CFrame = ai
                                end
                            end
                        end
                        ai = nil
                        Notify("Reverted")
                    end
                else
                    _["god"] = true
                    repeat
                        wait(0.1)
                        a7 = 1 + a7
                    until a7 >= 10 or not _["god"] or not _["in_loop"]
                    wait(0.1)
                    repeat
                        if _["god"] then
                            local aq = GetHuman()
                            if aq and _["god"] then
                                if aq.Name == "Humanoid" then
                                    local ar = aq:Clone()
                                    if aq.Parent and _["god"] then
                                        local as = aq.Parent
                                        ar.Name = tostring(tonumber(tostring(math.random()):reverse()))
                                        aq:Destroy()
                                        wait(1 / 5)
                                        if as and _["god"] then
                                            ar.Parent = as
                                            Notify("Press  " .. I .. "  to revert")
                                        end
                                    end
                                end
                            end
                            wait(6)
                        end
                    until not _["god"]
                end
            elseif al:byte() == t then
                if a0 then
                    Notify("Auto Playing - Panicking")
                    a3(0x77)
                    wait(3)
                    a1(0x35)
                    wait(1.5)
                    a2(0x35)
                    wait(0.1)
                    a1(0x73)
                    wait(1.5)
                    a2(0x73)
                    wait(0.1)
                    a3(0x45)
                    wait(0.1)
                    a3(0x46)
                    wait(0.1)
                    a3(0x54)
                else
                    Notify("Level 7 Exploits Required")
                end
            elseif al:byte() == C then
                if _["auto_defuse"] then
                    _["auto_defuse"] = false
                    Notify("Auto Defuse Off")
                else
                    _["auto_defuse"] = true
                    a7 = 0
                    _["in_loop"] = true
                    repeat
                        wait(0.1)
                        a7 = 1 + a7
                    until (a7 >= 9 or not _["auto_defuse"]) and _["in_loop"]
                    _["in_loop"] = false
                    a7 = 0
                    wait(0.1)
                    if _["auto_defuse"] then
                        Notify("Auto Defuse On")
                        repeat
                            if a0 then
                                _["allow_assist"] = falsea
                                for at, au in pairs(game:GetService("Workspace"):GetDescendants()) do
                                    if au.Name:lower() == "c4" then
                                        local av = au
                                        if av then
                                            local aw = av:WaitForChild("HUD", 1)
                                            if aw then
                                                local ax = game:GetService("Players")
                                                if ax then
                                                    local ay = ax.LocalPlayer
                                                    if ay then
                                                        local az = FindPart(ay)
                                                        local aA = GetHuman(ay)
                                                        if az and az.Parent then
                                                            az.Parent:MoveTo(aw.Position)
                                                            for aB = 1, 225 do
                                                                _["allow_assist"] = false
                                                                a3(0x57)
                                                                a1(0x45)
                                                                Track(aw)
                                                                wait(0.05)
                                                                if aA then
                                                                    aA.WalkSpeed = 1
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                                a2(0x45)
                            else
                                Notify("You need Level 7 exploits to run this.")
                                _["auto_defuse"] = false
                                _["allow_assist"] = true
                            end
                            wait(2)
                        until not _["auto_defuse"] or not a0
                    end
                    _["allow_assist"] = true
                end
            elseif am == A:lower() then
                if _["auto_fix"] ~= false then
                    _["auto_fix"] = false
                    Notify("Auto Fix Off")
                end
                if _["spining"] ~= false then
                    _["spining"] = false
                    Notify("Spin off")
                end
                if _["derp"] ~= false then
                    _["derp"] = false
                    Notify("Derp off")
                end
                if _["auto_shoot"] ~= false then
                    _["auto_shoot"] = false
                    Notify("Rapid Fire off")
                end
                if _["aimbot_on"] ~= false then
                    _["aimbot_on"] = false
                    Notify("Aimbot off")
                end
                if _["esp_on"] ~= false then
                    _["esp_on"] = false
                    Notify("ESP off")
                end
                if _["hover_on"] ~= false then
                    _["hover_on"] = false
                    Notify("Assist off")
                end
                if _["bhop_on"] ~= false then
                    _["bhop_on"] = false
                    Notify("Bhop off")
                end
                if _["auto_walk"] ~= false then
                    _["auto_walk"] = false
                    Notify("Auto Walk off")
                end
                if _["auto_join"] then
                    _["auto_join"] = false
                    Notify("Auto Join off")
                end
                if _["cash_on"] then
                    _["cash_on"] = false
                    Notify("Cash off")
                end
                if _["path_on"] then
                    _["path_on"] = false
                    Notify("Paths off")
                end
                if _["auto_defuse"] then
                    _["auto_defuse"] = false
                    Notify("Auto Defuse Off")
                end
                if _["god"] then
                    _["god"] = false
                    Notify("God off")
                end
                if _["speed2_on"] then
                    _["speed2_on"] = false
                    Notify("Speed off")
                end
                if _["speed1_on"] then
                    _["speed1_on"] = false
                    Notify("Speed off")
                end
                if ad then
                    ad = false
                    Notify("Auto Respawn off")
                end
                if _["bring_on"] then
                    _["bring_on"] = false
                    Notify("Releasing players")
                end
                local aC = game.Players.LocalPlayer.PlayerGui:FindFirstChild("PEPSIHELP")
                local aD = game.Players.LocalPlayer.PlayerGui:FindFirstChild("PEPSISETTINGS")
                if aC then
                    aC:Destroy()
                end
                if aD then
                    aD:Destroy()
                    Notify("Settings Not Saved")
                end
                _["fire"] = false
                _["shots"] = 0
                a7 = 0
                a8 = 0
                wait(1 / 2)
                _["allow_assist"] = true
                Notify("Panic Finished")
            elseif al:byte() == u then
                if _["auto_fix"] then
                    _["auto_fix"] = false
                    Notify("Auto Fix Off")
                else
                    _["auto_fix"] = true
                    a7 = 0
                    _["in_loop"] = true
                    repeat
                        wait(0.1)
                        a7 = 1 + a7
                    until a7 >= 9 or not _["auto_fix"] and _["in_loop"]
                    _["in_loop"] = false
                    a7 = 0
                    wait(0.1)
                    if _["auto_fix"] then
                        Notify("Auto Fix On")
                        repeat
                            if a0 then
                                local aE = game.Players.LocalPlayer.PlayerGui:FindFirstChild("GUI")
                                if aE then
                                    local aF = aE:FindFirstChild("TeamSelection")
                                    if aF then
                                        if aF.Visible then
                                            a3(0x4D)
                                            print("PRESSING M")
                                        end
                                    end
                                    local aG = aE:FindFirstChild("AmmoGUI")
                                    if aG then
                                        local aH = aG:FindFirstChild("AmmoClip")
                                        if aH then
                                            if aH.ClassName == "TextLabel" then
                                                if tonumber(tostring(tonumber(aH.Text))) > 4 then
                                                    a3(0x32)
                                                else
                                                    a3(0x32)
                                                    a3(0x52)
                                                end
                                            end
                                        end
                                    end
                                else
                                    a3(0x32)
                                end
                            else
                                Notify("You need Level 7 exploits to run this.")
                                _["auto_fix"] = false
                            end
                            wait(6)
                        until not _["auto_fix"]
                    end
                end
            elseif am == w:lower() then
                if _["auto_walk"] then
                    _["auto_walk"] = false
                    Notify("Auto Walk Off")
                else
                    _["auto_walk"] = true
                    a7 = 0
                    _["in_loop"] = true
                    repeat
                        wait(0.1)
                        a7 = 1 + a7
                    until a7 >= 9 or not _["auto_walk"] and _["in_loop"]
                    _["in_loop"] = false
                    a7 = 0
                    wait(0.1)
                    if _["auto_walk"] then
                        Notify("Auto Walking")
                        repeat
                            if GetHuman() then
                                plyr = GetNearestPlayer(25000)
                                if plyr then
                                    local aI = game.Players.LocalPlayer.Character
                                    if aI then
                                        local aJ = aI:FindFirstChildOfClass("Part")
                                        if aJ then
                                            local aK = FindValidPart(plyr)
                                            if aK then
                                                local aL =
                                                    game:GetService("PathfindingService"):FindPathAsync(
                                                    aJ.Position,
                                                    aK.Position
                                                )
                                                if aL then
                                                    local aM = aL:GetWaypoints()
                                                    if aM then
                                                        local aN = {}
                                                        local aO = aM[3]
                                                        if aO then
                                                            local aP = Instance.new("Part")
                                                            aP.Position = aO.Position + Vector3.new(0, 0.5, 0)
                                                            aP.Size = Vector3.new(0.3, 0.3, 0.3)
                                                            aP.Transparency = 1
                                                            aP.CanCollide = false
                                                            aP.Anchored = true
                                                            local aQ = Instance.new("SelectionSphere", aP)
                                                            aQ.Color3 = Color3.new(255, 255, 255)
                                                            aQ.SurfaceTransparency = 0.8
                                                            aQ.Transparency = 0.6
                                                            aQ.SurfaceColor3 = Color3.new(0, 0, 0)
                                                            aQ.Adornee = aP
                                                            table.insert(aN, 0, aP)
                                                            local an = GetHuman()
                                                            local aR = game.Players.LocalPlayer.Character
                                                            if an then
                                                                an.WalkToPoint = aP.Position
                                                                local aI = game.Players.LocalPlayer.Character
                                                                if aI then
                                                                    local aR = aI:FindFirstChild("HumanoidRootPart")
                                                                    if aR then
                                                                        if aR.Position.Y < aP.Position.Y then
                                                                            if an then
                                                                                an.Jump = true
                                                                                wait()
                                                                                an.Jump = false
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                            aP.Parent = game.Workspace.CurrentCamera
                                                            game.Debris:AddItem(aP, y / 2 + 0.06)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                            wait(y / 2)
                        until not _["auto_walk"]
                    end
                end
            elseif al:byte() == D then
                _["spining"] = true
                repeat
                    spinme()
                    wait()
                until not _["spining"]
            elseif am == z:lower() then
                a7 = 0
                _["createpart"] = false
                repeat
                    wait(0.1)
                    a7 = a7 + 1
                until _["createpart"]
                if not _["createpart"] then
                    local aS = workspace.CurrentCamera:FindFirstChild("GHOSTPARTS")
                    if aS then
                        aS:ClearAllChildren()
                    else
                        aS = Instance.new("Folder")
                        aS.Name = "GHOSTPARTS"
                        aS.Parent = workspace.CurrentCamera
                    end
                else
                    local aS = workspace.CurrentCamera:FindFirstChild("GHOSTPARTS")
                    if aS then
                        ab = Instance.new("Part")
                        ab.Anchored = true
                        ab.Size = Vector3.new(3.5, 1.2, 3.5)
                        ab.BrickColor = BrickColor.Red()
                        ab.CFrame = ak.Hit + ak.Hit.lookVector * .1
                        ab.Parent = aS
                        ab.Transparency = 0.4
                        game.Debris:AddItem(ab, 60)
                    else
                        ab = Instance.new("Part")
                        ab.Anchored = true
                        ab.Size = Vector3.new(3.5, 1.2, 3.5)
                        ab.BrickColor = BrickColor.Red()
                        ab.CFrame = ak.Hit + ak.Hit.lookVector * .1
                        ab.Parent = aS
                        ab.Transparency = 0.4
                        game.Debris:AddItem(ab, 60)
                    end
                end
            elseif am == d:lower() then
                if _["hover_on"] then
                    _["hover_on"] = false
                    if X then
                        Notify("Assist OFF")
                    end
                    print("Assist off")
                elseif _["allow_assist"] then
                    _["hover_on"] = true
                    if X then
                        Notify("Assist ON")
                    end
                    print("Assist on")
                    repeat
                        local an = GetHuman()
                        if an then
                            if an.Health > 0 and ak.Target then
                                if ak.Target.Parent then
                                    plyr = GetPlayerFromPart(ak.Target.Parent)
                                    if plyr then
                                        if IsValidTarget(plyr) then
                                            ab = GetPart(plyr)
                                            if a0 then
                                                if _["auto_fix"] then
                                                    a1(0xA0)
                                                end
                                                _["fire"] = true
                                            end
                                            if ab then
                                                if a0 then
                                                    if _["auto_fix"] then
                                                        a1(0xA0)
                                                    end
                                                    _["fire"] = true
                                                end
                                                Track(ab)
                                            end
                                        end
                                    end
                                elseif ak.Target then
                                    plyr = GetPlayerFromPart(ak.Target)
                                    if plyr then
                                        if IsValidTarget(plyr) then
                                            ab = GetPart(plyr)
                                            if a0 then
                                                a1(0xA0)
                                                _["fire"] = true
                                            end
                                            if ab then
                                                _["fire"] = true
                                                Track(ab)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        wait(e)
                    until not _["hover_on"]
                end
            elseif am == B then
                _["derp"] = true
                a7 = 0
                repeat
                    wait(0.1)
                    a7 = 1 + a7
                until a7 >= 9 or not _["in_loop"] or not _["derp"]
                wait(0.1)
                if _["derp"] or a7 >= 9 then
                    if GetHuman() then
                        _["derp"] = true
                        Notify("DERP")
                        repeat
                            local aR = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local aT = Instance.new("Part")
                            aT.Anchored = true
                            aT.Name = "DERPBLOCK"
                            aT.Transparency = 1
                            aT.Size = Vector3.new(1, 1, 1)
                            aT.CanCollide = false
                            aT.CFrame =
                                aR.CFrame +
                                Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)) *
                                    math.random()
                            aT.Parent = workspace.CurrentCamera
                            Track(aT)
                            game.Debris:AddItem(aT, 0.01)
                            wait()
                        until not _["derp"]
                    end
                end
            elseif am == V:lower() then
                if _["speed1_on"] then
                    _["speed1_on"] = false
                    if X then
                        Notify("Speed Off")
                    end
                else
                    _["speed2_on"] = false
                    _["speed1_on"] = true
                    if X then
                        Notify("Speed:" .. _["speed1"])
                    end
                    repeat
                        local ap = GetHuman()
                        if ap and ap.Health ~= 0 then
                            ap.WalkSpeed = _["speed1"]
                        end
                        wait(0.01)
                    until not _["speed1_on"]
                end
            elseif am == H:lower() then
                local aC = game.Players.LocalPlayer.PlayerGui:FindFirstChild("PEPSIHELP")
                local aD = game.Players.LocalPlayer.PlayerGui:FindFirstChild("PEPSISETTINGS")
                if not aC and not aD then
                    _["page"] = 1
                    local aU = Instance.new("ScreenGui")
                    local aV = Instance.new("Frame")
                    local aW = Instance.new("Frame")
                    local ap = Instance.new("Frame")
                    local aX = Instance.new("TextLabel")
                    local aY = Instance.new("Frame")
                    local aZ = Instance.new("ImageButton")
                    local a_ = Instance.new("Frame")
                    local b0 = Instance.new("TextLabel")
                    local b1 = Instance.new("Frame")
                    local b2 = Instance.new("Frame")
                    local b3 = Instance.new("TextButton")
                    local b4 = Instance.new("TextLabel")
                    local b5 = Instance.new("Frame")
                    local b6 = Instance.new("TextLabel")
                    local b7 = Instance.new("TextButton")
                    local b8 = Instance.new("Frame")
                    local b9 = Instance.new("TextLabel")
                    local ba = Instance.new("TextButton")
                    local am = Instance.new("Frame")
                    local bb = Instance.new("TextLabel")
                    local bc = Instance.new("TextButton")
                    local aS = Instance.new("Frame")
                    local bd = Instance.new("TextLabel")
                    local be = Instance.new("TextButton")
                    local bf = Instance.new("Frame")
                    local bg = Instance.new("TextLabel")
                    local bh = Instance.new("TextButton")
                    local bi = Instance.new("Frame")
                    local bj = Instance.new("TextLabel")
                    local bk = Instance.new("TextButton")
                    local bl = Instance.new("Frame")
                    local bm = Instance.new("TextLabel")
                    local bn = Instance.new("TextLabel")
                    local bo = Instance.new("Frame")
                    local bp = Instance.new("TextLabel")
                    local bq = Instance.new("TextButton")
                    local br = Instance.new("Frame")
                    local bs = Instance.new("TextLabel")
                    local bt = Instance.new("TextButton")
                    local bu = Instance.new("Frame")
                    local bv = Instance.new("TextLabel")
                    local bw = Instance.new("TextButton")
                    local bx = Instance.new("Frame")
                    local by = Instance.new("TextLabel")
                    local bz = Instance.new("TextLabel")
                    local bA = Instance.new("Frame")
                    local bB = Instance.new("TextLabel")
                    local bC = Instance.new("TextButton")
                    local bD = Instance.new("Frame")
                    local bE = Instance.new("Frame")
                    local bF = Instance.new("TextLabel")
                    local bG = Instance.new("Frame")
                    local bH = Instance.new("TextLabel")
                    local bI = Instance.new("Frame")
                    local bJ = Instance.new("TextLabel")
                    local bK = Instance.new("TextLabel")
                    local bL = Instance.new("Frame")
                    local bM = Instance.new("TextLabel")
                    local bN = Instance.new("TextLabel")
                    local bO = Instance.new("Frame")
                    local bP = Instance.new("TextLabel")
                    local bQ = Instance.new("TextButton")
                    local bR = Instance.new("Frame")
                    local bS = Instance.new("TextLabel")
                    local bT = Instance.new("TextButton")
                    local bU = Instance.new("Frame")
                    local bV = Instance.new("TextLabel")
                    local bW = Instance.new("TextButton")
                    local au = Instance.new("Frame")
                    local bX = Instance.new("TextLabel")
                    local bY = Instance.new("TextButton")
                    local bZ = Instance.new("Frame")
                    local b_ = Instance.new("TextLabel")
                    local c0 = Instance.new("TextButton")
                    local at = Instance.new("Frame")
                    local c1 = Instance.new("TextButton")
                    aU.Name = "PEPSIHELP"
                    aU.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                    aV.Name = "Gui"
                    aV.Parent = aU
                    aV.BackgroundColor3 = Color3.new(1, 1, 1)
                    aV.BackgroundTransparency = 1
                    aV.BorderSizePixel = 0
                    aV.Position = UDim2.new(0.342416108, 0, 0.287591219, 0)
                    aV.Size = UDim2.new(0, 400, 0, 290)
                    aW.Name = "Topbar"
                    aW.Parent = aV
                    aW.BackgroundColor3 = Color3.new(1, 1, 1)
                    aW.BackgroundTransparency = 1
                    aW.BorderSizePixel = 0
                    aW.Size = UDim2.new(1, 0, 0.100000001, 0)
                    ap.Name = "Title"
                    ap.Parent = aW
                    ap.BackgroundColor3 = Color3.new(1, 1, 1)
                    ap.BackgroundTransparency = 1
                    ap.BorderSizePixel = 0
                    ap.Position = UDim2.new(0.0724999979, 0, 0, 0)
                    ap.Size = UDim2.new(0.855000019, 0, 1, 0)
                    aX.Parent = ap
                    aX.BackgroundColor3 = Color3.new(0, 0, 0)
                    aX.BackgroundTransparency = 0.5
                    aX.BorderSizePixel = 0
                    aX.Size = UDim2.new(1, 0, 1, 0)
                    aX.Font = Enum.Font.SourceSans
                    aX.Text = "COUNTER PEPSI BINDS (Version " .. a .. ")"
                    aX.TextColor3 = Color3.new(255, 255, 255)
                    aX.TextScaled = true
                    aX.TextSize = 14
                    aX.TextWrapped = true
                    aY.Name = "x"
                    aY.Parent = aW
                    aY.BackgroundColor3 = Color3.new(1, 1, 1)
                    aY.BackgroundTransparency = 1
                    aY.BorderSizePixel = 0
                    aY.Position = UDim2.new(0.92750001, 0, 0, 0)
                    aY.Size = UDim2.new(0.0724999979, 0, 1, 0)
                    aZ.Parent = aY
                    aZ.BackgroundColor3 = Color3.new(0, 0, 0)
                    aZ.BackgroundTransparency = 0.5
                    aZ.BorderSizePixel = 0
                    aZ.Size = UDim2.new(1, 0, 1, 0)
                    aZ.Image = "rbxassetid://2257220394"
                    a_.Name = "time"
                    a_.Parent = aW
                    a_.BackgroundColor3 = Color3.new(1, 1, 1)
                    a_.BackgroundTransparency = 1
                    a_.BorderSizePixel = 0
                    a_.Size = UDim2.new(0.0724999979, 0, 1, 0)
                    b0.Name = "Time"
                    b0.Parent = a_
                    b0.BackgroundColor3 = Color3.new(0, 0, 0)
                    b0.BackgroundTransparency = 0.5
                    b0.BorderSizePixel = 0
                    b0.Size = UDim2.new(1, 0, 1, 0)
                    b0.Font = Enum.Font.SourceSans
                    b0.Text = a6
                    b0.TextColor3 = Color3.new(255, 255, 255)
                    b0.TextScaled = true
                    b0.TextSize = 14
                    b0.TextWrapped = true
                    b1.Name = "Body"
                    b1.Parent = aV
                    b1.BackgroundColor3 = Color3.new(1, 1, 1)
                    b1.BackgroundTransparency = 1
                    b1.BorderSizePixel = 0
                    b1.Position = UDim2.new(0, 0, 0.100000001, 0)
                    b1.Size = UDim2.new(1, 0, 1.20000005, 0)
                    b2.Name = "aimbot"
                    b2.Parent = b1
                    b2.BackgroundColor3 = Color3.new(1, 1, 1)
                    b2.BackgroundTransparency = 0.75
                    b2.BorderSizePixel = 0
                    b2.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    b3.Name = "bind"
                    b3.Parent = b2
                    b3.BackgroundColor3 = Color3.new(1, 1, 1)
                    b3.BackgroundTransparency = 1
                    b3.BorderSizePixel = 0
                    b3.Position = UDim2.new(0, 0, 0.5, 0)
                    b3.Size = UDim2.new(1, 0, 0.5, 0)
                    b3.Font = Enum.Font.SourceSans
                    b3.Text = b:upper()
                    b3.TextColor3 = Color3.new(0, 0, 0)
                    b3.TextScaled = true
                    b3.TextSize = 1
                    b3.TextWrapped = true
                    b4.Name = "name"
                    b4.Parent = b2
                    b4.BackgroundColor3 = Color3.new(1, 1, 1)
                    b4.BackgroundTransparency = 1
                    b4.BorderSizePixel = 0
                    b4.Size = UDim2.new(1, 0, 0.5, 0)
                    b4.Font = Enum.Font.SourceSans
                    b4.Text = " Aimbot "
                    b4.TextColor3 = Color3.new(0, 0, 0)
                    b4.TextScaled = true
                    b4.TextSize = 1
                    b4.TextWrapped = true
                    b5.Name = "farmer"
                    b5.Parent = b1
                    b5.BackgroundColor3 = Color3.new(1, 1, 1)
                    b5.BackgroundTransparency = 0.75
                    b5.BorderSizePixel = 0
                    b5.Position = UDim2.new(0.800000012, 0, 0, 0)
                    b5.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    b6.Name = "name"
                    b6.Parent = b5
                    b6.BackgroundColor3 = Color3.new(1, 1, 1)
                    b6.BackgroundTransparency = 1
                    b6.BorderSizePixel = 0
                    b6.Size = UDim2.new(1, 0, 0.5, 0)
                    b6.Font = Enum.Font.SourceSans
                    b6.Text = " Join Winner "
                    b6.TextColor3 = Color3.new(0, 0, 0)
                    b6.TextScaled = true
                    b6.TextSize = 14
                    b6.TextWrapped = true
                    b7.Name = "bind"
                    b7.Parent = b5
                    b7.BackgroundColor3 = Color3.new(1, 1, 1)
                    b7.BackgroundTransparency = 1
                    b7.BorderSizePixel = 0
                    b7.Position = UDim2.new(0, 0, 0.5, 0)
                    b7.Size = UDim2.new(1, 0, 0.5, 0)
                    b7.Font = Enum.Font.SourceSans
                    b7.Text = M:upper()
                    b7.TextColor3 = Color3.new(0, 0, 0)
                    b7.TextScaled = true
                    b7.TextSize = 14
                    b7.TextWrapped = true
                    b8.Name = "esp"
                    b8.Parent = b1
                    b8.BackgroundColor3 = Color3.new(1, 1, 1)
                    b8.BackgroundTransparency = 0.75
                    b8.BorderSizePixel = 0
                    b8.Position = UDim2.new(0.200000003, 0, 0, 0)
                    b8.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    b9.Name = "name"
                    b9.Parent = b8
                    b9.BackgroundColor3 = Color3.new(1, 1, 1)
                    b9.BackgroundTransparency = 1
                    b9.BorderSizePixel = 0
                    b9.Size = UDim2.new(1, 0, 0.5, 0)
                    b9.Font = Enum.Font.SourceSans
                    b9.Text = " ESP "
                    b9.TextColor3 = Color3.new(0, 0, 0)
                    b9.TextScaled = true
                    b9.TextSize = 14
                    b9.TextWrapped = true
                    ba.Name = "bind"
                    ba.Parent = b8
                    ba.BackgroundColor3 = Color3.new(1, 1, 1)
                    ba.BackgroundTransparency = 1
                    ba.BorderSizePixel = 0
                    ba.Position = UDim2.new(0, 0, 0.5, 0)
                    ba.Size = UDim2.new(1, 0, 0.5, 0)
                    ba.Font = Enum.Font.SourceSans
                    ba.Text = l:upper()
                    ba.TextColor3 = Color3.new(0, 0, 0)
                    ba.TextScaled = true
                    ba.TextSize = 14
                    ba.TextWrapped = true
                    am.Name = "respawn"
                    am.Parent = b1
                    am.BackgroundColor3 = Color3.new(1, 1, 1)
                    am.BackgroundTransparency = 0.75
                    am.BorderSizePixel = 0
                    am.Position = UDim2.new(0.600000024, 0, 0, 0)
                    am.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bb.Name = "name"
                    bb.Parent = am
                    bb.BackgroundColor3 = Color3.new(1, 1, 1)
                    bb.BackgroundTransparency = 1
                    bb.BorderSizePixel = 0
                    bb.Size = UDim2.new(1, 0, 0.5, 0)
                    bb.Font = Enum.Font.SourceSans
                    bb.Text = " Respawn "
                    bb.TextColor3 = Color3.new(0, 0, 0)
                    bb.TextScaled = true
                    bb.TextSize = 14
                    bb.TextWrapped = true
                    bc.Name = "bind"
                    bc.Parent = am
                    bc.BackgroundColor3 = Color3.new(1, 1, 1)
                    bc.BackgroundTransparency = 1
                    bc.BorderSizePixel = 0
                    bc.Position = UDim2.new(0, 0, 0.5, 0)
                    bc.Size = UDim2.new(1, 0, 0.5, 0)
                    bc.Font = Enum.Font.SourceSans
                    bc.Text = I:upper()
                    bc.TextColor3 = Color3.new(0, 0, 0)
                    bc.TextScaled = true
                    bc.TextSize = 14
                    bc.TextWrapped = true
                    aS.Name = "bring"
                    aS.Parent = b1
                    aS.BackgroundColor3 = Color3.new(1, 1, 1)
                    aS.BackgroundTransparency = 0.75
                    aS.BorderSizePixel = 0
                    aS.Position = UDim2.new(0.400000006, 0, 0, 0)
                    aS.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bd.Name = "name"
                    bd.Parent = aS
                    bd.BackgroundColor3 = Color3.new(1, 1, 1)
                    bd.BackgroundTransparency = 1
                    bd.BorderSizePixel = 0
                    bd.Size = UDim2.new(1, 0, 0.5, 0)
                    bd.Font = Enum.Font.SourceSans
                    bd.Text = " Bring "
                    bd.TextColor3 = Color3.new(0, 0, 0)
                    bd.TextScaled = true
                    bd.TextSize = 14
                    bd.TextWrapped = true
                    be.Name = "bind"
                    be.Parent = aS
                    be.BackgroundColor3 = Color3.new(1, 1, 1)
                    be.BackgroundTransparency = 1
                    be.BorderSizePixel = 0
                    be.Position = UDim2.new(0, 0, 0.5, 0)
                    be.Size = UDim2.new(1, 0, 0.5, 0)
                    be.Font = Enum.Font.SourceSans
                    be.Text = q:upper()
                    be.TextColor3 = Color3.new(0, 0, 0)
                    be.TextScaled = true
                    be.TextSize = 14
                    be.TextWrapped = true
                    bf.Name = "load"
                    bf.Parent = b1
                    bf.BackgroundColor3 = Color3.new(1, 1, 1)
                    bf.BackgroundTransparency = 0.75
                    bf.BorderSizePixel = 0
                    bf.Position = UDim2.new(0, 0, 0.166666672, 0)
                    bf.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bg.Name = "name"
                    bg.Parent = bf
                    bg.BackgroundColor3 = Color3.new(1, 1, 1)
                    bg.BackgroundTransparency = 1
                    bg.BorderSizePixel = 0
                    bg.Size = UDim2.new(1, 0, 0.5, 0)
                    bg.Font = Enum.Font.SourceSans
                    bg.Text = " Load WP "
                    bg.TextColor3 = Color3.new(0, 0, 0)
                    bg.TextScaled = true
                    bg.TextSize = 14
                    bg.TextWrapped = true
                    bh.Name = "bind"
                    bh.Parent = bf
                    bh.BackgroundColor3 = Color3.new(1, 1, 1)
                    bh.BackgroundTransparency = 1
                    bh.BorderSizePixel = 0
                    bh.Position = UDim2.new(0, 0, 0.5, 0)
                    bh.Size = UDim2.new(1, 0, 0.5, 0)
                    bh.Font = Enum.Font.SourceSans
                    bh.Text = P:upper()
                    bh.TextColor3 = Color3.new(0, 0, 0)
                    bh.TextScaled = true
                    bh.TextSize = 14
                    bh.TextWrapped = true
                    bi.Name = "save"
                    bi.Parent = b1
                    bi.BackgroundColor3 = Color3.new(1, 1, 1)
                    bi.BackgroundTransparency = 0.75
                    bi.BorderSizePixel = 0
                    bi.Position = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bi.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bj.Name = "name"
                    bj.Parent = bi
                    bj.BackgroundColor3 = Color3.new(1, 1, 1)
                    bj.BackgroundTransparency = 1
                    bj.BorderSizePixel = 0
                    bj.Size = UDim2.new(1, 0, 0.5, 0)
                    bj.Font = Enum.Font.SourceSans
                    bj.Text = " Save WP "
                    bj.TextColor3 = Color3.new(0, 0, 0)
                    bj.TextScaled = true
                    bj.TextSize = 14
                    bj.TextWrapped = true
                    bk.Name = "bind"
                    bk.Parent = bi
                    bk.BackgroundColor3 = Color3.new(1, 1, 1)
                    bk.BackgroundTransparency = 1
                    bk.BorderSizePixel = 0
                    bk.Position = UDim2.new(0, 0, 0.5, 0)
                    bk.Size = UDim2.new(1, 0, 0.5, 0)
                    bk.Font = Enum.Font.SourceSans
                    bk.Text = O:upper()
                    bk.TextColor3 = Color3.new(0, 0, 0)
                    bk.TextScaled = true
                    bk.TextSize = 14
                    bk.TextWrapped = true
                    bl.Name = "clear"
                    bl.Parent = b1
                    bl.BackgroundColor3 = Color3.new(1, 1, 1)
                    bl.BackgroundTransparency = 0.75
                    bl.BorderSizePixel = 0
                    bl.Position = UDim2.new(0.400000006, 0, 0.166666672, 0)
                    bl.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bm.Name = "name"
                    bm.Parent = bl
                    bm.BackgroundColor3 = Color3.new(1, 1, 1)
                    bm.BackgroundTransparency = 1
                    bm.BorderSizePixel = 0
                    bm.Size = UDim2.new(1, 0, 0.5, 0)
                    bm.Font = Enum.Font.SourceSans
                    bm.Text = " Clear WP "
                    bm.TextColor3 = Color3.new(0, 0, 0)
                    bm.TextScaled = true
                    bm.TextSize = 14
                    bm.TextWrapped = true
                    bn.Name = "bind"
                    bn.Parent = bl
                    bn.BackgroundColor3 = Color3.new(1, 1, 1)
                    bn.BackgroundTransparency = 1
                    bn.BorderSizePixel = 0
                    bn.Position = UDim2.new(0, 0, 0.5, 0)
                    bn.Size = UDim2.new(1, 0, 0.5, 0)
                    bn.Font = Enum.Font.SourceSans
                    bn.Text = Q:upper()
                    bn.TextColor3 = Color3.new(0, 0, 0)
                    bn.TextScaled = true
                    bn.TextSize = 14
                    bn.TextWrapped = true
                    bo.Name = "autorespawn"
                    bo.Parent = b1
                    bo.BackgroundColor3 = Color3.new(1, 1, 1)
                    bo.BackgroundTransparency = 0.75
                    bo.BorderSizePixel = 0
                    bo.Position = UDim2.new(0.600000024, 0, 0.166666672, 0)
                    bo.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bp.Name = "name"
                    bp.Parent = bo
                    bp.BackgroundColor3 = Color3.new(1, 1, 1)
                    bp.BackgroundTransparency = 1
                    bp.BorderSizePixel = 0
                    bp.Size = UDim2.new(1, 0, 0.5, 0)
                    bp.Font = Enum.Font.SourceSans
                    bp.Text = " Auto Respawn "
                    bp.TextColor3 = Color3.new(0, 0, 0)
                    bp.TextScaled = true
                    bp.TextSize = 14
                    bp.TextWrapped = true
                    bq.Name = "bind"
                    bq.Parent = bo
                    bq.BackgroundColor3 = Color3.new(1, 1, 1)
                    bq.BackgroundTransparency = 1
                    bq.BorderSizePixel = 0
                    bq.Position = UDim2.new(0, 0, 0.5, 0)
                    bq.Size = UDim2.new(1, 0, 0.5, 0)
                    bq.Font = Enum.Font.SourceSans
                    bq.Text = S:upper()
                    bq.TextColor3 = Color3.new(0, 0, 0)
                    bq.TextScaled = true
                    bq.TextSize = 14
                    bq.TextWrapped = true
                    br.Name = "reset"
                    br.Parent = b1
                    br.BackgroundColor3 = Color3.new(1, 1, 1)
                    br.BackgroundTransparency = 0.75
                    br.BorderSizePixel = 0
                    br.Position = UDim2.new(0.800000012, 0, 0.166666672, 0)
                    br.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bs.Name = "name"
                    bs.Parent = br
                    bs.BackgroundColor3 = Color3.new(1, 1, 1)
                    bs.BackgroundTransparency = 1
                    bs.BorderSizePixel = 0
                    bs.Size = UDim2.new(1, 0, 0.5, 0)
                    bs.Font = Enum.Font.SourceSans
                    bs.Text = " Reset "
                    bs.TextColor3 = Color3.new(0, 0, 0)
                    bs.TextScaled = true
                    bs.TextSize = 14
                    bs.TextWrapped = true
                    bt.Name = "bind"
                    bt.Parent = br
                    bt.BackgroundColor3 = Color3.new(1, 1, 1)
                    bt.BackgroundTransparency = 1
                    bt.BorderSizePixel = 0
                    bt.Position = UDim2.new(0, 0, 0.5, 0)
                    bt.Size = UDim2.new(1, 0, 0.5, 0)
                    bt.Font = Enum.Font.SourceSans
                    bt.Text = J:upper()
                    bt.TextColor3 = Color3.new(0, 0, 0)
                    bt.TextScaled = true
                    bt.TextSize = 1
                    bt.TextWrapped = true
                    bu.Name = "bombsite"
                    bu.Parent = b1
                    bu.BackgroundColor3 = Color3.new(1, 1, 1)
                    bu.BackgroundTransparency = 0.75
                    bu.BorderSizePixel = 0
                    bu.Position = UDim2.new(0.200000003, 0, 0.333333343, 0)
                    bu.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bv.Name = "name"
                    bv.Parent = bu
                    bv.BackgroundColor3 = Color3.new(1, 1, 1)
                    bv.BackgroundTransparency = 1
                    bv.BorderSizePixel = 0
                    bv.Size = UDim2.new(1, 0, 0.5, 0)
                    bv.Font = Enum.Font.SourceSans
                    bv.Text = " TP to Bomb "
                    bv.TextColor3 = Color3.new(0, 0, 0)
                    bv.TextScaled = true
                    bv.TextSize = 14
                    bv.TextWrapped = true
                    bw.Name = "bind"
                    bw.Parent = bu
                    bw.BackgroundColor3 = Color3.new(1, 1, 1)
                    bw.BackgroundTransparency = 1
                    bw.BorderSizePixel = 0
                    bw.Position = UDim2.new(0, 0, 0.5, 0)
                    bw.Size = UDim2.new(1, 0, 0.5, 0)
                    bw.Font = Enum.Font.SourceSans
                    bw.Text = G:upper()
                    bw.TextColor3 = Color3.new(0, 0, 0)
                    bw.TextScaled = true
                    bw.TextSize = 14
                    bw.TextWrapped = true
                    bx.Name = "cash"
                    bx.Parent = b1
                    bx.BackgroundColor3 = Color3.new(1, 1, 1)
                    bx.BackgroundTransparency = 0.75
                    bx.BorderSizePixel = 0
                    bx.Position = UDim2.new(0.600000024, 0, 0.5, 0)
                    bx.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    by.Name = "name"
                    by.Parent = bx
                    by.BackgroundColor3 = Color3.new(1, 1, 1)
                    by.BackgroundTransparency = 1
                    by.BorderSizePixel = 0
                    by.Size = UDim2.new(1, 0, 0.5, 0)
                    by.Font = Enum.Font.SourceSans
                    by.Text = " Infinite Cash "
                    by.TextColor3 = Color3.new(0, 0, 0)
                    by.TextScaled = true
                    by.TextSize = 14
                    by.TextWrapped = true
                    bz.Name = "bind"
                    bz.Parent = bx
                    bz.BackgroundColor3 = Color3.new(1, 1, 1)
                    bz.BackgroundTransparency = 1
                    bz.BorderSizePixel = 0
                    bz.Position = UDim2.new(0, 0, 0.5, 0)
                    bz.Size = UDim2.new(1, 0, 0.5, 0)
                    bz.Font = Enum.Font.SourceSans
                    bz.Text = "F2"
                    bz.TextColor3 = Color3.new(0, 0, 0)
                    bz.TextScaled = true
                    bz.TextSize = 14
                    bz.TextWrapped = true
                    bA.Name = "switch"
                    bA.Parent = b1
                    bA.BackgroundColor3 = Color3.new(1, 1, 1)
                    bA.BackgroundTransparency = 0.75
                    bA.BorderSizePixel = 0
                    bA.Position = UDim2.new(0.400000006, 0, 0.333333343, 0)
                    bA.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bB.Name = "name"
                    bB.Parent = bA
                    bB.BackgroundColor3 = Color3.new(1, 1, 1)
                    bB.BackgroundTransparency = 1
                    bB.BorderSizePixel = 0
                    bB.Size = UDim2.new(1, 0, 0.5, 0)
                    bB.Font = Enum.Font.SourceSans
                    bB.Text = " Switch Teams "
                    bB.TextColor3 = Color3.new(0, 0, 0)
                    bB.TextScaled = true
                    bB.TextSize = 14
                    bB.TextWrapped = true
                    bC.Name = "bind"
                    bC.Parent = bA
                    bC.BackgroundColor3 = Color3.new(1, 1, 1)
                    bC.BackgroundTransparency = 1
                    bC.BorderSizePixel = 0
                    bC.Position = UDim2.new(0, 0, 0.5, 0)
                    bC.Size = UDim2.new(1, 0, 0.5, 0)
                    bC.Font = Enum.Font.SourceSans
                    bC.Text = R:upper()
                    bC.TextColor3 = Color3.new(0, 0, 0)
                    bC.TextScaled = true
                    bC.TextSize = 14
                    bC.TextWrapped = true
                    bD.Name = "waypoints"
                    bD.Parent = b1
                    bD.BackgroundColor3 = Color3.new(1, 1, 1)
                    bD.BackgroundTransparency = 1
                    bD.BorderSizePixel = 0
                    bD.Position = UDim2.new(0, 0, 0.800000012, 0)
                    bD.Size = UDim2.new(1, 0, 0.179310352, 0)
                    bE.Name = "a"
                    bE.Parent = bD
                    bE.BackgroundColor3 = Color3.new(1, 1, 1)
                    bE.BackgroundTransparency = 0.75
                    bE.BorderSizePixel = 0
                    bE.Size = UDim2.new(1, 0, 0.5, 0)
                    bF.Name = "cord"
                    bF.Parent = bE
                    bF.BackgroundColor3 = Color3.new(1, 1, 1)
                    bF.BackgroundTransparency = 1
                    bF.BorderSizePixel = 0
                    bF.Size = UDim2.new(1, 0, 1, 0)
                    bF.Font = Enum.Font.SourceSans
                    bF.Text = " Press " .. O:upper() .. " to save waypoint 1 "
                    if aa then
                        local c2 = aa.X - aa.X % 1
                        local c3 = aa.Y - aa.Y % 1
                        local c4 = aa.Z - aa.Z % 1
                        bF.Text = tostring(c2) .. ", " .. tostring(c3) .. ", " .. tostring(c4)
                    end
                    bF.TextColor3 = Color3.new(0, 0, 0)
                    bF.TextScaled = true
                    bF.TextSize = 1
                    bF.TextWrapped = true
                    bG.Name = "b"
                    bG.Parent = bD
                    bG.BackgroundColor3 = Color3.new(1, 1, 1)
                    bG.BackgroundTransparency = 0.75
                    bG.BorderSizePixel = 0
                    bG.Position = UDim2.new(0, 0, 0.5, 0)
                    bG.Size = UDim2.new(1, 0, 0.5, 0)
                    bH.Name = "cord"
                    bH.Parent = bG
                    bH.BackgroundColor3 = Color3.new(1, 1, 1)
                    bH.BackgroundTransparency = 1
                    bH.BorderSizePixel = 0
                    bH.Size = UDim2.new(1, 0, 1, 0)
                    bH.Font = Enum.Font.SourceSans
                    bH.Text = " Press " .. O:upper() .. " to save waypoint 2 "
                    if ac then
                        local c5 = ac.X - ac.X % 1
                        local c6 = ac.Y - ac.Y % 1
                        local c7 = ac.Z - ac.Z % 1
                        bH.Text = tostring(c5) .. ", " .. tostring(c6) .. ", " .. tostring(c7)
                    end
                    bH.TextColor3 = Color3.new(0, 0, 0)
                    bH.TextScaled = true
                    bH.TextSize = 1
                    bH.TextWrapped = true
                    bI.Name = "credits"
                    bI.Parent = b1
                    bI.BackgroundColor3 = Color3.new(1, 1, 1)
                    bI.BackgroundTransparency = 0.75
                    bI.BorderSizePixel = 0
                    bI.Position = UDim2.new(0.800000012, 0, 0.5, 0)
                    bI.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bJ.Name = "bind"
                    bJ.Parent = bI
                    bJ.BackgroundColor3 = Color3.new(1, 1, 1)
                    bJ.BackgroundTransparency = 1
                    bJ.BorderSizePixel = 0
                    bJ.Position = UDim2.new(0, 0, 0.5, 0)
                    bJ.Size = UDim2.new(1, 0, 0.5, 0)
                    bJ.Font = Enum.Font.SourceSans
                    bJ.Text = " Pepsi "
                    bJ.TextColor3 = Color3.new(0, 0, 0)
                    bJ.TextScaled = true
                    bJ.TextSize = 14
                    bJ.TextWrapped = true
                    bK.Name = "name"
                    bK.Parent = bI
                    bK.BackgroundColor3 = Color3.new(1, 1, 1)
                    bK.BackgroundTransparency = 1
                    bK.BorderSizePixel = 0
                    bK.Size = UDim2.new(1, 0, 0.5, 0)
                    bK.Font = Enum.Font.SourceSans
                    bK.Text = " Created By "
                    bK.TextColor3 = Color3.new(0, 0, 0)
                    bK.TextScaled = true
                    bK.TextSize = 14
                    bK.TextWrapped = true
                    bL.Name = "help"
                    bL.Parent = b1
                    bL.BackgroundColor3 = Color3.new(1, 1, 1)
                    bL.BackgroundTransparency = 0.75
                    bL.BorderSizePixel = 0
                    bL.Position = UDim2.new(0, 0, 0.333333343, 0)
                    bL.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bM.Name = "name"
                    bM.Parent = bL
                    bM.BackgroundColor3 = Color3.new(1, 1, 1)
                    bM.BackgroundTransparency = 1
                    bM.BorderSizePixel = 0
                    bM.Size = UDim2.new(1, 0, 0.5, 0)
                    bM.Font = Enum.Font.SourceSans
                    bM.Text = " Help GUI "
                    bM.TextColor3 = Color3.new(0, 0, 0)
                    bM.TextScaled = true
                    bM.TextSize = 14
                    bM.TextWrapped = true
                    bN.Name = "bind"
                    bN.Parent = bL
                    bN.BackgroundColor3 = Color3.new(1, 1, 1)
                    bN.BackgroundTransparency = 1
                    bN.BorderSizePixel = 0
                    bN.Position = UDim2.new(0, 0, 0.5, 0)
                    bN.Size = UDim2.new(1, 0, 0.5, 0)
                    bN.Font = Enum.Font.SourceSans
                    bN.Text = H:upper()
                    bN.TextColor3 = Color3.new(0, 0, 0)
                    bN.TextScaled = true
                    bN.TextSize = 14
                    bN.TextWrapped = true
                    bO.Name = "speed1"
                    bO.Parent = b1
                    bO.BackgroundColor3 = Color3.new(1, 1, 1)
                    bO.BackgroundTransparency = 0.75
                    bO.BorderSizePixel = 0
                    bO.Position = UDim2.new(0.400000006, 0, 0.5, 0)
                    bO.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bP.Name = "name"
                    bP.Parent = bO
                    bP.BackgroundColor3 = Color3.new(1, 1, 1)
                    bP.BackgroundTransparency = 1
                    bP.BorderSizePixel = 0
                    bP.Size = UDim2.new(1, 0, 0.5, 0)
                    bP.Font = Enum.Font.SourceSans
                    bP.Text = " Speed (" .. _["speed1"] .. ") "
                    bP.TextColor3 = Color3.new(0, 0, 0)
                    bP.TextScaled = true
                    bP.TextSize = 14
                    bP.TextWrapped = true
                    bQ.Name = "bind"
                    bQ.Parent = bO
                    bQ.BackgroundColor3 = Color3.new(1, 1, 1)
                    bQ.BackgroundTransparency = 1
                    bQ.BorderSizePixel = 0
                    bQ.Position = UDim2.new(0, 0, 0.5, 0)
                    bQ.Size = UDim2.new(1, 0, 0.5, 0)
                    bQ.Font = Enum.Font.SourceSans
                    bQ.Text = V:upper()
                    bQ.TextColor3 = Color3.new(0, 0, 0)
                    bQ.TextScaled = true
                    bQ.TextSize = 14
                    bQ.TextWrapped = true
                    bR.Name = "speed2"
                    bR.Parent = b1
                    bR.BackgroundColor3 = Color3.new(1, 1, 1)
                    bR.BackgroundTransparency = 0.75
                    bR.BorderSizePixel = 0
                    bR.Position = UDim2.new(0.200000003, 0, 0.5, 0)
                    bR.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bS.Name = "name"
                    bS.Parent = bR
                    bS.BackgroundColor3 = Color3.new(1, 1, 1)
                    bS.BackgroundTransparency = 1
                    bS.BorderSizePixel = 0
                    bS.Size = UDim2.new(1, 0, 0.5, 0)
                    bS.Font = Enum.Font.SourceSans
                    bS.Text = " Speed (" .. _["speed2"] .. ") "
                    bS.TextColor3 = Color3.new(0, 0, 0)
                    bS.TextScaled = true
                    bS.TextSize = 14
                    bS.TextWrapped = true
                    bT.Name = "bind"
                    bT.Parent = bR
                    bT.BackgroundColor3 = Color3.new(1, 1, 1)
                    bT.BackgroundTransparency = 1
                    bT.BorderSizePixel = 0
                    bT.Position = UDim2.new(0, 0, 0.5, 0)
                    bT.Size = UDim2.new(1, 0, 0.5, 0)
                    bT.Font = Enum.Font.SourceSans
                    bT.Text = W:upper()
                    bT.TextColor3 = Color3.new(0, 0, 0)
                    bT.TextScaled = true
                    bT.TextSize = 14
                    bT.TextWrapped = true
                    bU.Name = "paths"
                    bU.Parent = b1
                    bU.BackgroundColor3 = Color3.new(1, 1, 1)
                    bU.BackgroundTransparency = 0.75
                    bU.BorderSizePixel = 0
                    bU.Position = UDim2.new(0, 0, 0.5, 0)
                    bU.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bV.Name = "name"
                    bV.Parent = bU
                    bV.BackgroundColor3 = Color3.new(1, 1, 1)
                    bV.BackgroundTransparency = 1
                    bV.BorderSizePixel = 0
                    bV.Size = UDim2.new(1, 0, 0.5, 0)
                    bV.Font = Enum.Font.SourceSans
                    bV.Text = " Default Team "
                    bV.TextColor3 = Color3.new(0, 0, 0)
                    bV.TextScaled = true
                    bV.TextSize = 14
                    bV.TextWrapped = true
                    bW.Name = "bind"
                    bW.Parent = bU
                    bW.BackgroundColor3 = Color3.new(1, 1, 1)
                    bW.BackgroundTransparency = 1
                    bW.BorderSizePixel = 0
                    bW.Position = UDim2.new(0, 0, 0.5, 0)
                    bW.Size = UDim2.new(1, 0, 0.5, 0)
                    bW.Font = Enum.Font.SourceSans
                    bW.Text = N:upper()
                    bW.TextColor3 = Color3.new(0, 0, 0)
                    bW.TextScaled = true
                    bW.TextSize = 14
                    bW.TextWrapped = true
                    au.Name = "ct"
                    au.Parent = b1
                    au.BackgroundColor3 = Color3.new(1, 1, 1)
                    au.BackgroundTransparency = 0.75
                    au.BorderSizePixel = 0
                    au.Position = UDim2.new(0.600000024, 0, 0.333333343, 0)
                    au.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    bX.Name = "name"
                    bX.Parent = au
                    bX.BackgroundColor3 = Color3.new(1, 1, 1)
                    bX.BackgroundTransparency = 1
                    bX.BorderSizePixel = 0
                    bX.Size = UDim2.new(1, 0, 0.5, 0)
                    bX.Font = Enum.Font.SourceSans
                    bX.Text = " Join CT "
                    bX.TextColor3 = Color3.new(0, 0, 0)
                    bX.TextScaled = true
                    bX.TextSize = 14
                    bX.TextWrapped = true
                    bY.Name = "bind"
                    bY.Parent = au
                    bY.BackgroundColor3 = Color3.new(1, 1, 1)
                    bY.BackgroundTransparency = 1
                    bY.BorderSizePixel = 0
                    bY.Position = UDim2.new(0, 0, 0.5, 0)
                    bY.Size = UDim2.new(1, 0, 0.5, 0)
                    bY.Font = Enum.Font.SourceSans
                    bY.Text = K:upper()
                    bY.TextColor3 = Color3.new(0, 0, 0)
                    bY.TextScaled = true
                    bY.TextSize = 14
                    bY.TextWrapped = true
                    bZ.Name = "t"
                    bZ.Parent = b1
                    bZ.BackgroundColor3 = Color3.new(1, 1, 1)
                    bZ.BackgroundTransparency = 0.75
                    bZ.BorderSizePixel = 0
                    bZ.Position = UDim2.new(0.800000012, 0, 0.333333343, 0)
                    bZ.Size = UDim2.new(0.200000003, 0, 0.166666672, 0)
                    b_.Name = "name"
                    b_.Parent = bZ
                    b_.BackgroundColor3 = Color3.new(1, 1, 1)
                    b_.BackgroundTransparency = 1
                    b_.BorderSizePixel = 0
                    b_.Size = UDim2.new(1, 0, 0.5, 0)
                    b_.Font = Enum.Font.SourceSans
                    b_.Text = " Join T "
                    b_.TextColor3 = Color3.new(0, 0, 0)
                    b_.TextScaled = true
                    b_.TextSize = 14
                    b_.TextWrapped = true
                    c0.Name = "bind"
                    c0.Parent = bZ
                    c0.BackgroundColor3 = Color3.new(1, 1, 1)
                    c0.BackgroundTransparency = 1
                    c0.BorderSizePixel = 0
                    c0.Position = UDim2.new(0, 0, 0.5, 0)
                    c0.Size = UDim2.new(1, 0, 0.5, 0)
                    c0.Font = Enum.Font.SourceSans
                    c0.Text = L:upper()
                    c0.TextColor3 = Color3.new(0, 0, 0)
                    c0.TextScaled = true
                    c0.TextSize = 14
                    c0.TextWrapped = true
                    at.Name = "moreinfo"
                    at.Parent = b1
                    at.BackgroundColor3 = Color3.new(1, 1, 1)
                    at.BackgroundTransparency = 0.75
                    at.BorderSizePixel = 0
                    at.Position = UDim2.new(0, 0, 0.666666687, 0)
                    at.Size = UDim2.new(1, 0, 0.132183909, 0)
                    c1.Parent = at
                    c1.BackgroundColor3 = Color3.new(1, 1, 1)
                    c1.BackgroundTransparency = 1
                    c1.BorderSizePixel = 0
                    c1.Size = UDim2.new(1, 0, 1, 0)
                    c1.Font = Enum.Font.SourceSans
                    c1.Text = " More Binds "
                    c1.TextColor3 = Color3.new(0, 0, 0)
                    c1.TextScaled = true
                    c1.TextSize = 14
                    c1.TextWrapped = true
                    aZ.MouseButton1Click:Connect(
                        function()
                            if aU then
                                aU:Destroy()
                            end
                        end
                    )
                    b3.MouseButton1Click:Connect(
                        function()
                            local c8 = true
                            b3.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 then
                                        c8 = false
                                        b3.Text = al:upper()
                                        wait(1)
                                        b = al:lower()
                                    end
                                end
                            )
                        end
                    )
                    bQ.MouseButton1Click:Connect(
                        function()
                            local ca = bQ
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1)
                                        V = al:lower()
                                    end
                                end
                            )
                        end
                    )
                    c0.MouseButton1Click:Connect(
                        function()
                            local ca = c0
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1)
                                        L = al:lower()
                                    end
                                end
                            )
                        end
                    )
                    be.MouseButton1Click:Connect(
                        function()
                            local ca = be
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1)
                                        q = al:lower()
                                    end
                                end
                            )
                        end
                    )
                    bT.MouseButton1Click:Connect(
                        function()
                            local ca = bT
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 and _["page"] == 1 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1)
                                        W = al:lower()
                                    end
                                end
                            )
                        end
                    )
                    bC.MouseButton1Click:Connect(
                        function()
                            local ca = bC
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 and _["page"] == 1 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1 / 2)
                                        if _["page"] == 1 then
                                            R = al:lower()
                                        else
                                            Notify("Cannot change this bind")
                                        end
                                    end
                                end
                            )
                        end
                    )
                    bw.MouseButton1Click:Connect(
                        function()
                            local ca = bw
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 and _["page"] == 1 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1 / 2)
                                        if _["page"] == 1 then
                                            G = al:lower()
                                        else
                                            Notify("Cannot change this bind")
                                        end
                                    end
                                end
                            )
                        end
                    )
                    bt.MouseButton1Click:Connect(
                        function()
                            local ca = bt
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 and _["page"] == 1 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1 / 2)
                                        if _["page"] == 1 then
                                            J = al:lower()
                                        else
                                            Notify("Cannot change this bind")
                                        end
                                    end
                                end
                            )
                        end
                    )
                    bq.MouseButton1Click:Connect(
                        function()
                            local ca = bq
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1 / 2)
                                        if _["page"] == 1 then
                                            S = al:lower()
                                        else
                                            w = al:lower()
                                        end
                                    end
                                end
                            )
                        end
                    )
                    ba.MouseButton1Click:Connect(
                        function()
                            local ca = ba
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1 / 2)
                                        if _["page"] == 1 then
                                            l = al:lower()
                                        else
                                            B = al:lower()
                                        end
                                    end
                                end
                            )
                        end
                    )
                    bk.MouseButton1Click:Connect(
                        function()
                            local ca = bk
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1 / 2)
                                        if _["page"] == 1 then
                                            O = al:lower()
                                        else
                                            G = al:lower()
                                        end
                                    end
                                end
                            )
                        end
                    )
                    bh.MouseButton1Click:Connect(
                        function()
                            local ca = bh
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1 / 2)
                                        if _["page"] == 1 then
                                            P = al:lower()
                                        else
                                            d = al:lower()
                                        end
                                    end
                                end
                            )
                        end
                    )
                    bc.MouseButton1Click:Connect(
                        function()
                            local ca = bc
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        wait(1 / 2)
                                        if _["page"] == 1 then
                                            I = al:lower()
                                        else
                                            v = al:lower()
                                        end
                                    end
                                end
                            )
                        end
                    )
                    b7.MouseButton1Click:Connect(
                        function()
                            local ca = b7
                            local c8 = true
                            ca.Text = " Press New key "
                            local c9 = game.Players.LocalPlayer:GetMouse()
                            c9.KeyDown:Connect(
                                function(al)
                                    if type(al) == "string" and c8 then
                                        c8 = false
                                        ca.Text = al:upper()
                                        if _["page"] == 1 then
                                            M = al:lower()
                                        else
                                            z = al:lower()
                                        end
                                    end
                                end
                            )
                        end
                    )
                    bW.MouseButton1Click:Connect(
                        function()
                            if N == "CT" then
                                N = "T"
                                bW.Text = "T"
                            else
                                N = "CT"
                                bW.Text = "CT"
                            end
                            if X then
                                Notify("Default team:" .. N)
                            end
                        end
                    )
                    c1.MouseButton1Click:Connect(
                        function()
                            _["page"] = 2
                            b4.Text = " Paths "
                            b3.Text = x:upper()
                            b9.Text = " Derp Mode "
                            ba.Text = B:upper()
                            bd.Text = " 360 "
                            be.Text = "`"
                            bb.Text = " Rapid Fire "
                            bc.Text = v:upper()
                            b6.Text = " Create Part "
                            b7.Text = z:upper()
                            bg.Text = " Aim Assist "
                            bh.Text = d:upper()
                            bj.Text = " TP C4 "
                            bk.Text = G:upper()
                            bs.Text = " Auto Fix "
                            bt.Text = " F4 "
                            bm.Text = " F4 "
                            bn.Text = E:upper()
                            bM.Text = " Panic "
                            bN.Text = " F8 "
                            bp.Text = " Auto Walk "
                            bq.Text = w:upper()
                            bv.Text = " Auto Play "
                            bw.Text = "."
                            bX.Text = " Godmode "
                            bY.Text = " BACKSPACE "
                            bB.Text = " Auto Defuse "
                            bC.Text = " END "
                            c1.Text = " Settings "
                            c1.MouseButton1Click:Connect(
                                function()
                                    _["page"] = 3
                                    if aU then
                                        aU:Destroy()
                                    end
                                    local aU = Instance.new("ScreenGui")
                                    local at = Instance.new("Frame")
                                    local am = Instance.new("Frame")
                                    local aY = Instance.new("Frame")
                                    local bi = Instance.new("TextLabel")
                                    local bG = Instance.new("Frame")
                                    local a_ = Instance.new("ImageButton")
                                    local bE = Instance.new("Frame")
                                    local bo = Instance.new("TextLabel")
                                    local br = Instance.new("Frame")
                                    local ap = Instance.new("Frame")
                                    local au = Instance.new("TextButton")
                                    local bu = Instance.new("TextLabel")
                                    local bA = Instance.new("Frame")
                                    local bI = Instance.new("TextLabel")
                                    local aV = Instance.new("TextBox")
                                    local bD = Instance.new("Frame")
                                    local bx = Instance.new("TextLabel")
                                    local aW = Instance.new("TextBox")
                                    local aS = Instance.new("Frame")
                                    local bf = Instance.new("TextLabel")
                                    local bZ = Instance.new("TextBox")
                                    local cb = Instance.new("TextButton")
                                    local cc = Instance.new("TextButton")
                                    local cd = Instance.new("Frame")
                                    local ce = Instance.new("Frame")
                                    local b2 = Instance.new("Frame")
                                    local cf = Instance.new("Frame")
                                    local cg = Instance.new("Frame")
                                    local ch = Instance.new("Frame")
                                    local ci = Instance.new("TextButton")
                                    local cj = Instance.new("TextButton")
                                    cg.Name = "whitelist"
                                    cg.Parent = br
                                    cg.BackgroundColor3 = Color3.new(1, 1, 1)
                                    cg.BackgroundTransparency = 1
                                    cg.BorderSizePixel = 0
                                    cg.Position = UDim2.new(0, 0, 0.200000003, 0)
                                    cg.Size = UDim2.new(1, 0, 0.179310367, 0)
                                    ch.Name = "nameframe"
                                    ch.Parent = cg
                                    ch.BackgroundColor3 = Color3.new(1, 1, 1)
                                    ch.BackgroundTransparency = 0.75
                                    ch.BorderSizePixel = 0
                                    ch.Size = UDim2.new(1, 0, 1, 0)
                                    ci.Name = "all"
                                    ci.Parent = ch
                                    ci.BackgroundColor3 = Color3.new(1, 1, 1)
                                    ci.BackgroundTransparency = 1
                                    ci.BorderSizePixel = 0
                                    ci.Position = UDim2.new(0.870000005, 0, 0, 0)
                                    ci.Size = UDim2.new(0.129999995, 0, 1, 0)
                                    ci.Font = Enum.Font.SourceSans
                                    ci.Text = "All"
                                    ci.TextColor3 = Color3.new(0, 0, 0)
                                    ci.TextScaled = true
                                    ci.TextSize = 1
                                    ci.TextWrapped = true
                                    cj.Name = "user"
                                    cj.Parent = ch
                                    cj.BackgroundColor3 = Color3.new(1, 1, 1)
                                    cj.BackgroundTransparency = 1
                                    cj.BorderSizePixel = 0
                                    cj.Size = UDim2.new(0.870000005, 0, 1, 0)
                                    cj.Font = Enum.Font.SourceSans
                                    cj.Text = "Bring:All"
                                    cj.TextColor3 = Color3.new(0, 0, 0)
                                    cj.TextScaled = true
                                    cj.TextSize = 14
                                    cj.TextWrapped = true
                                    cf.Name = "waypoints"
                                    cf.Parent = br
                                    cf.BackgroundColor3 = Color3.new(1, 1, 1)
                                    cf.BackgroundTransparency = 1
                                    cf.BorderSizePixel = 0
                                    cf.Position = UDim2.new(0, 0, 0.800000012, 0)
                                    cf.Size = UDim2.new(1, 0, 0.179310352, 0)
                                    cd.Name = "name"
                                    cd.Parent = cf
                                    cd.BackgroundColor3 = Color3.new(1, 1, 1)
                                    cd.BackgroundTransparency = 0.75
                                    cd.BorderSizePixel = 0
                                    cd.Size = UDim2.new(1, 0, 0.5, 0)
                                    cb.Name = "name"
                                    cb.Parent = cd
                                    cb.BackgroundColor3 = Color3.new(1, 1, 1)
                                    cb.BackgroundTransparency = 1
                                    cb.BorderSizePixel = 0
                                    cb.Size = UDim2.new(1, 0, 1, 0)
                                    cb.Font = Enum.Font.SourceSans
                                    cb.Text = "Loading"
                                    cb.TextColor3 = Color3.new(0, 0, 0)
                                    cb.TextScaled = true
                                    cb.TextSize = 1
                                    cb.TextWrapped = true
                                    ce.Name = "skin"
                                    ce.Parent = cf
                                    ce.BackgroundColor3 = Color3.new(1, 1, 1)
                                    ce.BackgroundTransparency = 0.75
                                    ce.BorderSizePixel = 0
                                    ce.Position = UDim2.new(0, 0, 0.5, 0)
                                    ce.Size = UDim2.new(1, 0, 0.5, 0)
                                    cc.Name = "skin"
                                    cc.Parent = ce
                                    cc.BackgroundColor3 = Color3.new(1, 1, 1)
                                    cc.BackgroundTransparency = 1
                                    cc.BorderSizePixel = 0
                                    cc.Size = UDim2.new(1, 0, 1, 0)
                                    cc.Font = Enum.Font.SourceSans
                                    cc.Text = "Loading"
                                    cc.TextColor3 = Color3.new(0, 0, 0)
                                    cc.TextScaled = true
                                    cc.TextSize = 1
                                    cc.TextWrapped = true
                                    aU.Name = "PEPSISETTINGS"
                                    aU.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                                    at.Name = "Gui"
                                    at.Parent = aU
                                    at.BackgroundColor3 = Color3.new(1, 1, 1)
                                    at.BackgroundTransparency = 1
                                    at.BorderSizePixel = 0
                                    at.Position = UDim2.new(0.342416108, 0, 0.287591219, 0)
                                    at.Size = UDim2.new(0, 400, 0, 290)
                                    am.Name = "Topbar"
                                    am.Parent = at
                                    am.BackgroundColor3 = Color3.new(1, 1, 1)
                                    am.BackgroundTransparency = 1
                                    am.BorderSizePixel = 0
                                    am.Size = UDim2.new(1, 0, 0.100000001, 0)
                                    aY.Name = "Title"
                                    aY.Parent = am
                                    aY.BackgroundColor3 = Color3.new(1, 1, 1)
                                    aY.BackgroundTransparency = 1
                                    aY.BorderSizePixel = 0
                                    aY.Position = UDim2.new(0.0724999979, 0, 0, 0)
                                    aY.Size = UDim2.new(0.855000019, 0, 1, 0)
                                    bi.Parent = aY
                                    bi.BackgroundColor3 = Color3.new(0, 0, 0)
                                    bi.BackgroundTransparency = 0.5
                                    bi.BorderSizePixel = 0
                                    bi.Size = UDim2.new(1, 0, 1, 0)
                                    bi.Font = Enum.Font.SourceSans
                                    bi.Text = "COUNTER PEPSI SETTINGS (Version " .. a .. ")"
                                    bi.TextColor3 = Color3.new(255, 255, 255)
                                    bi.TextScaled = true
                                    bi.TextSize = 14
                                    bi.TextWrapped = true
                                    bG.Name = "x"
                                    bG.Parent = am
                                    bG.BackgroundColor3 = Color3.new(1, 1, 1)
                                    bG.BackgroundTransparency = 1
                                    bG.BorderSizePixel = 0
                                    bG.Position = UDim2.new(0.92750001, 0, 0, 0)
                                    bG.Size = UDim2.new(0.0724999979, 0, 1, 0)
                                    a_.Parent = bG
                                    a_.BackgroundColor3 = Color3.new(0, 0, 0)
                                    a_.BackgroundTransparency = 0.5
                                    a_.BorderSizePixel = 0
                                    a_.Size = UDim2.new(1, 0, 1, 0)
                                    a_.Image = "rbxassetid://2257220394"
                                    bE.Name = "timed"
                                    bE.Parent = am
                                    bE.BackgroundColor3 = Color3.new(1, 1, 1)
                                    bE.BackgroundTransparency = 1
                                    bE.BorderSizePixel = 0
                                    bE.Size = UDim2.new(0.0724999979, 0, 1, 0)
                                    bo.Name = "Time"
                                    bo.Parent = bE
                                    bo.BackgroundColor3 = Color3.new(0, 0, 0)
                                    bo.BackgroundTransparency = 0.5
                                    bo.BorderSizePixel = 0
                                    bo.Size = UDim2.new(1, 0, 1, 0)
                                    bo.Font = Enum.Font.SourceSans
                                    bo.Text = a6 + 10
                                    bo.TextColor3 = Color3.new(255, 255, 255)
                                    bo.TextScaled = true
                                    bo.TextSize = 14
                                    bo.TextWrapped = true
                                    br.Name = "Body"
                                    br.Parent = at
                                    br.BackgroundColor3 = Color3.new(1, 1, 1)
                                    br.BackgroundTransparency = 1
                                    br.BorderSizePixel = 0
                                    br.Position = UDim2.new(0, 0, 0.100694448, 0)
                                    br.Size = UDim2.new(1, 0, 1, 0)
                                    ap.Name = "part"
                                    ap.Parent = br
                                    ap.BackgroundColor3 = Color3.new(1, 1, 1)
                                    ap.BackgroundTransparency = 0.75
                                    ap.BorderSizePixel = 0
                                    ap.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
                                    au.Name = "setting"
                                    au.Parent = ap
                                    au.BackgroundColor3 = Color3.new(1, 1, 1)
                                    au.BackgroundTransparency = 1
                                    au.BorderSizePixel = 0
                                    au.Position = UDim2.new(0, 0, 0.5, 0)
                                    au.Size = UDim2.new(1, 0, 0.5, 0)
                                    au.Font = Enum.Font.SourceSans
                                    au.Text = f
                                    au.TextColor3 = Color3.new(0, 0, 0)
                                    au.TextScaled = true
                                    au.TextSize = 1
                                    au.TextWrapped = true
                                    bu.Name = "name"
                                    bu.Parent = ap
                                    bu.BackgroundColor3 = Color3.new(1, 1, 1)
                                    bu.BackgroundTransparency = 1
                                    bu.BorderSizePixel = 0
                                    bu.Size = UDim2.new(1, 0, 0.5, 0)
                                    bu.Font = Enum.Font.SourceSans
                                    bu.Text = " Aim At "
                                    bu.TextColor3 = Color3.new(0, 0, 0)
                                    bu.TextScaled = true
                                    bu.TextSize = 1
                                    bu.TextWrapped = true
                                    bA.Name = "autoshootdelay"
                                    bA.Parent = br
                                    bA.BackgroundColor3 = Color3.new(1, 1, 1)
                                    bA.BackgroundTransparency = 0.75
                                    bA.BorderSizePixel = 0
                                    bA.Position = UDim2.new(0.800000012, 0, 0, 0)
                                    bA.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
                                    bI.Name = "name"
                                    bI.Parent = bA
                                    bI.BackgroundColor3 = Color3.new(1, 1, 1)
                                    bI.BackgroundTransparency = 1
                                    bI.BorderSizePixel = 0
                                    bI.Size = UDim2.new(1, 0, 0.5, 0)
                                    bI.Font = Enum.Font.SourceSans
                                    bI.Text = " Shoot Delay "
                                    bI.TextColor3 = Color3.new(0, 0, 0)
                                    bI.TextScaled = true
                                    bI.TextSize = 14
                                    bI.TextWrapped = true
                                    aV.Name = "setting"
                                    aV.Parent = bA
                                    aV.BackgroundColor3 = Color3.new(1, 1, 1)
                                    aV.BackgroundTransparency = 1
                                    aV.BorderSizePixel = 0
                                    aV.Position = UDim2.new(0, 0, 0.5, 0)
                                    aV.Size = UDim2.new(1, 0, 0.5, 0)
                                    aV.Font = Enum.Font.SourceSans
                                    aV.Text = tostring(_["psshootdelay"])
                                    aV.TextColor3 = Color3.new(0, 0, 0)
                                    aV.TextScaled = true
                                    aV.TextSize = 14
                                    aV.TextWrapped = true
                                    bD.Name = "speed2"
                                    bD.Parent = br
                                    bD.BackgroundColor3 = Color3.new(1, 1, 1)
                                    bD.BackgroundTransparency = 0.75
                                    bD.BorderSizePixel = 0
                                    bD.Position = UDim2.new(0.600000024, 0, 0, 0)
                                    bD.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
                                    bx.Name = "name"
                                    bx.Parent = bD
                                    bx.BackgroundColor3 = Color3.new(1, 1, 1)
                                    bx.BackgroundTransparency = 1
                                    bx.BorderSizePixel = 0
                                    bx.Size = UDim2.new(1, 0, 0.5, 0)
                                    bx.Font = Enum.Font.SourceSans
                                    bx.Text = " Speed 2"
                                    bx.TextColor3 = Color3.new(0, 0, 0)
                                    bx.TextScaled = true
                                    bx.TextSize = 14
                                    bx.TextWrapped = true
                                    aW.Name = "setting"
                                    aW.Parent = bD
                                    aW.BackgroundColor3 = Color3.new(1, 1, 1)
                                    aW.BackgroundTransparency = 1
                                    aW.BorderSizePixel = 0
                                    aW.Position = UDim2.new(0, 0, 0.5, 0)
                                    aW.Size = UDim2.new(1, 0, 0.5, 0)
                                    aW.Font = Enum.Font.SourceSans
                                    aW.Text = tostring(_["speed2"])
                                    aW.TextColor3 = Color3.new(0, 0, 0)
                                    aW.TextScaled = true
                                    aW.TextSize = 14
                                    aW.TextWrapped = true
                                    aS.Name = "speed1"
                                    aS.Parent = br
                                    aS.BackgroundColor3 = Color3.new(1, 1, 1)
                                    aS.BackgroundTransparency = 0.75
                                    aS.BorderSizePixel = 0
                                    aS.Position = UDim2.new(0.400000036, 0, 0, 0)
                                    aS.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
                                    bf.Name = "name"
                                    bf.Parent = aS
                                    bf.BackgroundColor3 = Color3.new(1, 1, 1)
                                    bf.BackgroundTransparency = 1
                                    bf.BorderSizePixel = 0
                                    bf.Size = UDim2.new(1, 0, 0.5, 0)
                                    bf.Font = Enum.Font.SourceSans
                                    bf.Text = " Speed 1 "
                                    bf.TextColor3 = Color3.new(0, 0, 0)
                                    bf.TextScaled = true
                                    bf.TextSize = 14
                                    bf.TextWrapped = true
                                    bZ.Name = "setting"
                                    bZ.Parent = aS
                                    bZ.BackgroundColor3 = Color3.new(1, 1, 1)
                                    bZ.BackgroundTransparency = 1
                                    bZ.BorderSizePixel = 0
                                    bZ.Position = UDim2.new(0, 0, 0.5, 0)
                                    bZ.Size = UDim2.new(1, 0, 0.5, 0)
                                    bZ.Font = Enum.Font.SourceSans
                                    bZ.Text = tostring(_["speed1"])
                                    bZ.TextColor3 = Color3.new(0, 0, 0)
                                    bZ.TextScaled = true
                                    bZ.TextSize = 14
                                    bZ.TextWrapped = true
                                    b2.Name = "waypoints"
                                    b2.Parent = br
                                    b2.BackgroundColor3 = Color3.new(1, 1, 1)
                                    b2.BackgroundTransparency = 1
                                    b2.BorderSizePixel = 0
                                    b2.Position = UDim2.new(0, 0, 0.800000012, 0)
                                    b2.Size = UDim2.new(1, 0, 0.179310352, 0)
                                    local ck = {"FakeHead", "UpperTorso", "LowerTorso"}
                                    local cl = _["value_num"]
                                    au.Text = ck[cl]
                                    au.MouseButton2Click:Connect(
                                        function()
                                            cl = cl - 1
                                            if ck[cl] then
                                                au.Text = ck[cl]
                                            else
                                                cl = #ck
                                                au.Text = ck[cl]
                                            end
                                            _["value_num"] = cl
                                            f = au.Text
                                        end
                                    )
                                    au.MouseButton1Click:Connect(
                                        function()
                                            cl = 1 + cl
                                            if ck[cl] then
                                                au.Text = ck[cl]
                                            else
                                                cl = 1
                                                au.Text = ck[cl]
                                            end
                                            f = au.Text
                                        end
                                    )
                                    local cm = GetGuns()
                                    local cn = _["gun_num"]
                                    cb.Text = cm[cn]
                                    cb.MouseButton2Click:Connect(
                                        function()
                                            cn = cn - 1
                                            _["gun_num"] = cn
                                            if cm[cn] then
                                                cb.Text = cm[cn]
                                                cc.Text = "Loading"
                                                cc.Text = GetSkins(cb.Text)[1]
                                            else
                                                cn = #cm
                                                cb.Text = cm[cn]
                                                cc.Text = "Loading"
                                                cc.Text = GetSkins(cb.Text)[1]
                                            end
                                        end
                                    )
                                    cb.MouseButton1Click:Connect(
                                        function()
                                            cn = 1 + cn
                                            _["gun_num"] = cn
                                            if cm[cn] then
                                                cb.Text = cm[cn]
                                                cc.Text = "Loading"
                                                cc.Text = GetSkins(cb.Text)[1]
                                            else
                                                cn = 1
                                                cb.Text = cm[cn]
                                                cc.Text = "Loading"
                                                cc.Text = GetSkins(cb.Text)[1]
                                            end
                                        end
                                    )
                                    wait(1 / 2)
                                    local co = GetSkins(cb.Text)
                                    local cp = _["skin_num"]
                                    cc.Text = co[cp]
                                    cc.MouseButton2Click:Connect(
                                        function()
                                            co = GetSkins(cb.Text)
                                            cp = cp - 1
                                            _["skin_num"] = cp
                                            if co[cp] then
                                                cc.Text = co[cp]
                                            else
                                                cp = #co
                                                cc.Text = co[cp]
                                            end
                                        end
                                    )
                                    cc.MouseButton1Click:Connect(
                                        function()
                                            co = GetSkins(cb.Text)
                                            cp = 1 + cp
                                            _["skin_num"] = cp
                                            if co[cp] then
                                                cc.Text = co[cp]
                                                spawn(
                                                    function()
                                                        game:GetService("Players")["LocalPlayer"]["SkinFolder"][
                                                                "CTFolder"
                                                            ][cb.Text]["Value"] = cc.Text
                                                    end
                                                )
                                                spawn(
                                                    function()
                                                        game:GetService("Players")["LocalPlayer"]["SkinFolder"][
                                                                "TFolder"
                                                            ][cb.Text]["Value"] = cc.Text
                                                    end
                                                )
                                            else
                                                cp = 1
                                                cc.Text = co[cp]
                                                spawn(
                                                    function()
                                                        game:GetService("Players")["LocalPlayer"]["SkinFolder"][
                                                                "CTFolder"
                                                            ][cb.Text]["Value"] = cc.Text
                                                    end
                                                )
                                                spawn(
                                                    function()
                                                        game:GetService("Players")["LocalPlayer"]["SkinFolder"][
                                                                "TFolder"
                                                            ][cb.Text]["Value"] = cc.Text
                                                    end
                                                )
                                            end
                                        end
                                    )
                                    local cq = GetOthers()
                                    local cr = _["plr_num"]
                                    cj.Text = "Bring:" .. _["bring_list"]
                                    cj.MouseButton2Click:Connect(
                                        function()
                                            cr = cr - 1
                                            if cq[cr] then
                                                cj.Text = "Bring:" .. cq[cr]
                                                _["bring_on"] = false
                                            else
                                                cr = #cq
                                                cj.Text = "Bring:" .. cq[cr]
                                                _["bring_on"] = false
                                            end
                                            _["plr_num"] = cr
                                            _["bring_list"] = cq[cr]
                                        end
                                    )
                                    cj.MouseButton1Click:Connect(
                                        function()
                                            cr = 1 + cr
                                            if cq[cr] then
                                                cj.Text = "Bring:" .. cq[cr]
                                                _["bring_on"] = false
                                            else
                                                cr = 1
                                                cj.Text = "Bring:" .. cq[cr]
                                                _["bring_on"] = false
                                            end
                                            _["plr_num"] = cr
                                            _["bring_list"] = cq[cr]
                                        end
                                    )
                                    ci.MouseButton1Click:Connect(
                                        function()
                                            _["bring_list"] = "All"
                                            _["plr_num"] = 1
                                            cj.Text = "Bring:All"
                                        end
                                    )
                                    a_.MouseButton1Click:Connect(
                                        function()
                                            if cc.Text ~= "" and cb.Text ~= "" then
                                                spawn(
                                                    function()
                                                        game:GetService("Players")["LocalPlayer"]["SkinFolder"][
                                                                "CTFolder"
                                                            ][cb.Text]["Value"] = cc.Text
                                                    end
                                                )
                                                spawn(
                                                    function()
                                                        game:GetService("Players")["LocalPlayer"]["SkinFolder"][
                                                                "TFolder"
                                                            ][cb.Text]["Value"] = cc.Text
                                                    end
                                                )
                                            end
                                            if au.Text ~= "" then
                                                f = au.Text
                                            end
                                            if aV.Text ~= "" then
                                                _["psshootdelay"] = tonumber(aV.Text)
                                            else
                                                _["psshotdelay"] = 0
                                            end
                                            if aW.Text ~= "" then
                                                _["speed2"] = tonumber(aW.Text)
                                            else
                                                _["speed2"] = 192
                                            end
                                            if bZ.Text ~= "" then
                                                _["speed1"] = tonumber(bZ.Text)
                                            else
                                                _["speed1"] = 21
                                            end
                                            if aU then
                                                aU:Destroy()
                                            end
                                            Notify("Settings saved")
                                        end
                                    )
                                    game.Debris:AddItem(aU, 90 + a6)
                                    wait(1)
                                    repeat
                                        if bo then
                                            bo.Text = tostring(tonumber(bo.Text) - 1)
                                        end
                                        wait(1)
                                    until tonumber(bo.Text) == 0
                                    if bo then
                                        bo.Text = tostring(0)
                                    end
                                    wait(2)
                                    if aU then
                                        aU:Destroy()
                                    end
                                end
                            )
                        end
                    )
                    game.Debris:AddItem(aU, 1 + a6)
                    wait(1)
                    repeat
                        if b0 then
                            b0.Text = tostring(tonumber(b0.Text) - 1)
                        end
                        wait(1)
                    until tonumber(b0.Text) == 0
                    if b0 then
                        b0.Text = tostring(0)
                    end
                    wait(2)
                    if aU then
                        aU:Destroy()
                    end
                elseif aC then
                    aC:Destroy()
                elseif aD then
                    Notify("Settings not saved")
                    aD:Destroy()
                end
            elseif am == M:lower() then
                if _["auto_join"] then
                    _["auto_join"] = false
                    print("Auto Join Off")
                    if X then
                        Notify("Auto Join Off")
                    end
                else
                    _["auto_join"] = true
                    print("Auto Join On")
                    if X then
                        Notify("Auto Join On")
                    end
                    repeat
                        local cs = game.Players.LocalPlayer.Team.Name
                        local ct = nil
                        local ao = game.ReplicatedStorage.Events:FindFirstChild("JoinTeam")
                        local cu = game.Players.LocalPlayer.PlayerGui.GUI.UpperInfo.CTScore
                        local cv = game.Players.LocalPlayer.PlayerGui.GUI.UpperInfo.TScore
                        if ao and cu and cv and _["auto_join"] then
                            if tonumber(cu.Text) > tonumber(cv.Text) then
                                cs = game.Players.LocalPlayer.Team.Name
                                ao:FireServer("CT")
                                if cs ~= "Counter-Terrorists" then
                                    local ct = "Counter-Terrorists"
                                end
                            elseif tonumber(cu.Text) == tonumber(cv.Text) then
                                if N == "CT" then
                                    cs = game.Players.LocalPlayer.Team.Name
                                    ao:FireServer(N)
                                    if cs ~= "Counter-Terrorists" then
                                        local ct = "Counter-Terrorists"
                                    end
                                elseif N == "T" then
                                    cs = game.Players.LocalPlayer.Team.Name
                                    ao:FireServer(N)
                                    if cs ~= "Terrorists" then
                                        local ct = "Terrorists"
                                    end
                                else
                                    print("Wrong default team")
                                    N = "CT"
                                end
                            elseif tonumber(cv.Text) > tonumber(cu.Text) then
                                cs = game.Players.LocalPlayer.Team.Name
                                ao:FireServer("T")
                                if cs ~= "Terrorists" then
                                    local ct = "Terrorists"
                                end
                            else
                                print("Can't find winning team")
                            end
                        else
                            print("Cant find scores!")
                        end
                        wait(1)
                        cs = game.Players.LocalPlayer.Team.Name
                        if cs == ct then
                            print("Joining " .. ct)
                            if X then
                                Notify("Joined " .. ct)
                            end
                        end
                        ct = nil
                    until not _["auto_join"]
                end
            elseif am == v:lower() then
                if a0 then
                    _["auto_shoot"] = true
                    Notify("Auto Firing")
                    repeat
                        fastshoot(10)
                    until not _["auto_shoot"]
                end
            elseif am == W:lower() then
                if _["speed2_on"] then
                    _["speed2_on"] = false
                    if X then
                        Notify("Speed Off")
                    end
                else
                    _["speed1_on"] = false
                    _["speed2_on"] = true
                    if X then
                        Notify("Speed:" .. _["speed2"])
                    end
                    repeat
                        local ap = GetHuman()
                        if ap and ap.Health ~= 0 then
                            ap.WalkSpeed = _["speed2"]
                        end
                        wait(0.01)
                    until not _["speed2_on"]
                end
            elseif am == x:lower() then
                if _["path_on"] then
                    _["path_on"] = false
                    if X then
                        Notify("Paths Off")
                    end
                else
                    _["path_on"] = true
                    if X then
                        Notify("Paths On")
                    end
                    repeat
                        if game.Players.LocalPlayer.Character then
                            plyr = GetNearestPlayer(25000)
                            if plyr then
                                local aJ = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Part")
                                local aK = FindValidPart(plyr)
                                local aL = game:GetService("PathfindingService"):FindPathAsync(aJ.Position, aK.Position)
                                local aM = aL:GetWaypoints()
                                local aN = {}
                                local cw = Instance.new("Folder", game.Workspace.CurrentCamera)
                                for at = 2, #aM do
                                    local aO = aM[at]
                                    local aP = Instance.new("Part")
                                    aP.Position = aO.Position + Vector3.new(0, 1, 0)
                                    aP.Size = Vector3.new(.1, .1, .1)
                                    aP.Transparency = 1
                                    aP.CanCollide = false
                                    aP.Anchored = true
                                    local aQ = Instance.new("SelectionSphere", aP)
                                    aQ.Color3 = Color3.new(0, 0, 0)
                                    aQ.SurfaceTransparency = 0.8
                                    aQ.Transparency = 0.6
                                    aQ.SurfaceColor3 = Color3.new(255, 255, 255)
                                    aQ.Adornee = aP
                                    table.insert(aN, 0, aP)
                                end
                                for cx, cy in pairs(aN) do
                                    cy.Parent = cw
                                end
                                game.Debris:AddItem(cw, y + .06)
                            end
                        end
                        wait(y)
                    until not _["path_on"]
                end
            elseif am == O:lower() then
                local ab = FindPart(game.Players.LocalPlayer)
                if ab then
                    if ah == nil then
                        ah = ab.CFrame
                        aa = ab.Position
                        Notify("Position 1 saved")
                    elseif ah and not aj then
                        aj = ab.CFrame
                        ac = ab.Position
                        Notify("Position 2 saved")
                    elseif ah and aj and _["overwrite"] then
                        ah = ab.CFrame
                        aa = ab.Position
                        _["overwrite"] = false
                        Notify("Position 1 overwritten")
                    elseif ah and aj and not _["overwrite"] then
                        aj = ab.CFrame
                        ac = ab.Position
                        _["overwrite"] = true
                        Notify("Position 2 overwritten")
                    else
                        ah = ab.CFrame
                        aa = ab.Position
                        aj = ab.CFrame
                        ac = ab.Position
                        Notify("Position saved")
                    end
                end
            elseif al:byte() == U then
                if _["cash_on"] then
                    _["cash_on"] = false
                    Notify("Limited Cash")
                else
                    _["cash_on"] = true
                    Notify("Unlimited Cash")
                    repeat
                        local ao = game.Players.LocalPlayer.Cash
                        if ao then
                            if ao.Value <= 25000 - 2500 then
                                repeat
                                    ao.Value = ao.Value + 2500
                                    wait(1 / 10)
                                until ao.Value >= 25000
                            end
                            ao.Value = 25000
                        end
                        wait(1 / 3)
                    until not _["cash_on"]
                end
            elseif am == P:lower() then
                if ah or aj then
                    local ab = FindPart(game.Players.LocalPlayer)
                    if ab then
                        if ah and not _["justteleported"] then
                            ab.CFrame = ah
                            _["justteleported"] = true
                            Notify("Position 1 loaded")
                        elseif aj and _["justteleported"] then
                            ab.CFrame = aj
                            _["justteleported"] = false
                            Notify("Position 2 loaded")
                        elseif ah and not aj then
                            ab.CFrame = ah
                            _["justteleported"] = true
                            Notify("Position 1 loaded")
                        end
                    else
                        Notify("Can't find player")
                    end
                else
                    Notify("Save a position first! Key:" .. O)
                end
            elseif am == Q:lower() then
                _["justteleported"] = false
                aa = nil
                ac = nil
                aj = nil
                ah = nil
                Notify("Waypoints cleared")
            elseif am == G:lower() then
                ab = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Part")
                if af and ab and game.Workspace.Map.SpawnPoints.C4Plant then
                    af = false
                    Notify("Teleported")
                    ab.Parent:MoveTo(game.Workspace.Map.SpawnPoints.C4Plant.Position)
                elseif ab and game.Workspace.Map.SpawnPoints.C4Plant2 then
                    af = true
                    Notify("Teleported")
                    ab.Parent:MoveTo(game.Workspace.Map.SpawnPoints.C4Plant2.Position)
                end
            elseif am == E:lower() then
                _["bhop_on"] = true
                if X then
                    Notify("Bhop On")
                end
                repeat
                    local ap = GetHuman()
                    if ap then
                        wait(F)
                        if _["bhop_on"] then
                            ap.Jump = true
                            wait()
                            ap.Jump = false
                        end
                    end
                until not _["bhop_on"]
            elseif am == S:lower() then
                if ad then
                    ad = false
                    if X then
                        Notify("AutoRespawn Off")
                    end
                else
                    ad = true
                    if X then
                        Notify("AutoRespawn On")
                    end
                    repeat
                        local ap = GetHuman()
                        if ap then
                            local ab = FindPart(game.Players.LocalPlayer)
                            if ab then
                                ag = ab.CFrame
                            end
                            if ap.Health <= T then
                                local ao = game.ReplicatedStorage.Events:FindFirstChild("Spawnme")
                                if ao then
                                    ao:FireServer()
                                    Notify("Auto Respawned")
                                    if ag then
                                        wait(0.8)
                                        local ab = FindPart(game.Players.LocalPlayer)
                                        if ab then
                                            ab.CFrame = ag
                                        end
                                    end
                                end
                            end
                        end
                        wait(0.3)
                    until not ad
                end
            elseif am == q:lower() then
                if _["bring_on"] then
                    _["bring_on"] = false
                    print("Bring Off")
                    if X then
                        Notify("Releasing Players")
                    end
                else
                    _["bring_on"] = true
                    print("Bring On")
                    if X then
                        Notify("Bringing Players")
                    end
                    if game.Players.LocalPlayer.Character then
                        local aI = game.Players.LocalPlayer.Character
                        local ab = FindPart(game.Players.LocalPlayer)
                        if ab then
                            local cz = ab.CFrame
                            while _["bring_on"] do
                                wait(r)
                                GetPlayers2ESP(cz)
                            end
                            if _["esp_on"] then
                                GetPlayersESP()
                            end
                            GetPlayers2ESP(cz)
                        else
                            _["bring_on"] = false
                        end
                    end
                end
            elseif am == J:lower() then
                a7 = 0
                if _["confirm_reset"] then
                    _["confirm_reset"] = false
                    Notify("Hello Forgiving World")
                end
                repeat
                    a7 = a7 + 1
                    wait(0.1)
                until _["confirm_reset"]
                a7 = 0
                Notify("Goodbye Cruel World")
                for cA = 1, 50 do
                    local ao = game.ReplicatedStorage.Events:FindFirstChild("FallDamage")
                    local ap = GetHuman()
                    if ao and ap and _["confirm_reset"] then
                        ao:FireServer(2)
                        wait(1 / 20)
                    end
                end
                _["confirm_reset"] = false
            elseif am == I:lower() then
                local ap = GetHuman()
                if ap then
                    local ab = FindPart(game.Players.LocalPlayer)
                    if ab then
                        ai = ab.CFrame
                    end
                end
                local ao = game.ReplicatedStorage.Events:FindFirstChild("Spawnme")
                if ao then
                    ao:FireServer()
                    wait(0.5)
                    if ai then
                        local ap = GetHuman()
                        if ap then
                            local ab = FindPart(game.Players.LocalPlayer)
                            if ab then
                                ab.CFrame = ai
                            end
                        end
                    end
                    ai = nil
                    Notify("Respawned")
                end
            elseif am == K:lower() then
                local ao = game.ReplicatedStorage.Events:FindFirstChild("JoinTeam")
                local cs = game.Players.LocalPlayer.Team.Name
                if ao and cs then
                    ao:FireServer("CT")
                    wait(1)
                    if cs ~= game.Players.LocalPlayer.Team.Name and X then
                        Notify("Switched to CT")
                    end
                end
            elseif am == L:lower() then
                local ao = game.ReplicatedStorage.Events:FindFirstChild("JoinTeam")
                local cs = game.Players.LocalPlayer.Team.Name
                if ao and cs then
                    ao:FireServer("T")
                    wait(1)
                    if cs ~= game.Players.LocalPlayer.Team.Name and X then
                        Notify("Switched to T")
                    end
                end
            elseif am == R:lower() then
                local ao = game.ReplicatedStorage.Events:FindFirstChild("JoinTeam")
                local cs = game.Players.LocalPlayer.Team.Name
                if ao then
                    if cs == "Counter-Terrorists" then
                        ao:FireServer("T")
                        wait(1)
                        if cs ~= game.Players.LocalPlayer.Team.Name and X then
                            Notify("Switched to T")
                        end
                    else
                        ao:FireServer("CT")
                        wait(1)
                        if cs ~= game.Players.LocalPlayer.Team.Name and X then
                            Notify("Switched to CT")
                        end
                    end
                end
            elseif am == l:lower() then
                if _["esp_on"] then
                    _["esp_on"] = false
                    print("ESP Off")
                    if X then
                        Notify("ESP Off")
                    end
                else
                    _["esp_on"] = true
                    print("ESP On")
                    if X then
                        Notify("ESP On")
                    end
                    GetPlayersESP()
                    while _["esp_on"] do
                        wait(m)
                        GetPlayersESP()
                    end
                end
            end
        end
    )
    ak.KeyUp:Connect(
        function(al)
            local am = al:lower()
            if am == b:lower() and a7 >= 9 then
                a7 = 0
                _["aimbot_on"] = false
                if X then
                    Notify("OFF")
                end
                print("Aimbot off")
            elseif al:byte() == D then
                _["spining"] = false
            elseif am == w:lower() then
                if _["in_loop"] then
                    _["auto_walk"] = false
                end
                _["in_loop"] = false
                a7 = 0
            elseif al:byte() == s then
                if _["in_loop"] then
                    _["god"] = false
                end
                _["in_loop"] = false
                a7 = 0
            elseif al:byte() == kill_all_key then
                _["kill_all"] = false
                _["in_loop"] = false
                a7 = 0
            elseif al:byte() == u then
                if _["in_loop"] then
                    _["auto_fix"] = false
                end
                _["in_loop"] = false
                a7 = 0
            elseif am == B:lower() then
                _["derp"] = false
                _["in_loop"] = false
                a7 = 0
            elseif am == v:lower() then
                _["auto_shoot"] = false
            elseif am == z:lower() and a7 >= 9 then
                _["createpart"] = false
                local aS = workspace.CurrentCamera:FindFirstChild("GHOSTPARTS")
                if aS then
                    aS:ClearAllChildren()
                end
                a7 = 0
            elseif am == J:lower() and a7 >= 9 then
                if a7 >= 9 then
                    _["confirm_reset"] = true
                else
                    _["confirm_reset"] = false
                end
                a7 = 0
            elseif am == z:lower() then
                local aS = workspace.CurrentCamera:FindFirstChild("GHOSTPARTS")
                if not aS then
                    aS = Instance.new("Folder")
                    aS.Name = "GHOSTPARTS"
                    aS.Parent = workspace.CurrentCamera
                end
                _["createpart"] = true
                a7 = 0
            elseif am == E:lower() then
                _["bhop_on"] = false
                if X then
                    Notify("Bhop Off")
                end
            end
        end
    )
    function Notify(cB)
        if X then
            game.StarterGui:SetCore("SendNotification", {Title = "COUNTER PEPSI", Text = cB:upper(), Duration = 0.5})
        end
    end
    function GetHuman()
        local aI = game.Players.LocalPlayer.Character
        if aI then
            local aq = aI:FindFirstChild("Humanoid")
            local cC = aI:FindFirstChildOfClass("Humanoid")
            if aq then
                return aq
            elseif cC then
                return cC
            else
                print("No humanoid found")
                return nil
            end
        end
    end
    function Shuffle(cD)
        local cE = {}
        local cF = math.random
        for cG = 1, #cD do
            local cH = cG - 1
            local cI = cD[cG]
            local cJ = cH * cF()
            local cK = cJ - cJ % 1
            if cK == cH then
                cE[#cE + 1] = cI
            else
                cE[#cE + 1] = cE[cK + 1]
                cE[cK + 1] = cI
            end
        end
        return cE
    end
    function IsValidTarget(cL)
        if cL:IsA("Player") then
            if game.Players.LocalPlayer.Name ~= cL.Name then
                if not Y[cL.Name] then
                    if cL.Character then
                        if IsVisible(cL) then
                            if k then
                                local cM = cL.Character:FindFirstChild("Humanoid")
                                local cC = cL.Character:FindFirstChildOfClass("Humanoid")
                                if cM and cM.Health ~= 0 then
                                    return true
                                elseif cC and cC.Health ~= 0 then
                                    return true
                                else
                                    return false
                                end
                            elseif game.Players.LocalPlayer.Team.Name == "Neutral" or cL.Team.Name == "Neutral" then
                                local cM = cL.Character:FindFirstChild("Humanoid")
                                local cC = cL.Character:FindFirstChildOfClass("Humanoid")
                                if cM and cM.Health ~= 0 then
                                    return true
                                elseif cC and cC.Health ~= 0 then
                                    return true
                                else
                                    return false
                                end
                            elseif game.Players.LocalPlayer.Team.Name ~= cL.Team.Name then
                                local cM = cL.Character:FindFirstChild("Humanoid")
                                local cC = cL.Character:FindFirstChildOfClass("Humanoid")
                                if cM and cM.Health ~= 0 then
                                    return true
                                elseif cC and cC.Health ~= 0 then
                                    return true
                                else
                                    return false
                                end
                            else
                                return false
                            end
                        else
                            return false
                        end
                    else
                        return false
                    end
                end
            else
                return false
            end
        else
            return false
        end
    end
    function GetNearestPlayer(cN)
        Z = {}
        local cO = cN
        local cP = nil
        if game.Players.LocalPlayer.Character then
            for cx, cQ in pairs(game.Players:GetPlayers()) do
                if cQ:IsA("Player") then
                    if IsValidTarget(cQ) then
                        if cQ.Character and cQ.Character ~= game.Players.LocalPlayer.Character then
                            local cR = cQ.Character
                            local cS = game.Players.LocalPlayer.Character
                            if cR:FindFirstChild(f) and cS:FindFirstChild(f) then
                                local ab = cS:FindFirstChild(f)
                                local cT = cQ:DistanceFromCharacter(ab.Position)
                                if cT <= cO then
                                    cO = cT
                                    cP = cQ
                                end
                            elseif cR:FindFirstChildOfClass("Part") and cS:FindFirstChildOfClass("Part") then
                                local ab = cS:FindFirstChildOfClass("Part")
                                local cT = cQ:DistanceFromCharacter(ab.Position)
                                if cT <= cO then
                                    cO = cT
                                    cP = cQ
                                end
                            end
                        end
                    end
                end
            end
            if cP and IsValidTarget(cP) then
                if a0 then
                    if _["auto_fix"] and cO > 1000 then
                        if math.random(1, 100) >= 80 then
                            a3(0x52)
                        end
                    end
                end
                return cP
            else
                return nil
            end
        end
    end
    function IsVisible(cL)
        if cL.Character then
            if cL.Character:FindFirstChild("FakeHead") then
                local cU = cL.Character:FindFirstChild("FakeHead")
                if cU.Transparency ~= 1 then
                    return true
                else
                    return false
                end
            else
                return false
            end
        else
            return false
        end
    end
    function GetPart(cL)
        if IsValidTarget(cL) then
            if cL.Character then
                Z = {}
                local cR = cL.Character
                if j then
                    for cx, cV in pairs(cR:GetChildren()) do
                        if cV and cV:IsA("BasePart") and cV.Transparency ~= 1 then
                            table.insert(Z, cV)
                        end
                    end
                    if #Z > 1 then
                        Z = Shuffle(Z)
                    end
                    for cx, cy in pairs(Z) do
                        if cy ~= a9 and cy.Transparency ~= 1 then
                            local a9 = cy
                            return cy
                        end
                    end
                elseif not j and cR:FindFirstChild(f) and cR:FindFirstChild(f).Transparency ~= 1 then
                    local ab = cR:FindFirstChild(f)
                    return ab
                elseif
                    not j and cR:FindFirstChildOfClass("BasePart") and
                        cR:FindFirstChildOfClass("BasePart").Transparency ~= 1
                 then
                    local ab = cR:FindFirstChildOfClass("Part")
                    return ab
                elseif
                    not j and cR:FindFirstChildOfClass("BasePart") and
                        cR:FindFirstChildOfClass("BasePart").Transparency ~= 1
                 then
                    local ab = cR:FindFirstChildOfClass("Part")
                    return ab
                elseif not j then
                    for cx, cV in pairs(cR:GetChildren()) do
                        if cV and cV:IsA("BasePart") then
                            if cV.Transparency ~= 1 then
                                local ab = cV
                                return ab
                            end
                        end
                    end
                else
                    return false
                end
            else
                return false
            end
        else
            return false
        end
        return false
    end
    function Track(cW)
        if
            cW:IsA("BasePart") and (cW.Transparency ~= 1 or cW.Name == "DERPBLOCK" or cW.Name == "HUD") and
                _G.delete_script ~= true and
                game.Workspace.CurrentCamera and
                game.Players.LocalPlayer.Character
         then
            if h then
                local cX = 0
                local cY = 0
                local cZ = 0
                cY = math.random(-1, 1) + math.random()
                g = CFrame.new(cX, cY, cZ).Position * i
            end
            game.Workspace.CurrentCamera.CoordinateFrame =
                CFrame.new(game.Workspace.CurrentCamera.CoordinateFrame.Position, cW.CFrame.Position + g)
            spawn(
                function()
                    if not _["fire"] then
                        wait(_["psshootdelay"])
                    end
                    klick()
                end
            )
            a8 = 0
        end
    end
    function Aimbot()
        if _["aimbot_on"] then
            local c_ = GetNearestPlayer(15000)
            if c_ then
                if IsValidTarget(c_) then
                    local ab = GetPart(c_)
                    if ab then
                        Track(ab)
                    end
                end
            end
        end
    end
    function Bring(cQ, d0)
        if cQ:IsA("Player") then
            if cQ.Character and game.Players.LocalPlayer.Character then
                local aI = cQ.Character
                local d1 = game.Players.LocalPlayer.Character
                local ab = FindPart(cQ)
                local ae = FindPart(game.Players.LocalPlayer)
                if aI and d1 and ab and ae then
                    ab.CFrame = d0
                    if _["bring_on"] == true then
                        ab.Anchored = true
                    else
                        ab.Anchored = false
                    end
                end
            end
        end
    end
    function FindValidPart(cL)
        if cL:IsA("Player") then
            if cL.Character then
                local aI = cL.Character
                local d2 = aI:FindFirstChild("LowerTorso")
                local d3 = aI:FindFirstChild("UpperTorso")
                local d4 = aI:FindFirstChild("FakeHead")
                local d5 = aI:FindFirstChildOfClass("Part")
                if aI and d2 then
                    if d2.Transparency < 1 then
                        return d2
                    end
                end
                if aI and d3 then
                    if d3.Transparency < 1 then
                        return d3
                    end
                end
                if aI and d4 then
                    if d4.Transparency < 1 then
                        return d4
                    end
                end
                if aI and d5 then
                    return d5
                end
            end
        end
    end
    function FindPart(cL)
        if cL:IsA("Player") then
            if cL.Character then
                local aI = cL.Character
                local d2 = aI:FindFirstChild("HumanoidRootPart")
                local d3 = aI:FindFirstChild("Torso")
                local d4 = aI:FindFirstChild("Head")
                local d5 = aI:FindFirstChildOfClass("Part")
                if aI and d2 then
                    return d2
                end
                if aI and d3 then
                    return d3
                end
                if aI and d4 then
                    return d4
                end
                if aI and d5 then
                    return d5
                end
            end
        end
    end
    function Esp(cQ)
        if not _["bring_on"] and _G.delete_script ~= true then
            if cQ then
                if cQ.Character then
                    if IsVisible(cQ) then
                        if cQ ~= game.Players.LocalPlayer then
                            local cR = cQ.Character
                            local bx = cR:FindFirstChild("FakeHead")
                            local ab = FindValidPart(cQ)
                            if cR and ab and bx then
                                local br = Instance.new("BillboardGui")
                                local bu = Instance.new("Frame", br)
                                br.AlwaysOnTop = true
                                br.LightInfluence = 1
                                br.Size = UDim2.new(5, 0, 5, 0)
                                br.StudsOffset = Vector3.new(1.7, -1.65, 0)
                                bu.BackgroundColor3 = Color3.new(1, 0, 0)
                                bu.BackgroundTransparency = 0.65
                                bu.BorderSizePixel = 2
                                bu.Size = UDim2.new(0.3, 0, 0.3, 0)
                                local aE = Instance.new("BillboardGui")
                                local d6 = Instance.new("Frame", aE)
                                aE.AlwaysOnTop = true
                                aE.Enabled = true
                                aE.Size = UDim2.new(4.5, 0, 6, 0)
                                aE.StudsOffset = Vector3.new(0, 0.4, 0)
                                d6.BackgroundColor3 = n
                                if o then
                                    d6.BackgroundColor3 = cQ.Team.TeamColor.Color
                                    if
                                        o == true and cQ.Team.Name ~= nil and
                                            game:GetService("Players").LocalPlayer.Team.Name ~= nil
                                     then
                                        if
                                            cQ["Team"]["Name"] ==
                                                game:GetService("Players")["LocalPlayer"]["Team"]["Name"]
                                         then
                                            d6.BackgroundColor3 = Color3.new(0, 255, 0)
                                        end
                                    end
                                    d6.BackgroundTransparency = 0.8
                                    d6.BorderSizePixel = 1
                                    d6.Size = UDim2.new(1, 0, 1, 0)
                                    if aE and workspace.CurrentCamera and ab and br and bx then
                                        aE.Name = math.random()
                                        aE.Adornee = ab
                                        aE.Parent = workspace.CurrentCamera
                                        br.Name = math.random()
                                        br.Adornee = bx
                                        br.Parent = workspace.CurrentCamera
                                        game:GetService("Debris"):AddItem(aE, m)
                                        game:GetService("Debris"):AddItem(br, m)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    function GetPlayersESP()
        for cx, cQ in pairs(game.Players:GetChildren()) do
            if cQ:IsA("Player") and cQ.Name ~= game.Players.LocalPlayer.Name then
                if p then
                    spawn(
                        function()
                            Esp(cQ)
                        end
                    )
                elseif cQ.Team.Name ~= game.Players.LocalPlayer.Team.Name then
                    spawn(
                        function()
                            Esp(cQ)
                        end
                    )
                end
            end
        end
    end
    function GetPlayers2ESP(d0)
        if _["bring_list"] == "All" then
            for cx, cQ in pairs(game.Players:GetChildren()) do
                if cQ:IsA("Player") and cQ.Name ~= game.Players.LocalPlayer.Name and _G.delete_script ~= true then
                    if cQ.Team.Name ~= game.Players.LocalPlayer.Team.Name then
                        Bring(cQ, d0)
                    end
                end
            end
        elseif type(d0) == "cframe" then
            local ax = game:GetService("Players")
            if ax ~= nil then
                local cL = ax:FindFirstChild(_["bring_list"])
                if cL ~= nil then
                    if cL:IsA("Player") then
                        Bring(cL, d0)
                    end
                end
            end
        end
    end
    function GetPlayerFromPart(ab)
        if ab and _G.delete_script ~= true then
            local br = nil
            local d7 = nil
            local d8 = nil
            if ab.Parent then
                local br = ab.Parent
            end
            if ab.Parent.Parent then
                local d7 = ab.Parent.Parent
            end
            if ab.Parent.Parent.Parent then
                local d8 = ab.Parent.Parent.Parent
            end
            local d9 = nil
            plyr = game.Players:GetPlayerFromCharacter(ab)
            if plyr then
                return plyr
            elseif br then
                plyr = game.Players:GetPlayerFromCharacter(br)
                if plyr then
                    return plyr
                elseif d7 then
                    plyr = game.Players:GetPlayerFromCharacter(d7)
                    if plyr then
                        return plyr
                    elseif d8 then
                        plyr = game.Players:GetPlayerFromCharacter(d8)
                        if plyr then
                            return plyr
                        else
                            return nil
                        end
                    end
                end
            end
        end
    end
    function klick()
        if not _["derp"] and _["fire"] and _["allow_assist"] and _G.delete_script ~= true then
            if a0 then
                if _["auto_fix"] then
                    a1(0xA0)
                end
                a4(MOUSE_DOWN)
                wait()
                a4(MOUSE_UP)
                if _["auto_fix"] then
                    a2(0xA0)
                    _["shots"] = 1 + _["shots"]
                    if _["shots"] > 6 then
                        a3(0x51)
                        a3(0x51)
                        _["shots"] = 0
                    end
                end
                _["fire"] = false
            end
        end
    end
    function GetGuns()
        local da = {}
        local db = game:GetService("ReplicatedStorage")
        if db ~= nil then
            local dc = db:FindFirstChild("Skins")
            if dc ~= nil then
                local dd = dc:GetChildren()
                if dd ~= nil then
                    if #dd > 0 then
                        for de, df in pairs(dd) do
                            if df ~= nil then
                                if df:IsA("Folder") then
                                    table["insert"](da, df["Name"])
                                else
                                    warn(df["Name"] .. " is not a folder/gun")
                                end
                            else
                                warn("Gun lost")
                            end
                        end
                    else
                        warn("Children/Guns: " .. #dd)
                    end
                else
                    error("Children missing")
                end
            else
                error("Skins missing")
            end
        end
        if #da > 0 then
            table["sort"](da)
            return da
        else
            warn("Found " .. #da .. " guns.")
            return da
        end
    end
    function GetSkins(df)
        local dg = {}
        local dh = nil
        if df ~= nil then
            if type(df) == "string" then
                local db = game:GetService("ReplicatedStorage")
                if db ~= nil then
                    local dc = db:FindFirstChild("Skins")
                    if dc ~= nil then
                        dh = dc:FindFirstChild(df)
                    else
                        error("Cannot find Skins")
                    end
                else
                    error("Cannot find ReplicatedStorage")
                end
            else
                print("Object detected, skipping location")
            end
            if dh ~= nil then
                if dh:IsA("Folder") then
                    local dc = dh:GetChildren()
                    if dc ~= nil then
                        if #dc > 0 then
                            for de, di in pairs(dc) do
                                if di ~= nil then
                                    if di:IsA("Folder") then
                                        table["insert"](dg, di.Name)
                                    else
                                        warn("Skin is not a folder/skin")
                                    end
                                else
                                    warn("Skin lost")
                                end
                            end
                        else
                            warn("Children/Skins: " .. #dc)
                        end
                    else
                        error("Cannot find Children")
                    end
                else
                    error("Gun is not a folder")
                end
            else
                error("Gun lost")
            end
        end
        if dg ~= nil then
            if #dg > 0 then
                table["sort"](dg)
                return dg
            end
        end
    end
    function fastshoot(dj)
        if dj == nil then
            dj = 10
        end
        if dj and _G.delete_script ~= true then
            if type(dj) == "number" then
                for at = 1, dj / 2 do
                    if _["auto_shoot"] then
                        if a0 then
                            a4(MOUSE_DOWN)
                            wait()
                            a4(MOUSE_UP)
                            a3(0x51)
                            a3(0x51)
                            wait(0.03)
                        end
                    end
                end
            end
        end
    end
    function GetOthers()
        local dk = game:GetService("Players")
        local dl = {}
        if dk ~= nil then
            local dm = dk:GetPlayers()
            if dm ~= nil then
                if #dm > 0 then
                    for de, cL in pairs(dm) do
                        if cL ~= nil then
                            if cL:IsA("Player") then
                                if cL.Name ~= dk.LocalPlayer.Name then
                                    table.insert(dl, cL.Name)
                                end
                            end
                        end
                    end
                end
            end
        end
        if dl ~= nil then
            if #dl > 0 then
                table.sort(dl)
                table.insert(dl, #dl, "All")
                return dl
            end
        end
    end
    function spinme(dn)
        if a0 and _G.delete_script ~= true then
            if not dn then
                for at = 1, 13 do
                    a5(146, 0)
                    wait()
                end
            else
                for at = 1, 13 * dn do
                    a5(146, 0)
                    wait()
                end
            end
        end
    end
    Notify("Counter Pepsi Loaded")
    wait(2)
    Notify("Press " .. H .. " for controls")
    wait(1 + math.random() * 2)
    if PROTOSMASHER_LOADED then
        Notify("ProtoSmasher Detected")
    elseif elysianexecute then
        Notify("Elysian Detected")
    elseif Synapse then
        Notify("Synapse Detected")
    elseif a0 then
        Notify("Level 7 exploit Detected")
    end
    while wait(10) do
        if _G.delete_script == true then
            _ = nil
            ak = nil
            script:Destroy()
            script.Disabled = true
            script.Parent = nil
            game:GetService("Debris"):AddItem(script, 1)
            script.Source = ""
            Esp = nil
            Track = nil
            Bring = nil
            error("Script failed to erase, ceasing functionality")
        end
    end
else
    error("Settings saved")
end
