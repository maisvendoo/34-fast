--------------------------------------------------------------------------------
--	Тестовый сценарий по маршруту Ростовский Узел
--	проверяем ботов и систему команд
--------------------------------------------------------------------------------

-- Задаем время
setTime("12:00")

--------------------------------------------------------------------------------
-- Расставляем поезда
--------------------------------------------------------------------------------

-- Электровоз ЭП1м-735 на 9 пути станции Ростов Берег
train1 = TrainData.new()
--train1.name = "EP1m-735"
--train1.config = "ep1m-735"
train1.name = "ВЛ60пк-1543"
train1.config = "vl60pk-1543"
train1.traj = "track_rg_p9e"
train1.coord = 30.0
train1.dir = -1

setTrain(train1)

-- Состав пассажирского поезда 34 (переименовать после сцепки!!!)
train2 = TrainData.new()
train2.name = "0000"
train2.config = "train-T65_17"
train2.traj = "track_rg_p1"
train2.coord = 580.0
train2.dir = 1

setTrain(train2)

-- Пассажирский поезд 574 на 2 пути станции Ростов Главный
train574 = TrainData.new()
train574.name = "574"
train574.config = "vl60pk-1543-T65_17"
train574.traj = "track_rg_p2"
train574.coord = 550.0
train574.dir = 1
train574.auto = true

setTrain(train574)

-- Грузовой поезд 2001 с порожними хопперами на 4 пути станции Тимашевский обход
train2001 = TrainData.new()
train2001.name = "2001"
train2001.config = "vl60k-1737-frEmpties"
train2001.traj = "track_tim_p4"
train2001.coord = 20.0
train2001.dir = -1
train2001.auto = true

setTrain(train2001)

-- Грузовой наливной поезд 2003 на 6 пути станции Тимашевский обход
train2003 = TrainData.new()
train2003.name = "2003"
train2003.config = "vl60k-2003"
train2003.traj = "track_tim_p6"
train2003.coord = 20.0
train2003.dir = -1
train2003.auto = true

setTrain(train2003)

-- Грузовой поезд 2005 на 2 пути станции Тимашевский обход
train2005 = TrainData.new()
train2005.name = "2005"
train2005.config = "vl60k-2005"
train2005.traj = "track_tim_p2"
train2005.coord = 20.0
train2005.dir = -1
train2005.auto = true

setTrain(train2005)

-- Пассажирский поезд 501 на станции Староминская-Тимашевская
train501 = TrainData.new()
train501.name = "501"
train501.config = "vl60pk-1543-Dvuxetagki_rzd"
train501.traj = "track_strm_p1"
train501.coord = 20.0
train501.dir = -1
train501.auto = true

setTrain(train501)

--------------------------------------------------------------------------------
--	Автоматическое управление ДЦ на промежуточных станциях - свозной пропуск
--------------------------------------------------------------------------------

-- Заречная
local Zar_CHP1 = "track_rg_7-ch_zar"
local Zar_CHU2 = "track_zar-1352km_nd-2"

local Zar_NP2 = "track_zar-1352km_1-chd"
local Zar_NU1 = "track_zar_chd-2"

-- Пропуск четных
setTrigger(autoApproach(Zar_CHP1, Zar_CHU2, 1))
-- Пропуск нечетных
setTrigger(autoApproach(Zar_NP2, Zar_NU1, -1))

-- Блок-пост2
local BP2_CHP2 = Zar_CHU2
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
setTrigger(autoApproach(BP7_NP2, BP2_NU1, -1))

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

-- Пропуск четных
setTrigger(autoApproach(VSP_CHP2, VSP_CHU1, 1))
-- Пропуск нечетных
setTrigger(autoApproach(VSP_NP2, VSP_NU1, -1))

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
local PRD_CHU1 = "track_kan-brh_chd-21"

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

-- Поезд 2001 отправляем в 12:05 в сторону Брюховецкой
setTimeTrigger("+00:05", actionBuildRoute(train2001.traj, TIM_BRH_DEP_POINT, train2001.dir))

-- Маршрут отправления грузового поезда 2005
function train2005_dep(train_name, traj_name, is_busy)

	-- Если поезд 2001 освободил 2-й участок удаления
	if not is_busy and train_name == "2001" and traj_name == TIM_NU2 then
		-- Строим маршрут 2003-му
		buildRoute(train2005.traj, TIM_BRH_DEP_POINT, train2005.dir)
		-- Просим удалить этот триггер
		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(train2005_dep)

-- Маршрут отправления грузового поезда 2003
function train2003_dep(train_name, traj_name, is_busy)

	-- Если поезд 2005 освободил 2-й участок удаления + 1 блок-участок
	if not is_busy and train_name == "2005" and traj_name == "track_brh-tim_12-14" then
		-- Строим маршрут 2001-му
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

--------------------------------------------------------------------------------
-- Строим маневровый маршрут себе любимому
--------------------------------------------------------------------------------

setTimeTrigger("+00:02", actionBuildRoute(train1.traj, "track_rg_p2d", train1.dir))

-- Строим маршрут приема в Батайске
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
setTimeTrigger("+00:20", actionBuildRoute(train1.traj, Zar_CHU2, train1.dir))

-- Строим маршрут пропуска 34 в Батайске
function train34_apr(train_name, traj_name, is_busy)

	-- Если поезд 574 на приближении к Батайску
	if is_busy and train_name == "34" and traj_name == BP2_CHU1 then
		-- Строим маршрут 574-му на пропуск
		buildRoute(BP2_CHU1, "track_bat-7km_nb-2", 1)
		-- Просим удалить этот триггер
		return TRIG_DELETE
	end
	
	-- Сохраняем тригер, пока он не отработал
	return TRIG_SAFE
end

setTrigger(train34_apr)