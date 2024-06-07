randomize()

global.menus = array_create(16,false)

global.no_menus_open = true

global.start_pos = array_create(999, 0)
global.temp_data = array_create(999, [0,0])

global.press_z_safe = false

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

load()