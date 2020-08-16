function [siteDataRaw, targetDBstandort, mySize] = SiteData(filename)
  disp(strcat("Reading site data...", " - ", ctime(time())));
  #Read Site Data Raw
  siteDataRaw = ReadFile(filename,1);
  disp(strcat("...done", " - ", ctime(time())));
  
  disp(strcat("Writing header...", " - ", ctime(time())));
  mySize = size(siteDataRaw,1);
  #Preset StandortDB
  disp(strcat("Writing header...", " - ", ctime(time())));
  targetDBstandort = cell(mySize,25);                                             #Import aus ASZPM-Feld
  targetDBstandort(1,1) = "StandortID";                                           #N/A
  targetDBstandort(1,2) = "StandortKennungExtern";                                #N/A
  targetDBstandort(1,3) = "StandortKennungIntern";                                #N/A
  targetDBstandort(1,4) = "Anlage_ASZPMID";                                       #AnlageID | 1
  targetDBstandort(1,5) = "LabbaseStandortID";                                    #AuftraggeberID | 3 --- svenja
  targetDBstandort(1,6) = "Rechnungsempf‰nger_LabbaseID";                         #N/A
  targetDBstandort(1,7) = "UsI_LABbaseID";                                        #Usl_LABbaseID | 10
  targetDBstandort(1,8) = "Kunde_LABbaseID";                                      #Kunde_LABbaseID | 14
  targetDBstandort(1,9) = "KundeAlt";                                             #KundeAlt | 15
  targetDBstandort(1,10) = "KundeWechselDatum";                                   #DatumWechselKunde | 17 !!!DATETIME!!!
  targetDBstandort(1,11) = "Objektbezeichnung";                                   #Objektbezeichnung | 18
  targetDBstandort(1,12) = "Straﬂe";                                              #Objektadresse | 19, 26 ist zu priorisieren
  targetDBstandort(1,13) = "Hausnummer";                                          #Hausnummer | 20
  targetDBstandort(1,14) = "PLZ";                                                 #Postleitzahl | 21
  targetDBstandort(1,15) = "Ort";                                                 #Ort | 22
  targetDBstandort(1,16) = "Geb‰udeArtID";                                        #Geb‰udeartID | 28 --- svenja
  targetDBstandort(1,17) = "AnsprechpartnerVOName";                               #[Ansprechpartner/Hausmeister] | 29 ---mibi
  targetDBstandort(1,18) = "AnsprechpartnerVOTelefon";                            #N/A ---mibi
  targetDBstandort(1,19) = "AnsprechpartnerVOEMail";                              #N/A ---mibi
  targetDBstandort(1,20) = "KundenkontaktName";                                   #N/A ---mibi
  targetDBstandort(1,21) = "KundenkontaktTelefon";                                #N/A ---mibi
  targetDBstandort(1,22) = "KundenkontaktEMail";                                  #N/A ---mibi
  targetDBstandort(1,23) = "Bemerkung";                                           #[HV-Kontakt] | 32 ---mibi
  targetDBstandort(1,24) = "KundenbetreuerVorbelegungID";                         #N/A
  targetDBstandort(1,25) = "N‰chsterTermin";                                      #MaxSollTermin | 37 !!!DATETIME!!!
  disp(strcat("...done", " - ", ctime(time())));
  
  disp(strcat("Writing site data to array...", " - ", ctime(time())));
  #Transfer Site Data
  addressFieldOne="";
  addressFieldTwo="";
  reachedNumber = false;
  for i=2:1:mySize
    targetDBstandort(i,4) = siteDataRaw(i,1);
    #targetDBstandort(i,5) = siteDataRaw(i,3); #mapping
    targetDBstandort(i,7) = siteDataRaw(i,10);
    targetDBstandort(i,8) = siteDataRaw(i,14);
    targetDBstandort(i,9) = siteDataRaw(i,15);
    targetDBstandort(i,10) = siteDataRaw(i,17);
    targetDBstandort(i,11) = siteDataRaw(i,18);
    
    #[name,number] = StreetConversion(siteDataRaw(i,19){},siteDataRaw(i,20){},siteDataRaw(i,26){});
    
    #cstreet = inputdlg ({"Straﬂenname","Hausnummer", "Bonusauswahl","Versorgte H‰user"},"Straﬂe, Hausnummer, Bonus, Versorgte H‰user",1,{siteDataRaw(i,19){},siteDataRaw(i,20){},siteDataRaw(i,26){},""});
    #if !isempty(cstreet{1})
    #  targetDBstandort(i,12) =  cstreet{1};
    #endif
    #if !isempty(cstreet{2})
    #  targetDBstandort(i,13) =  cstreet{2};
    #endif
    #if !isempty(cstreet{3})
    #  targetDBsuppliedBuildings(i,1) =  cstreet{3};
    #endif
    
    targetDBstandort(i,14) = siteDataRaw(i,21);
    targetDBstandort(i,15) = siteDataRaw(i,22);
    #targetDBstandort(i,16) = siteDataRaw(i,28); #mapping
    #targetDBstandort(i,17) = siteDataRaw(i,29); #mibi
    #targetDBstandort(i,23) = siteDataRaw(i,32); #mibi
    targetDBstandort(i,25) = ConvertDateTimeField(siteDataRaw(i,37));
    disp(strcat("Entry:"," ",num2str(i)));
  endfor
  disp(strcat("...done.", " - ", ctime(time())));
endfunction
