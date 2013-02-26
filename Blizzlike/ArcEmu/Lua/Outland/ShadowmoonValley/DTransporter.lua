--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function DTransporter_OnEnterCombat(Unit,Event)
	Unit:FullCastSpellOnTarget(38858, Unit:GetClosestPlayer())
	Unit:RegisterEvent("DTransporter_Spell1Shoot", 33000, 0)
	Unit:RegisterEvent("DTransporter_Spell2Shoot", 20000, 0)
end

function DTransporter_Spell1Shoot(Unit,Event)
	Unit:FullCastSpellOnTarget(38861, Unit:GetClosestPlayer())
end

function DTransporter_Spell2Shoot(Unit,Event)
	Unit:FullCastSpellOnTarget(38859, Unit:GetClosestPlayer())
end

function DTransporter_OnDeath(Unit,Event)
	Unit:RemoveEvents()
end

function DTransporter_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(23188, 1, "DTransporter_OnEnterCombat")
RegisterUnitEvent(23188, 2, "DTransporter_OnLeaveCombat")
RegisterUnitEvent(23188, 4, "DTransporter_OnDeath")