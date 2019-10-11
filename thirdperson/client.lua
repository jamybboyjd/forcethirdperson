local forceThirdperson = true
Citizen.CreateThread(function()

    while true do
        Wait(1)
        local currentView = GetFollowPedCamViewMode()
        if forceThirdperson then
            if currentView ~= 1 then
                SetFollowPedCamViewMode(1)
                Citizen.Trace(GetFollowPedCamViewMode())
          end
        end
    end
end)