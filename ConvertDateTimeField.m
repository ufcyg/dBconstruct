function result = ConvertDateTimeField(dateTimeField)
    result = datestr(dateTimeField{},"dd.mm.yy");
endfunction