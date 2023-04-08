Config = {}

Config.target = 'qtarget' -- Accessible Targets: bt-target, qtarget, ox_target, qb-target
Config.MainGrave = {
  -- CLIENT SIDE

	    Cooldown = 10, -- in minutes
	    PedName = "u_m_y_zombie_01",       
		PedPos = vector4(208.05,-166.15,56.35, 247.15),
        Camerapos = vector3(209.55, -168.55, 56.32),
		Playerpos = vector4(209.39, -166.52, 56.35, 68.8),
        Coffin1pos = vector4(-1726.99, -225.09, 56.27, 353.2896),
		Coffin2pos = vector4(-1790.23, -252.25, 47.04, 318.19),
		Coffin3pos = vector4(-1793.79, -207.37, 53.08, 297.37),
		Coffin4pos = vector4(-1780.75, -284.79, 45.71, 327.63),
		Coffin5pos = vector4(-1699.31, -220.75, 57.68, 177.29),


  -- SERVER SIDE

       Enable2itemsReward = false,
       ItemReward = "weapon_pistol",
	   ItemReward_amount = 1,
	   Item2Reward = "water", -- if is a Enable2itemsReward = true
	   Item2Reward_amount = 1,
	   Item3Reward = "burger",
	   Item3Reward_amount = 1,
	   Item4Reward = "ammo-9", -- if is a Enable2itemsReward = true
	   Item4Reward_amount = 1,
	   ItemMoneyReward = 500,
	   Item2MoneyReward = 100,
	   Item3MoneyReward = 50,
	   Item4MoneyReward = 10,


  -- Notifications 

     Cam1 = "Słuchaj Uważnie.",
     Cam2 = "Udaj się na Cmentarz i Okranij 5 Nagrobków.",
     Cam3 = "Widzę cię tu za 10 minut.",
     HaveItem = "Otrzymałeś Zapłatę za Rzeczy",
	 NotHaveItem = "Nie masz Rzeczy które mnie zainteresują",

}