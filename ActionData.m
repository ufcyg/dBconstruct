function [actionDataRaw, targetDBeinsatz, mySize] = ActionData(filename)
  disp(strcat("Reading action data...", " - ", ctime(time())));
  actionDataRaw = ReadFile(filename,1);
  disp(strcat("...done.", " - ", ctime(time())));
  
  disp(strcat("Writing header...", " - ", ctime(time())));
  mySize = size(actionDataRaw,1);
  #Preset AktionDB
  targetDBeinsatz = cell(mySize,33);                                              #Import aus ASZPM-Feld
  targetDBeinsatz(1,1) = "EinsatzID";                                             #N/A
  targetDBeinsatz(1,2) = "EinsatzKennungExtern";                                  #N/A
  targetDBeinsatz(1,3) = "EinsatzKennungIntern";                                  #N/A
  targetDBeinsatz(1,4) = "Aktion_ASZPMID";                                        #ID | 1
  targetDBeinsatz(1,5) = "Kundenbetreuer_ASZPMID";                                #KundenbetreuerID | 2
  targetDBeinsatz(1,6) = "KundenbetreuerID";                                      #KundenbetreuerID | 2 --- svenja
  targetDBeinsatz(1,7) = "StandortID";                                            #AnlageID | 4 --- svenja
  targetDBeinsatz(1,8) = "ProbenahmeDurchzuführenFrühestens";                     #Soll-Termin | 6 !!!DATETIME!!!
  targetDBeinsatz(1,9) = "ProbenahmeDurchzuführenSpätestens";                     #N/A !!!DATETIME!!!
  targetDBeinsatz(1,10) = "Auftragsdatum";                                        #Auftragsdatum | 8 !!!DATETIME!!!
  targetDBeinsatz(1,11) = "BearbeitungsstatusID";                                 #BearbeitungsstatusID | 11 --- svenja
  targetDBeinsatz(1,12) = "AuftragsinhaltID";                                     #AuftragsinhaltID | 13 --- svenja
  targetDBeinsatz(1,13) = "Angebotsnummer";                                       #Angebotsnummer | 14
  targetDBeinsatz(1,14) = "LabbaseArtikelnummerID";                               #Positionsnummern aus Angebot | 15 --- N/A
  targetDBeinsatz(1,15) = "ZusätzlicheLabbaseArtikelnummern";                     #N/A
  targetDBeinsatz(1,16) = "Bestellnummer";                                        #N/A
  targetDBeinsatz(1,17) = "ProbenartID";                                          #ProbenartID | 19 --- svenja
  targetDBeinsatz(1,18) = "UntersuchungsgrundID";                                 #UntersuchungsartID | 21 ---svenja
  targetDBeinsatz(1,19) = "BemerkungKundenbetreuer";                              #Durchgeführte Maßnahmen / Durchführung-Bemerkung | 22
  targetDBeinsatz(1,20) = "BemerkungDisponent";                                   #Durchführung-Bemerkung
  targetDBeinsatz(1,21) = "BemerkungProbenehmer";                                 #Durchführung-Bemerkung
  targetDBeinsatz(1,22) = "MieterInfo";                                           #N/A (immer "Ja") | 23
  targetDBeinsatz(1,23) = "DurchführungTermin";                                   #Termin der Durchführung | 29 !!!DATETIME!!!
  targetDBeinsatz(1,24) = "EinsatzstatusID";                                      #AktionsstatusID | 37 ---svenja
  targetDBeinsatz(1,25) = "BemerkungenNächsterSchritt";                           #Bemerkungen / nächster Schritt | 38
  targetDBeinsatz(1,26) = "BemerkungenNächsterSchrittID";                         #BemerkungenNächsterSchrittID | 39 ---svenja
  targetDBeinsatz(1,27) = "ErgebnisinLegionellenKBE100ml";                        #Ergebnis in KBE/100 ml | 45
  targetDBeinsatz(1,28) = "ErgebnisAndereParameter";                              #Ergebnis andere Parameter | 46
  targetDBeinsatz(1,29) = "Hochrisikobereich";                                    #N/A (immer "Nein")
  targetDBeinsatz(1,30) = "ExportZielID";                                         #N/A (immer "Kein Export")
  targetDBeinsatz(1,31) = "ExportDurchgeführtAm";                                 #N/A
  targetDBeinsatz(1,32) = "InfoAlteDatenbank";                                    #Mieter-Info / Mieter Info Erledigt  | 24 | 25
  disp(strcat("...done", " - ", ctime(time())));
  disp(strcat("Writing action data to array...", " - ", ctime(time())));
  #Transfer Aktion Data
  for i= 2:1:mySize
    targetDBeinsatz(i,4) = actionDataRaw(i,1);
    targetDBeinsatz(i,5) = actionDataRaw(i,2);
    #targetDBeinsatz(i,6) = actionDataRaw(i,2); #mapping
    #targetDBeinsatz(i,7) = actionDataRaw(i,4); #mapping
    targetDBeinsatz(i,8) = ConvertDateTimeField(actionDataRaw(i,6));
    targetDBeinsatz(i,10) = actionDataRaw(i,9);
    #targetDBeinsatz(i,11) = actionDataRaw(i,11); #mapping
    #targetDBeinsatz(i,12) = actionDataRaw(i,13); #mapping
    targetDBeinsatz(i,13) = actionDataRaw(i,14);
    #targetDBeinsatz(i,14) = actionDataRaw(i,15); #mibi
    #targetDBeinsatz(i,17) = actionDataRaw(i,19); #mapping
    #targetDBeinsatz(i,18) = actionDataRaw(i,21); #mapping
    targetDBeinsatz(i,19) = actionDataRaw(i,22);
    targetDBeinsatz(i,20) = actionDataRaw(i,22);
    targetDBeinsatz(i,21) = actionDataRaw(i,22);
    targetDBeinsatz(i,22) = "Ja";
    targetDBeinsatz(i,23) = ConvertDateTimeField(actionDataRaw(i,29));
    #targetDBeinsatz(i,24) = actionDataRaw(i,37); #mapping 
    targetDBeinsatz(i,25) = actionDataRaw(i,38);
    #targetDBeinsatz(i,26) = actionDataRaw(i,39); #mapping
    targetDBeinsatz(i,27) = actionDataRaw(i,45);
    targetDBeinsatz(i,28) = actionDataRaw(i,46);
    targetDBeinsatz(i,29) = "Nein";
    targetDBeinsatz(i,30) = "Kein Export";
    targetDBeinsatz(i,32) = strcat(actionDataRaw(i,24)," | ", actionDataRaw(i,25));
    disp(strcat("Entry:"," ",num2str(i)));
  endfor
  disp(strcat("...done.", " - ", ctime(time())));
endfunction
