script_name('DriftCam')
script_author('Nasif')
require "lib.moonloader"

driftCam = false;

function main()
	while not isSampAvailable() do wait(100) end
	sampRegisterChatCommand("driftcam", driftCmdToggler)
	while true do
		wait(0)
			if isCharInAnyCar(PLAYER_PED) then			

				local carhandle = storeCarCharIsInNoSave ( PLAYER_PED )
				local idcar = getCarModel ( carhandle )
				if(driftCam) then
					setVehicleCameraTweak(idcar, 1.2, 1.0, 0.20)
				end

				else
						resetVehicleCameraTweak()
				end
		end 
end 

function driftCmdToggler()
	driftCam = not driftCam
end