randomize()

global.menus = array_create(16,false)

global.no_menus_open = true

global.start_pos = array_create(999, 0)
global.temp_data = array_create(999, [0,0])

global.press_z_safe = false
global.press_x_safe = false

layer_set_visible(layer_get_id("Menus"), true)

//STATS
global.badges = 0
global.msh_wiki = 1
global.time = 0
global.character_name = "ASH"
global.money = 0
global.character_id = floor(random_range(10000,99999))

//SETTINGS
global.fun = false
global.text_speed = 2
global.lang = "en_us"

global.text = ""
global.choice_pool = []
global.choice = 0

global.translated = 0
global.saved_translations = []
global.saved_translation_ids = []
load_translation()

var func = function()
{
	show_debug_message("lol")
}

var hehee = function()
{
	show_debug_message("hwhee")
}

var huhuuu = function()
{
	show_message("huhuuu")
}

global.inventory = 
{
	"items":
	[
		["key_test_item_0","key_test_item_0_desc",1,method_get_index(func)],
		["key_test_item_1","key_test_item_1_desc",99,method_get_index(hehee)],
		["key_test_item_2","key_test_item_2_desc",999,method_get_index(huhuuu)]
	],
	"players":
	[
		[spr_DEBUG_character_down,"Smol",6,[22,22],global.character_name,global.character_id,"male",204,[11,11,11,13]],
		[spr_DEBUG_character_down,"Big",6,[22,22],global.character_name,global.character_id,"male",204,[11,11,11,13]]
	]
}

load()