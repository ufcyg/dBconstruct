cellarray = cell(5,5);
for j=1:1:size(cellarray,1)
  for i=1:1:size(cellarray,2)
    if i ==3
      if j ==1
        cellarray(j,i) = "d"
      endif
      if j ==2
        cellarray(j,i) = "c"
      endif
      if j ==3
        cellarray(j,i) = "a"
      endif
      if j ==4
        cellarray(j,i) = "e"
      endif
      if j ==5
        cellarray(j,i) = "b"
      endif
    else
      if i!=1
        cellarray(j,i) = betarnd(1,1);
      endif
    endif
  endfor
endfor
