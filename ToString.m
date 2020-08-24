##converts given numeric value to string if necessary
function value = ToString(value)
  if isnumeric(value)
    value = num2str(value);
  endif
endfunction