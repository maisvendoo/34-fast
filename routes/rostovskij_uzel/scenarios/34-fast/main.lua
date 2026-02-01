--------------------------------------------------------------------------------
--	Тестовый сценарий по маршруту Ростовский Узел
--	проверяем ботов и систему команд
--------------------------------------------------------------------------------

-- Задаем время
setTime("12:00")

--------------------------------------------------------------------------------
-- Расставляем поезда
--------------------------------------------------------------------------------
require('spawn_trains')

--------------------------------------------------------------------------------
--	Автоматическое управление ДЦ на промежуточных станциях - свозной пропуск
--------------------------------------------------------------------------------

-- Заречная
local Zar_CHP2 = "track_rg_9-7"
local Zar_CHU1 = "track_zar-1352km_nd-2"

local Zar_NP2 = "track_zar-1352km_1-chd"
local Zar_NU1 = "track_zar_chd-2"

-- Пропуск четных
setTrigger(autoApproach(Zar_CHP2, Zar_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(Zar_NP2, Zar_NU1, -1))

-- Блок-пост2
local BP2_CHP2 = "track_zar-1352km_nd-2"
local BP2_CHU1 = "track_bat_606-chrm"

local BP2_NP1 = "track_1352km_n2r-chrd"
local BP2_NU2 = "track_zar-1353km_1-chd"

-- Пропуск четных
setTrigger(autoApproach(BP2_CHP2, BP2_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(BP2_NP1, BP2_NU2, -1))

-- Блок-пост 7 км
local BP7_CHP2 = "track_bat-7km_nb-2"
local BP7_CHU2 = "track_7km-vis_chd-5"

local BP7_NP2 = "track_7km-vis_2-4"
local BP7_NU1 = "track_bat-7kmx2_1-ns"

-- Пропуск четных
setTrigger(autoApproach(BP7_CHP2, BP7_CHU2, 1))
-- Пропуск нечетных
setTrigger(autoApproach(BP7_NP2, BP7_NU1, -1))

-- Высочино
local Vis_CHP2 = "track_7km-vis_3-1"
local Vis_CHU1 = "track_vis-vasp_chd-11"

local Vis_NP2 = "track_vis-vasp_2-4"
local Vis_NU1 = "track_7km-vis_6-nd"

-- Пропуск четных
setTrigger(autoApproach(Vis_CHP2, Vis_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(Vis_NP2, Vis_NU1, -1))

-- Васильево-Петровская
local VSP_CHP2 = "track_vis-vasp_3-1"
local VSP_CHU1 = "track_vasp-orlk_chd-27"

local VSP_NP2 = "track_vasp-orlk_2-4"
local VSP_NU1 = "track_vis-vasp_12-nd"


-- Орловка-Кубанская
local ORL_CHP2 = "track_vasp-orlk_3-1"
local ORL_CHU1 = "track_orlk-strm_chd-21"

local ORL_NP2 = "track_orlk-strm_2-4"
local ORL_NU1 = "track_vasp-orlk_28-nd"

-- Пропуск четных
setTrigger(autoApproach(ORL_CHP2, ORL_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(ORL_NP2, ORL_NU1, -1))

-- Старомиская-Тимашевская
local STM_CHP2 = "track_orlk-strm_3-1"
local STM_CHU1 = "track_strm-alb_chd-21"

local STM_NP2 = "track_strm-alb_2-4"
local STM_NU1 = "track_orlk-strm_22-nd"

-- Пропуск четных
setTrigger(autoApproach(STM_CHP2, STM_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(STM_NP2, STM_NU1, -1))

-- Албаши
local ALB_CHP2 = "track_strm-alb_3-1"
local ALB_CHU1 = "track_alb-der_chd-17"

local ALB_NP2 = "track_alb-der_2-4"
local ALB_NU1 = "track_strm-alb_22-nd"

-- Пропуск четных
setTrigger(autoApproach(ALB_CHP2, ALB_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(ALB_NP2, ALB_NU1, -1))

-- Деревянковка
local DER_CHP2 = "track_alb-der_3-1"
local DER_CHU1 = "track_der-kan_chd-5"

local DER_NP2 = "track_der-kan_2-4"
local DER_NU1 = "track_alb-der_20-nd"

-- Пропуск четных
setTrigger(autoApproach(DER_CHP2, DER_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(DER_NP2, DER_NU1, -1))

-- Каневская
local KAN_CHP2 = "track_der-kan_3-1"
local KAN_CHU1 = "track_kan-prd_chd-7"

local KAN_NP2 = "track_kan-prd_2-4"
local KAN_NU1 = "track_der-kan_6-nd"

-- Пропуск четных
setTrigger(autoApproach(KAN_CHP2, KAN_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(KAN_NP2, KAN_NU1, -1))

-- Придорожная
local PRD_CHP2 = "track_kan-prd_3-1"
local PRD_CHU1 = "track_prd-brh_chd-21"

local PRD_NP2 = "track_prd-brh_2-4"
local PRD_NU1 = "track_kan-prd_8-nd"

-- Пропуск четных
setTrigger(autoApproach(PRD_CHP2, PRD_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(PRD_NP2, PRD_NU1, -1))

-- Брюховецкая
local BRH_CHP2 = "track_prd-brh_3-1"
local BRH_CHU1 = "track_brh-tim_chd-15"

local BRH_NP2 = "track_brh-tim_2-4"
local BRH_NU1 = "track_prd-brh_20-nd"

-- Пропуск четных
setTrigger(autoApproach(BRH_CHP2, BRH_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(BRH_NP2, BRH_NU1, -1))

--------------------------------------------------------------------------------
--	Отправление встречных грузовых с Тимашевского обхода
--------------------------------------------------------------------------------

local TIM_BRH_DEP_POINT = "track_brh-tim_16-nd"
local TIM_NU2 = "track_brh-tim_14-16"

-- Поезд 2005 отправляем в 12:05 в сторону Брюховецкой
setTimeTrigger("+00:05", actionBuildRoute(train2005.traj, TIM_BRH_DEP_POINT, train2005.dir))

-- Маршрут отправления грузового поезда 2001
function train2001_dep(train_name, traj_name, is_busy)

	-- Если поезд 2005 освободил 2-й участок удаления
	if not is_busy and train_name == "2005" and traj_name == TIM_NU2 then
		-- Строим маршрут 2003-му
		buildRoute(train2001.traj, TIM_BRH_DEP_POINT, train2001.dir)
		-- Просим удалить этот триггер
		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(train2001_dep)

-- Маршрут отправления грузового поезда 2003
function train2003_dep(train_name, traj_name, is_busy)

	-- Если поезд 2001 освободил 2-й участок удаления + 1 блок-участок
	if not is_busy and train_name == "2001" and traj_name == "track_brh-tim_12-14" then
		-- Строим маршрут 2003-му
		buildRoute(train2003.traj, TIM_BRH_DEP_POINT, train2003.dir)
		-- Просим удалить этот триггер
		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(train2003_dep)

--------------------------------------------------------------------------------
-- Отправление пассажирского поезда 574
--------------------------------------------------------------------------------

local Near_HM2D = "track_rg_p2d"
local Rg_Zar_Dep_POINT = "track_rg_7-ch_zar"

-- Отправление поезда 574 в 12:13
setTimeTrigger("+00:01", actionBuildRoute(train574.traj, Rg_Zar_Dep_POINT, train574.dir))

-- Строим маршрут пропуска в Батайске
function train574_apr(train_name, traj_name, is_busy)

	-- Если поезд 574 на приближении к Батайску
	if is_busy and train_name == "574" and traj_name == BP2_CHU1 then
		-- Строим маршрут 574-му на пропуск
		buildRoute(BP2_CHU1, "track_bat-7km_nb-2", train574.dir)
		-- Просим удалить этот триггер
		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(train574_apr)

-- Стром маршрут приема под обгон на Василиево-Петровской
function train574_vasp_arr(train_name, traj_name, is_busy)

	-- Если поезд 574 на приближении к Батайску
	if is_busy and train_name == "574" and traj_name == VSP_CHP2 then
		-- Строим маршрут 574-му на пропуск
		buildRoute(VSP_CHP2, "track_vasp_p3", train574.dir)
		-- Просим удалить этот триггер
		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(train574_vasp_arr)

-- Стром маршрут отправления после обгона 34-м на Василиево-Петровской
function train574_vasp_dep(train_name, traj_name, is_busy)

	-- Если поезд 34 покинул участок удаления
	if not is_busy and train_name == "34" and traj_name == VSP_CHU1 then
		-- Строим маршрут 574-му на отправление
		buildRoute("track_vasp_p3", VSP_CHU1, train574.dir)
		-- Просим удалить этот триггер
		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(train574_vasp_dep)

-- Ставим Васильево-Петровскую на автопропуск, после ухода 574-го
function vasp_apr(train_name, traj_name, is_busy)

	-- Если поезд 574 покинул участок удаления
	if not is_busy and train_name == "574" and traj_name == VSP_CHU1 then
		
		-- Включаем автоматику
		setTrigger(autoApproach(VSP_CHP2, VSP_CHU1, 1))
		setTrigger(autoApproach(VSP_NP2, VSP_NU1, -1))

		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(vasp_apr)

--------------------------------------------------------------------------------
-- Строим маневровый маршрут себе любимому
--------------------------------------------------------------------------------

-- Строим поездной маршрут с 9 пути Ростов Берег до сигнала НМ2Д
setTimeTrigger("+00:02", actionBuildRoute(train1.traj, "track_rg_p2d", train1.dir))

-- Строим маневровый маршрут от НМ2Д до 1 пути Ростов Главный
function my_loco_shnt(train_name, traj_name, is_busy)
	
	if not is_busy and train_name == "574" and traj_name == Rg_Zar_Dep_POINT then
		-- Ставим себе стрелки по маршруту до первого пути Ростова Главного
		setSwitchsAlongRoute("track_rg_p2d", "track_rg_p1-93", train1.dir)
		-- Включаем пригласительный
		openCallSignal("rg_НМ2Д", train1.dir)		
		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(my_loco_shnt)

-- Маршрут отправления поезду 34 с 1 пути Ростов Главный
setTimeTrigger("+00:20", actionBuildRoute(train2.traj, "track_rg_7-ch_zar", train2.dir))

-- Строим маршрут пропуска 34 по Батайску
function train34_bat_apr(train_name, traj_name, is_busy)

	-- Если поезд 34 на приближении к Батайску
	if is_busy and train_name == "34" and traj_name == BP2_CHU1 then
		-- Строим маршрут 574-му на пропуск
		buildRoute(BP2_CHU1, "track_bat-7km_nb-2", 1)
		-- Просим удалить этот триггер
		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(train34_bat_apr)

-- Строим маршрут пропуска 34 по Васильево-Петровской
function train34_vasp_apr(train_name, traj_name, is_busy)

	-- Если поезд 34 на приближении к Васильево-Петровской
	if is_busy and train_name == "34" and traj_name == VSP_CHP2 then
		-- Строим маршрут 574-му на пропуск
		buildRoute(VSP_CHP2, VSP_CHU1, 1)
		-- Просим удалить этот триггер
		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(train34_vasp_apr)

-- Маршрут приема 34 по Тимашевской-1
function train34_tim_arr(train_name, traj_name, is_busy)

	-- Если поезд 34 на приближении
	if is_busy and train_name == "34" and traj_name == "track_brh-tim_3-1" then

		-- принимаемся на 9 путь
		buildRoute("track_brh-tim_1-n", "track_tim_p9n", 1)

		return TRIG_DELETE

	end	

	return TRIG_SAFE

end

setTrigger(train34_tim_arr)

-- Маршрут приема 574 по Тимашевской-1
function train574_tim_arr(train_name, traj_name, is_busy)

	-- Если поезд 34 на приближении
	if not is_busy and train_name == "34" and traj_name == "track_tim_33x2-37" then

		-- принимаемся на 6 путь
		buildRoute("track_brh-tim_1-n", "track_tim_p6n", 1)

		return TRIG_DELETE

	end	

	return TRIG_SAFE

end

setTrigger(train574_tim_arr)

-- Маршрут приема 2005 на путь 1Т по Батайску
function train2005_bat_arr(train_name, traj_name, is_busy)

	-- Если поезд 2005 на приближении
	if is_busy and train_name == "2005" and traj_name == "track_bat-7kmx2_2-1" then

		-- принимаемся на 4 путь
		buildRoute("track_bat-7kmx2_2-1", "track_bat_p1t", -1)

		return TRIG_DELETE

	end	

	return TRIG_SAFE

end

setTrigger(train2005_bat_arr)

-- Маршрут приема 2001 на путь 2Т по Батайску
function train2001_bat_arr(train_name, traj_name, is_busy)

	
	if not is_busy and train_name == "2005" and traj_name == "track_bat_p1t-382" then

		-- принимаемся на 4 путь
		buildRoute("track_bat-7kmx2_2-1", "track_bat_p2t", -1)

		return TRIG_DELETE

	end	

	return TRIG_SAFE

end

setTrigger(train2001_bat_arr)

-- Маршрут приема 2003 на путь 3Т по Батайску
function train2003_bat_arr(train_name, traj_name, is_busy)

	
	if not is_busy and train_name == "2001" and traj_name == "track_bat_p2t-384" then

		-- принимаемся на 4 путь
		buildRoute("track_bat-7kmx2_2-1", "track_bat_p3t", -1)

		return TRIG_DELETE

	end	

	return TRIG_SAFE

end

setTrigger(train2003_bat_arr)

--------------------------------------------------------------------------------
-- Занимаемся поездом 501
--------------------------------------------------------------------------------

-- Маршрут отправления со станции Староминская-Тимашевская
setTimeTrigger("+00:10", actionBuildRoute(train501.traj, "track_orlk-strm_22-nd", train501.dir))

-- Маршрут пропуска по Батайску
function train501_bat_apr(train_name, traj_name, is_busy)

	-- Если поезд 501 на приближении
	if is_busy and train_name == "501" and traj_name == "track_bat-7kmx2_2-1" then

		buildRoute("track_bat-7kmx2_2-1", "track_zar-1352km_1-chd", train501.dir)

		return TRIG_DELETE

	end	

	return TRIG_SAFE

end

setTrigger(train501_bat_apr)

-- Маршрут пропуска по 2 пути станции Васильево-Петровская (которая пока не на автоматике!!!)
function train501_vasp_apr(train_name, traj_name, is_busy)

	-- Если поезд 501 на приближении
	if is_busy and train_name == "501" and traj_name == VSP_NP2 then

		buildRoute(getNextTraj(VSP_NP2, train501.dir), "track_vasp_p2", train501.dir)
		buildRoute("track_vasp_p2", VSP_NU1, train501.dir)

		return TRIG_DELETE

	end	

	return TRIG_SAFE

end

setTrigger(train501_vasp_apr)

-- Маршрут приема по Ростов Главный
function train501_rg_arr(train_name, traj_name, is_busy)

	-- Если поезд 2005 на приближении
	if is_busy and train_name == "501" and traj_name == Zar_NU1 then

		buildRoute(Zar_NU1, "track_rg_p1", train501.dir)

		return TRIG_DELETE

	end	

	return TRIG_SAFE

end

setTrigger(train501_rg_arr)