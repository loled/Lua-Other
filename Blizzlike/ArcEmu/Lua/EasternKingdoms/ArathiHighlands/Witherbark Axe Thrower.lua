--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: zdroid9770; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function WitherbarkAxeThrower_OnEnterCombat(Unit,Event)
local choice = math.random(1,2)
	if(choice == 1) then
		Unit:FullCastSpellOnTarget(4974, Unit:GetMainTank())
		Unit:FullCastSpellOnTarget(10277, Unit:GetMainTank())
	elseif(choice == 2) then
		Unit:FullCastSpellOnTarget(10277, Unit:GetMainTank())
	end
end

RegisterUnitEvent(2554, 1, "WitherbarkAxeThrower_OnEnterCombat")