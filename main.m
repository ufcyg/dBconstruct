#Cleanup workspace
clc;
clear;
#load needed packages (needs to be installed first)
pkg load io;

#setdebug
buildTrueData = true;

### UI PRESETS
appdata.UI.currentEntrySite = 2;
appdata.UI.currentEntryAction = 2;


if buildTrueData
# ActionData
[actionDataRaw, targetDBaction, actionSize, entryEdited] = ActionData("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\source\\ASZPM_Aktion20200809.xlsx");
data.action.raw = actionDataRaw;
data.action.targetDB = targetDBaction;
data.action.size = actionSize;
data.action.entryEdited = entryEdited;

filename = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\action";
UnpackToXML(filename,data.action.targetDB);
# SiteData
[siteDataRaw, targetDBsite, siteSize, entryEdited] = SiteData("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\source\\modified\\SiteData_Sorted.xlsx");
data.site.raw = siteDataRaw;
data.site.targetDB = targetDBsite;
data.site.size = siteSize;
data.site.entryEdited = entryEdited;

#filename = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\site";
#UnpackToXML(filename,data.site.targetDB);

data.supplied = SuppliedHouses(data.site);
appdata.data = data;
save -zip dbConverted.mat appdata;#save dbConverted.mat appdata;
else

# ActionData
[actionDataRaw, targetDBaction, actionSize, entryEdited] = ActionData("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\source\\modified\\actionDB-cut.xlsx");
data.action.raw = actionDataRaw;
data.action.targetDB = targetDBaction;
data.action.size = actionSize;
data.action.entryEdited = entryEdited;
# SiteData
[siteDataRaw, targetDBsite, siteSize, entryEdited] = SiteData("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\source\\modified\\siteDB-cut_sorted.xlsx");
data.site.raw = siteDataRaw;
data.site.targetDB = targetDBsite;
data.site.size = siteSize;
data.site.entryEdited = entryEdited;

data.supplied = SuppliedHouses(data.site);
appdata.data = data;
save -mat7-binary dbConverted.mat appdata;#save dbConverted.mat appdata;

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
