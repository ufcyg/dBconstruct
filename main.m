#Cleanup workspace
clc;
clear;
#load needed packages (needs to be installed first)
pkg load io;

#setdebug
buildTrueData = true;

##load all necessary data

# Value Tables
#disp(strcat("Reading value list data...", " - ", ctime(time())));
##reading of every sheet of the 'WerteListe' xlsx file, raw datatype can be accessed by rawarray(y,x), where y=1 is always the header
#filename = "C:\\Users\\10300202\\Desktop\\Praxedo\\DB\\Source\\ValueList.xlsx";
#armaturentyp =  ReadFile(filename,1);
#auftragsinhalt =  ReadFile(filename,2);
#bearbeitungsstatus =  ReadFile(filename,3);
#bemerkung =  ReadFile(filename,4);
#einsatzart =  ReadFile(filename,5);
#einsatzstatus =  ReadFile(filename,6);
#entnahmestelle =  ReadFile(filename,7);
#etage =  ReadFile(filename,8);
#exportziel =  ReadFile(filename,9);
#gebaeudeart =  ReadFile(filename,10);
#kundenbetreuer =  ReadFile(filename,11);
#labbaseArtikelnummer =  ReadFile(filename,12);
#labbaseStandort =  ReadFile(filename,13);
#probenahmeZweck =  ReadFile(filename,14);
#probenahmeArt =  ReadFile(filename,15);
#raum =  ReadFile(filename,16);
#untersuchungsgrund =  ReadFile(filename,17);
#wasserart =  ReadFile(filename,18);
#wohnunglage =  ReadFile(filename,19);
#disp(strcat("...done.", " - ", ctime(time())));

### UI PRESETS
appdata.UI.currentEntrySite = 2;
appdata.UI.currentEntryAction = 2;


if buildTrueData
# ActionData
[actionDataRaw, targetDBaction, actionSize] = ActionData("C:\\Users\\10300202\\Desktop\\Praxedo\\DB\\Source\\ActionData.xlsx");
data.action.raw = actionDataRaw;
data.action.targetDB = targetDBaction;
data.action.size = actionSize;
filename = "C:\\Users\\10300202\\Desktop\\Praxedo\\DB\\Target\\action";
UnpackAction(filename,data.action.targetDB);
# SiteData
[siteDataRaw, targetDBsite, siteSize] = SiteData("C:\\Users\\10300202\\Desktop\\Praxedo\\DB\\Source\\SiteData_Sorted.xlsx");
data.site.raw = siteDataRaw;
data.site.targetDB = targetDBsite;
data.site.size = siteSize;

filename = "C:\\Users\\10300202\\Desktop\\Praxedo\\DB\\Target\\site";
UnpackAction(filename,data.site.targetDB);

#data.supplied = SuppliedHouses(data.site);
appdata.data = data;
save -mat7-binary dbConverted.mat appdata;#save dbConverted.mat appdata;
else

# ActionData
[actionDataRaw, targetDBaction, actionSize] = ActionData("C:\\Users\\10300202\\Desktop\\Praxedo\\DB\\Source\\ActionData.xlsx");
data.action.raw = actionDataRaw;
data.action.targetDB = targetDBaction;
data.action.size = actionSize;
# SiteData
[siteDataRaw, targetDBsite, siteSize] = SiteData("C:\\Users\\10300202\\Desktop\\Praxedo\\DB\\Source\\SiteData_Sorted.xlsx");
data.site.raw = siteDataRaw;
data.site.targetDB = targetDBsite;
data.site.size = siteSize;
data.supplied = SuppliedHouses(data.site);
appdata.data = data;
save dbConverted.mat appdata;

#data.action.raw = 1;
#data.action.targetDB = 2;
#data.action.size = 29000;
#data.site.raw = 1;
#data.site.targetDB = 2;
#data.site.size = 29000;
#data.supplied = SuppliedHouses(data.site);
#appdata.data = data;
#save dbDummy.mat appdata;
endif
