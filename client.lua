--================================================================================================
-- Do not modify below. If you can change the density of traffic, go to config.lua
-- Nie modyfikuj poniżej. Jeśli możesz zmienić wartości zagęszczenia ruchu, przejdź do config.lua
--================================================================================================


local function SetTrafficDensity(density)
    SetParkedVehicleDensityMultiplierThisFrame(density)
    SetVehicleDensityMultiplierThisFrame(density)
    SetRandomVehicleDensityMultiplierThisFrame(density)
end

local function SetPedDensity(density)
    SetPedDensityMultiplierThisFrame(density)
    SetScenarioPedDensityMultiplierThisFrame(density, density)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        --- VEHICLE TRAFFIC ---
        SetTrafficDensity(Config.Vehicle / 100)

        --- PEOPLE TRAFFIC ---
        SetPedDensity(Config.People / 100)
    end
end)