function targetDBsupplied = SuppliedHouses(siteData)
  disp(strcat("Writing header...", " - ", ctime(time())));
  targetDBsupplied = cell(siteData.size*20+2*20,10);                                      #Versorgte H‰user aus Anlage Feld Objektbezeichnung | 18,19,26
  targetDBsupplied(1,1) = "VersorgtesHausID";                                   #VersorgtesHausID
  targetDBsupplied(1,2) = "VersorgtesHausKennungExtern";                        #VersorgtesHausKennungExtern
  targetDBsupplied(1,3) = "VersorgtesHausKennungIntern";                        #VersorgtesHausKennungIntern
  targetDBsupplied(1,4) = "SortIndex";                                          #SortIndex
  targetDBsupplied(1,5) = "StandortID";                                         #StandortID  // sitedata anlageID 1
  targetDBsupplied(1,6) = "Straﬂe";                                             #Straﬂe
  targetDBsupplied(1,7) = "Hausnummer";                                         #Hausnummer
  targetDBsupplied(1,8) = "PLZ";                                                #PLZ 14
  targetDBsupplied(1,9) = "Ort";                                                #Ort 15
  targetDBsupplied(1,10) = "Bemerkung";                                         #Bemerkung
  disp(strcat("...done", " - ", ctime(time())));
endfunction
