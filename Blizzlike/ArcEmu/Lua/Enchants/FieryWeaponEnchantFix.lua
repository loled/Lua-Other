--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: Mathix; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function FieryWeaponEnchantFix(effectIndex, spell)
	local procnumber = math.random(1,10)
	if(procnumber = 1) then
		local plr = spell:GetCaster()
		local fieryenemy = plr:GetSelection()
		plr:DealDamage(fieryenemy, 40, 30183)
	end
end

RegisterDummySpell(30183, "FieryWeaponEnchantFix")