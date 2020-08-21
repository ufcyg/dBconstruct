function string = SmartConcatNotations(fieldOne, fieldTwo)
  string = "";
  if isnumeric(fieldOne)
    fieldOne = num2str(fieldOne);
  end
  if isnumeric(fieldTwo)
    fieldOne = num2str(fieldTwo);
  end
  if isempty(fieldOne)
    if !isempty(fieldTwo)
      string = fieldTwo;
    endif
  else
    if isempty(fieldTwo)
      string = fieldOne;
    else 
      ## concat
      string = strcat(fieldOne, "|", fieldTwo);
    endif
  endif
endfunction
