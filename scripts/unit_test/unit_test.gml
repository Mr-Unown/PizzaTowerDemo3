var str = argument0;

var len = string_length(str);
var found_decimal = false;
var initial_digit_index = string_char_at(str, 1) == "-" ? 2 : 1;
for(var i = initial_digit_index; i <= len; ++i) {
    var c = string_ord_at(str, i);
    if c == ord(".") {
        if found_decimal 
		{
            return false;
        }
        initial_digit_index = i + 1;
        found_decimal = true;
        continue;
    } else if c <= ord("9") && c >= ord("0") {
        continue;
    } else {
        return false;
   }
}
return i != initial_digit_index;