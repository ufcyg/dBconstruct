## when read from xml datetime fields are read as excel timedate IDs and need to be converted by a octave function
function result = ConvertDateTimeField(dateTimeField)
    result = datestr(dateTimeField{},"dd.mm.yy");
endfunction