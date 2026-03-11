FullHouseHelper = LibStub("AceAddon-3.0"):NewAddon("FullHouseHelper", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0" );

local ADD1Name = "Cult Fanatic"

local ADD2Name = "Cult Adherent"
local ADD2_5Name = "Empowered Adherent"

local ADD3Name = "Reanimated Fanatic"

local ADD4Name = "Reanimated Adherent"

local ADD5Name = "Deformed Fanatic"

local timer1 = nil
local timer1Inc = 0
local timer2 = nil
local timer2Inc = 0
local timer3 = nil
local timer3Inc = 0
local timer4 = nil
local timer4Inc = 0

local timer5 = nil
local timer5Inc = 0


local NeooptionTable = {
		name	= "FullHouseHelper",
		handler = FullHouseHelper,
		type	= 'group',
		args = {

						show 	=	{
									name = "Show",
									desc = "Shows the summon request list",
									type = "execute",
									func = function ()
										
										if InCombatLockdown() == nil or InCombatLockdown() == false then
											FHHFrame:Show()
									
										end 
									end
						},
						resetpos = {
						name = "Reset Position",
									desc = "Resets position of the frame to center",
									type = "execute",
									func = function ()
										if InCombatLockdown() == nil then
											FHHFrame:ClearAllPoints()
FHHFrame:SetPoint("CENTER",UIParent, "CENTER")
										end 
									end
						
						}

				}
			}

LibStub("AceConfig-3.0"):RegisterOptionsTable("FullHouseHelper", NeooptionTable, {"fhh"})

function FullHouseHelper:ClearData()
	timer5Inc = 0
	FullHouseHelper:CancelTimer(timer5,true)
	FHHFrame.add5.time:SetText("Last Targeted: "..timer5Inc)

	timer4Inc = 0
	FullHouseHelper:CancelTimer(timer4,true)
	FHHFrame.add4.time:SetText("Last Targeted: "..timer4Inc)

	timer3Inc = 0
	FullHouseHelper:CancelTimer(timer3,true)
	FHHFrame.add3.time:SetText("Last Targeted: "..timer3Inc)

	timer2Inc = 0
	FullHouseHelper:CancelTimer(timer2,true)
	FHHFrame.add2.time:SetText("Last Targeted: "..timer2Inc)

	timer1Inc = 0
	FullHouseHelper:CancelTimer(timer1,true)


	timer1 = nil

	timer2 = nil
	timer3 = nil

	timer4 = nil


	timer5 = nil
	FHHFrame.add1.time:SetText("Last Targeted: "..timer1Inc)

	FHHFrame.add1.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
	FHHFrame.add2.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
	FHHFrame.add3.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
	FHHFrame.add4.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
	FHHFrame.add5.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
end
function FullHouseHelper:ResetData()
	
	FHHFrame.add1.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
	FHHFrame.add2.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
	FHHFrame.add3.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
	FHHFrame.add4.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
	FHHFrame.add5.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
end
function FullHouseHelper:Timer5Func()

	timer5Inc = timer5Inc + 1
	FHHFrame.add5.time:SetText("Last Targeted: "..timer5Inc)
end
function FullHouseHelper:Timer4Func()

	timer4Inc = timer4Inc + 1
	FHHFrame.add4.time:SetText("Last Targeted: "..timer4Inc)
end
function FullHouseHelper:Timer3Func()

	timer3Inc = timer3Inc + 1
	FHHFrame.add3.time:SetText("Last Targeted: "..timer3Inc)
end
function FullHouseHelper:Timer2Func()

	timer2Inc = timer2Inc + 1
	FHHFrame.add2.time:SetText("Last Targeted: "..timer2Inc)
end
function FullHouseHelper:Timer1Func()

	timer1Inc = timer1Inc + 1
	FHHFrame.add1.time:SetText("Last Targeted: "..timer1Inc)
end
function FullHouseHelper:OnInitialize()
		-- Called when the addon is loaded

		-- Print a message to the chat frame
	FHHFrame.add1:SetAttribute("macrotext", "/cleartarget\n/targetexact "..ADD1Name)
	FHHFrame.add1.unit:SetAttribute("useparent-macrotext", true)
	FHHFrame.add1.unit:SetAttribute("*type1","macro")
	FHHFrame.add1.unit.name:SetText(ADD1Name)

	FHHFrame.add2.sub1:SetAttribute("macrotext", "/cleartarget\n/targetexact "..ADD2Name)
	FHHFrame.add2.sub2:SetAttribute("macrotext", "/cleartarget\n/targetexact "..ADD2_5Name)
	FHHFrame.add2.sub1.unit:SetAttribute("useparent-macrotext", true)
	FHHFrame.add2.sub1.unit:SetAttribute("*type1","macro")
	FHHFrame.add2.sub1.unit.name:SetText(ADD2Name)

	FHHFrame.add2.sub2.unit2:SetAttribute("useparent-macrotext", true)
	FHHFrame.add2.sub2.unit2:SetAttribute("*type1","macro")
	FHHFrame.add2.sub2.unit2.name:SetText(ADD2_5Name)

	FHHFrame.add3:SetAttribute("macrotext", "/cleartarget\n/targetexact "..ADD3Name)
	FHHFrame.add3.unit:SetAttribute("useparent-macrotext", true)
	FHHFrame.add3.unit:SetAttribute("*type1","macro")
	FHHFrame.add3.unit.name:SetText(ADD3Name)

	FHHFrame.add4:SetAttribute("macrotext", "/cleartarget\n/targetexact "..ADD4Name)
	FHHFrame.add4.unit:SetAttribute("useparent-macrotext", true)
	FHHFrame.add4.unit:SetAttribute("*type1","macro")
	FHHFrame.add4.unit.name:SetText(ADD4Name)

	FHHFrame.add5:SetAttribute("macrotext", "/cleartarget\n/targetexact "..ADD5Name)
	FHHFrame.add5.unit:SetAttribute("useparent-macrotext", true)
	FHHFrame.add5.unit:SetAttribute("*type1","macro")
	FHHFrame.add5.unit.name:SetText(ADD5Name)

	self:RegisterEvent("PLAYER_TARGET_CHANGED")


end
function FullHouseHelper:OnEnable()
		-- Called when the addon is enabled

		-- Print a message to the chat frame
		self:Print("OnEnable Event Fired: Hello, again ;)")
end

function FullHouseHelper:OnDisable()
		-- Called when the addon is disabled
end
function FullHouseHelper:Add1ResetFound ()
	FHHFrame.add1.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
end
function FullHouseHelper:Add2ResetFound ()
	FHHFrame.add2.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
end
function FullHouseHelper:Add3ResetFound ()
	FHHFrame.add3.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
end
function FullHouseHelper:Add4ResetFound ()
	FHHFrame.add4.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
end
function FullHouseHelper:Add5ResetFound ()
	FHHFrame.add5.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-NotReady")
end
function FullHouseHelper:PLAYER_TARGET_CHANGED(eventName, cause)
	--print(UnitName ("target"))
	local targetName, real = UnitName ("target")
	if targetName == ADD1Name then
		FHHFrame.add1.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-Ready")
		if timer1 == nil then
			timer1 = FullHouseHelper:ScheduleRepeatingTimer("Timer1Func", 1 )
		else
			timer1Inc = 0
		end
	end
	if targetName == ADD2Name or targetName == ADD2_5Name then
		FHHFrame.add2.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-Ready")
		if timer2 == nil then
			timer2 = FullHouseHelper:ScheduleRepeatingTimer("Timer2Func", 1 )
		else
			timer2Inc = 0
		end
	end
	if targetName == ADD3Name then
		FHHFrame.add3.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-Ready")
		if timer3 == nil then
			timer3 = FullHouseHelper:ScheduleRepeatingTimer("Timer3Func", 1 )
		else
			timer3Inc = 0
		end
	end
	if targetName == ADD4Name then
		FHHFrame.add4.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-Ready")
		if timer4 == nil then
			timer4 = FullHouseHelper:ScheduleRepeatingTimer("Timer4Func", 1 )
		else
			timer4Inc = 0
		end
	end
	if targetName == ADD5Name then
		FHHFrame.add5.found:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-Ready")
		if timer5 == nil then
			timer5 = FullHouseHelper:ScheduleRepeatingTimer("Timer5Func", 1 )
		else
			timer5Inc = 0
		end
	end
end