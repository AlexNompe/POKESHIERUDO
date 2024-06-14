// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function ceil_floor(int, comparison_value){
	if comparison_value > 0
	{
		return floor(int)
	}
	else if comparison_value <= 0
	{
		return ceil(int)
	}
}
function file_read_all_text(_filename) {
    var _buffer = buffer_load(_filename);
    if (!buffer_exists(_buffer))
        return undefined;
    
    if (buffer_get_size(_buffer) == 0)
        return "";
    
    var _result = buffer_read(_buffer, buffer_text);
    buffer_delete(_buffer);
    return _result;
}
function shorten_inventory_text(_string,_max_l)
{
	new_string = _string
	if string_length(_string) > _max_l new_string = string_delete(_string,_max_l,string_length(_string)-_max_l+1)
	
	if string_char_at(new_string,string_length(new_string)) == " " new_string = string_delete(new_string,string_length(new_string),1)
	
	if string_length(_string) > _max_l new_string = string_insert(".",new_string,string_length(new_string)+1)
	
	return new_string
}