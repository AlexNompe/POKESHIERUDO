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