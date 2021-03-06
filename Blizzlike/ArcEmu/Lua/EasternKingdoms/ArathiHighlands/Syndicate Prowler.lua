--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: Ascendscripting; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function SyndicateProwler_OnSpawn(Unit, Event)
	Unit:CastSpell(1784)
end

function SyndicateProwler_OnEnterCombat(Unit, Event)
	Unit:RegisterEvent("Disarm", 13000, 1)
	Unit:RegisterEvent("SinisterStrike", 6000, 1)
end

function Disarm(Unit, Event)
	Unit:FullCastSpellOnTarget(6713, plr)
end

function SinisterStrike(Unit, Event)
	Unit:FullCastSpellOnTarget(14873, plr)
end

function SyndicateProwler_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function SyndicateProwler_OnDied(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2588, 18, "SyndicateProwler_OnSpawn")
RegisterUnitEvent(2588, 1, "SyndicateProwler_OnEnterCombat")
RegisterUnitEvent(2588, 2, "SyndicateProwler_OnLeaveCombat")
RegisterUnitEvent(2588, 4, "SyndicateProwler_OnDied")