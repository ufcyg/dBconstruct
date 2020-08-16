#Cleanup workspace
clc;
clear;
#load needed packages (needs to be installed first)
pkg load io;

#setdebug
buildTrueData = false;

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

if buildTrueData
# ActionData
[actionDataRaw, targetDBaction, actionSize] = ActionData("C:\\Users\\10300202\\Desktop\\Praxedo\\DB\\Source\\ActionData.xlsx");
data.action.raw = actionDataRaw;
data.action.targetDB = targetDBaction;
data.action.size = actionSize;
# SiteData
[siteDataRaw, targetDBsite, siteSize] = SiteData("C:\\Users\\10300202\\Desktop\\Praxedo\\DB\\Source\\SiteData.xlsx");
data.site.raw = siteDataRaw;
data.site.targetDB = targetDBsite;
data.site.size = siteSize;
save dbConverted.mat data;
else
data.action.raw = 1;
data.action.targetDB = 2;
data.action.size = 29000;
data.site.raw = 1;
data.site.targetDB = 2;
data.site.size = 29000;
save dbDummy.mat data;
endif
