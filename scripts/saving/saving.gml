// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save(file = "save.ini"){
	ini_open(file)
	ini_write_real("position", 0, o_player.x)
	ini_write_real("position", 1, o_player.y)
	ini_write_real("sprite", 0, o_player.sprite_index)
	ini_write_real("sprite", 1, o_player.image_index)
	ini_write_string("sprite", 2, o_player.sprite_direction)
	ini_write_real("stats", 0, global.badges)
	ini_write_real("stats", 1, global.msh_wiki)
	ini_write_real("stats", 2, global.time)
	ini_write_string("stats", 3, global.character_name)
	ini_write_real("stats", 4, global.money)
	ini_write_real("stats", 5, global.character_id)
	ini_close()
	
	ini_open("userdata.ini")
	ini_write_real("settings", 0, global.text_speed)
	ini_write_real("settings", 1, global.fun)
	ini_close()
	
	save_translation()
}
function load(file = "save.ini"){
	ini_open(file)
	if ini_section_exists("position")
	{
		o_player.x = ini_read_real("position",0,0)
		o_player.y = ini_read_real("position",1,0)
	}
	else 
	{
		ini_close()
		save()
		return 0
	}
	if ini_section_exists("sprite")
	{
		o_player.sprite_index = ini_read_real("sprite",0,0)
		o_player.image_index = ini_read_real("sprite",1,0)
		o_player.sprite_direction = ini_read_string("sprite",2,"down")
	}
	else 
	{
		ini_close()
		save()
		return 0
	}
	if ini_section_exists("stats")
	{
		global.badges = ini_read_real("stats",0,0)
		global.msh_wiki = ini_read_real("stats",1,0)
		global.time = ini_read_real("stats",2,0)
		global.character_name = ini_read_string("stats",3,"ASH")
		global.money = ini_read_real("stats",4,0)
		global.character_id = ini_read_real("stats",5,floor(random_range(10000,99999)))
	}
	else 
	{
		ini_close()
		save()
		return 0
	}
	ini_close()
	
	
	ini_open("userdata.ini")
	if ini_section_exists("settings")
	{
		global.text_speed = ini_read_real("settings",0,2)
		switch (global.text_speed)
		{
			case 3:
				o_settings_menu.save_selection[0] = 0
			break
			case 2:
				o_settings_menu.save_selection[0] = 1
			break
			case 1:
				o_settings_menu.save_selection[0] = 2
			break
		}
		global.fun = ini_read_real("settings",1,0)
		switch (global.fun)
		{
			case false:
				o_settings_menu.save_selection[2] = 5
			break
			case true:
				o_settings_menu.save_selection[2] = 6
			break
		}
	}
	else 
	{
		ini_close()
		save()
		return 0
	}
	ini_close()
}
function save_translation(){
	ini_open("userdata.ini")
	ini_write_real("translation",0,global.translated)
	ini_write_string("translation",1,global.lang)
	ini_close()
}
function load_translation(){
	ini_open("userdata.ini")
	global.translated = ini_read_real("translation",0,0)
	global.lang = ini_read_string("translation",1,"en_us")
	switch (global.lang)
	{
		case "en_us":
			o_settings_menu.save_selection[1] = 3
		break
		case "ru_ru":
			o_settings_menu.save_selection[1] = 4
		break
	}
	ini_close()
}