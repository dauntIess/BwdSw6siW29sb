if library.flags["knife_type"] == "Default" then
                game.ReplicatedStorage.Viewmodels["v_CT Knife"]:Destroy()
                game.ReplicatedStorage.Viewmodels["v_T Knife"]:Destroy()
            else
                game.ReplicatedStorage.Viewmodels["v_".. library.flags["knife_type"]]:Destroy()
            end
            local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
            game:GetObjects('rbxassetid://9765743046')[1].Parent = Model1
            Model = game.ReplicatedStorage.Viewmodels.Model
            for _, Child in pairs(Model:GetChildren()) do
                Child.Parent = Model.Parent
            end
            Model:Destroy()
            local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
            game:GetObjects('rbxassetid://9765743046')[1].Parent = Model1
            Model = game.ReplicatedStorage.Viewmodels.Model
            for _, Child in pairs(Model:GetChildren()) do
                Child.Parent = Model.Parent
            end
            Model:Destroy()
            if library.flags["knife_type"] == "Default" then
                game.ReplicatedStorage.Viewmodels["funeral's Butterfly"].Name = "v_CT Knife"
                game.ReplicatedStorage.Viewmodels["funeral's Butterfly"].Name = "v_T Knife"
                game.ReplicatedStorage.Viewmodels["v_CT Knife"]["Butterfly_LHandle"].TextureID = "rbxassetid://841632940"
                game.ReplicatedStorage.Viewmodels["v_CT Knife"]["Butterfly_RHandle"].TextureID = "rbxassetid://841632940"
                game.ReplicatedStorage.Viewmodels["v_CT Knife"]["Butterfly_Blade"].TextureID = "rbxassetid://841632940"
                game.ReplicatedStorage.Viewmodels["v_T Knife"]["Butterfly_LHandle"].TextureID = "rbxassetid://841632940"
                game.ReplicatedStorage.Viewmodels["v_T Knife"]["Butterfly_RHandle"].TextureID = "rbxassetid://841632940"
                game.ReplicatedStorage.Viewmodels["v_T Knife"]["Butterfly_Blade"].TextureID = "rbxassetid://841632940"
            else
                game.ReplicatedStorage.Viewmodels["funeral's Butterfly"].Name = "v_".. library.flags["knife_type"]
                game.ReplicatedStorage.Viewmodels["v_"..library.flags["knife_type"]]["Butterfly_LHandle"].TextureID = "rbxassetid://841632940"
                game.ReplicatedStorage.Viewmodels["v_"..library.flags["knife_type"]]["Butterfly_RHandle"].TextureID = "rbxassetid://841632940"
                game.ReplicatedStorage.Viewmodels["v_"..library.flags["knife_type"]]["Butterfly_Blade"].TextureID = "rbxassetid://841632940"
            end
