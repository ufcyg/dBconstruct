## loads previously installed io-package for file handling, reads xml data stream to variable and returns read data
function rawData = ReadFile(filename,sheet)
  pkg load io;
  disp(filename);
  fid = xlsopen(filename); disp("file opened");
  x.convert_uft=1;
  rawData = xls2oct(fid,sheet,:,x); 
  fid = xlsclose(fid); disp("file closed");
endfunction