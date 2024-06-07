// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function reformat_text_by_effects(text_array, effects=[]){
	var input_string = text_array;
	var output_array = [];
	
	var temp_str = "";
	var is_tag = false;
	var tag = "";
	
	for (var i = 1; i <= string_length(input_string); i++) {
	    var char = string_char_at(input_string, i);
	    
	    if (char == "<") 
		{
	        is_tag = true;
	        tag = "";
	    } 
		else if (char == ">") 
		{
	        is_tag = false;
	        array_push(output_array, tag);
	    }
		else 
		{
	        if (is_tag) 
			{
	            tag += char;
	        } 
			else 
			{
	            temp_str += char;
	        }
	    }
	}
	
	text_modifier_ar = string_split_ext(text_array,effects)
	for (var k = 0; k < array_length(text_modifier_ar); k++)
	{
		if k mod 2 == 1
		{
			if k < array_length(output_array) text_modifier_ar[k] = [text_modifier_ar[k], output_array[k]]
		}
	}
	return text_modifier_ar
}