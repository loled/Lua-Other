--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: zdroid9770; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function ProphetVelen_OnCombat(Unit, Event)
	Unit:RegisterEvent("ProphetVelen_HolyBlast", 15000, 0)
	Unit:RegisterEvent("ProphetVelen_HolyNova", 18000, 0)
	Unit:RegisterEvent("ProphetVelen_HolySmite", 13000, 0)
	Unit:RegisterEvent("ProphetVelen_PrayerofHealing", 20000, 0)
	Unit:RegisterEvent("ProphetVelen_StaffStrike", 12000, 0)
end

function ProphetVelen_HolyBlast(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(59700, 	pUnit:GetMainTank()) 
end

function ProphetVelen_HolyNova(pUnit, Event) 
	pUnit:CastSpell(59701) 
end

function ProphetVelen_HolySmite(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(59703, 	pUnit:GetRandomPlayer(0)) 
end

function ProphetVelen_PrayerofHealing(pUnit, Event) 
	pUnit:CastSpell(59698) 
end

function ProphetVelen_StaffStrike(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(33592, 	pUnit:GetMainTank()) 
end

function ProphetVelen_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function ProphetVelen_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(17468, 1, "ProphetVelen_OnCombat")
RegisterUnitEvent(17468, 2, "ProphetVelen_OnLeaveCombat")
RegisterUnitEvent(17468, 4, "ProphetVelen_OnDied")