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