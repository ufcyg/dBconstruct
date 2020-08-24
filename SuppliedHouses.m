##creates cell array for a single entry of suppliedHouses
function targetDBsupplied = SuppliedHouses(siteData)
  targetDBsupplied = struct();
  disp(strcat("Creating suppliedHousesDB...", " - ", ctime(time())));
  for i = 2:1:siteData.size
    disp(strcat("Entry:",num2str(i)))
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i)))) = cell(21,10);
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(1,1) = "VersorgtesHausID";                                   #VersorgtesHausID
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(1,2) = "VersorgtesHausKennungExtern";                        #VersorgtesHausKennungExtern
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(1,3) = "VersorgtesHausKennungIntern";                        #VersorgtesHausKennungIntern
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(1,4) = "SortIndex";                                          #SortIndex
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(1,5) = "StandortID";                                         #StandortID  // sitedata anlageID 1
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(1,6) = "Straﬂe";                                             #Straﬂe
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(1,7) = "Hausnummer";                                         #Hausnummer
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(1,8) = "PLZ";                                                #PLZ 14
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(1,9) = "Ort";                                                #Ort 15
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(1,10) = "Bemerkung";                                         #Bemerkung
    
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(2,5) = siteData.raw(i,1){};                                  #StandortID aus StandortStammdaten
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(2,8) = siteData.raw(i,21){};                                 #PLZ 14 aus StandortStammdaten
    targetDBsupplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))))(2,9) = siteData.raw(i,22){};                                 #Ort 15 aus StandortStammdaten
  endfor
  disp(strcat("...done", " - ", ctime(time())));
endfunction
