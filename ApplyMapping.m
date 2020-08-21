function mappedValue = ApplyMapping(mappedValue, switchcase)
  switch switchcase
  case 1
    mappedValue = BearbeitungsstatusID(mappedValue);
  case 2
    mappedValue = AuftragsinhaltID(mappedValue);
  case 3
    mappedValue = ProbenartID(mappedValue);
  case 4
    mappedValue = UntersuchungsartID(mappedValue);
  case 5
    mappedValue = AktionsstatusID(mappedValue);
  case 6
    mappedValue = BemerkungNaechsterSchrittID(mappedValue);
  case 7
    mappedValue = AuftraggeberID(mappedValue);
  case 8
    mappedValue = GebaeudeartID(mappedValue);
  endswitch
endfunction
################################################################################
################################################################################
#BearbeitungsstatusID#######################################BearbeitungsstatusID
function value = BearbeitungsstatusID(value)
  if strcmp(value, "4")
    value = "4";
  return; endif
  if strcmp(value, "x")
    value = "x1";
  return; endif
  if strcmp(value, "dezentral")
    value = "x1";
  return; endif
  if strcmp(value, "-")
    value = "x1";
  return; endif
  if strcmp(value, "2")
    value = "2";
  return; endif
  if strcmp(value, "1")
    value = "1";
  return; endif
  if strcmp(value, "0")
    value = "0";
  return; endif
  if strcmp(value, "gekündigt") #wert in bemerkung KB übertragen
    value = "4";
  return; endif
  if strcmp(value, "out") #wert in bemerkung KB übertragen
    value = "4";
  return; endif
  if strcmp(value, "storniert")
    value = "x2";
  return; endif
  if strcmp(value, "dez. WW.") #wert in bemerkung KB übertragen
    value = "x1";
  return; endif
  if strcmp(value, "3")
    value = "4";
  return; endif
  if strcmp(value, "nicht untersuchungspflichtig") #wert in bemerkung KB übertragen
    value = "x1";
  return; endif
  if strcmp(value, "verkauft") #wert in bemerkung KB übertragen
    value = "4";
  return; endif
  if strcmp(value, "gehört nicht mehr der HV") #wert in bemerkung KB übertragen
    value = "4";
  return; endif
  if strcmp(value, "existiert nicht") 
    value = "-99";
  return; endif
  if strcmp(value, "keine weitere Beauftragung") #wert in bemerkung KB übertragen
    value = "4";
  return; endif
  if strcmp(value, "storniert- erst wieder dez 2019") 
    value = "x2";
  return; endif
  if strcmp(value, "2019storno") 
    value = "x2";
  return; endif
endfunction
################################################################AuftragsinhaltID
function value = AuftragsinhaltID(value)
  if isempty(value{}) || strcmp(value, "") || strcmp(value, " ") || strcmp(value, "  ") || strcmp(value, "   ")
    value = "Probenahme";
  return; endif
  if strcmp(value, "MieterInfo")
    value = "-99";
  return; endif
  if strcmp(value, "Ausfallpauschal")
    value = "-99";
  return; endif
  if strcmp(value, "Objekterfassung")
    value = "Erstbegehung/Objekterfassung";
  return; endif
  if strcmp(value, "Objekterf. & Proben.")
    value = "Objekterfassung & Probenahme (zeitgleich)";
  return; endif
  if strcmp(value, "thermische Desinfektion")
    value = "thermische Desinfektion";
  return; endif
  if strcmp(value, "Kommunikation Gesundheitsamt")
    value = "-99";
  return; endif
  if strcmp(value, "endständige Filter")
    value = "Montage endständiger Filter";
  return; endif
  if strcmp(value, "Analyse")
    value = "-99";
  return; endif
  if strcmp(value, "Analytik")
    value = "-99";
  return; endif
  if strcmp(value, "Sonstiges")
    value = "-99";
  return; endif
  if strcmp(value, "Orga")
    value = "-99";
  return; endif
  if strcmp(value, "?")
    value = "-99";
  return; endif
  if strcmp(value, "thermische Strangspülung")
    value = "thermische Desinfektion";
  return; endif
  if strcmp(value, "t.D.")
    value = "thermische Desinfektion";
  return; endif
  if strcmp(value, "TD")
    value = "thermische Desinfektion";
  return; endif
  if strcmp(value, "Spülung")
    value = "-99";
  return; endif
  if strcmp(value, "Duo Spülung")
    value = "-99";
  return; endif
  if strcmp(value, "6022")
    value = "-99";
  return; endif
  if strcmp(value, "GA Kommunikation")
    value = "-99";
  return; endif
  if strcmp(value, "Kommunikation GA")
    value = "-99";
  return; endif
endfunction
#####################################################################ProbenartID
function value = ProbenartID(value)
  if strcmp(value, "") || strcmp(value, " ") || strcmp(value, "  ") || strcmp(value, "   ") || isempty(value{})
    value = "Trinkwasser";
  return; endif
  if strcmp(value, "Trinkwasser")
    value = "Trinkwasser";
  return; endif
  if strcmp(value, "Nutzwasser")
    value = "Kühlwasser";
  return; endif
  if strcmp(value, "Zusatzwasser und Nutzwasser")
    value = "Kühlwasser";
  return; endif
  if strcmp(value, "Zusatzwasser")
    value = "Zusatzwasser";
  return; endif
  if strcmp(value, "Abwasser")
    value = "Abwasser";
  return; endif
  if strcmp(value, "Wasser")
    value = "Wasser";
  return; endif
  if strcmp(value, "Brunnenwasser")
    value = "Brunnenwasser";
  return; endif
endfunction
##############################################################UntersuchungsartID
function value = UntersuchungsartID(value)
  if isempty(value{}) || strcmp(value, "") || strcmp(value, " ") || strcmp(value, "  ") || strcmp(value, "   ")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "o.U.")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "vvoU")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "oU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "SU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "wNU")
    value = "Nachuntersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "Trinkwasseruntersuchung")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "Routineuntersuchung nach 42. BImSchV")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Nutzwasseruntersuchung mittels Dip-Slides")
    value = "Kühlwasseruntersuchung mittels Dip-Slides";
  return; endif
  if strcmp(value, "w.U.")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU nach Befall")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "TWU")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "Trinkwasseruntersuchung (kalt)")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "SU nach 3 Jahren")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "vv oU")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "oU für Legio, TWU für Mibi und SM")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "Nutzwasseruntersuchung")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "NU TWU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "oU/TWU")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "w NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Probenahme")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "vvSU")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "NU + vvoU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Nachuntersuchung nach 42. BImSchV")
    value = "Nachuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Brunnenwasseruntersuchung")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "Objekterfassung")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "thermische Desinfektion")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "gestaffelte Stagnationsbeprobung")
    value = "gestaffelte Stagnationsbeprobung";
  return; endif
  if strcmp(value, "SU nach 1 Jahr")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "o.U.Vv")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "SNU3")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "NU/TWU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "vsU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "o.U.+ N.U.")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "2. NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU während chem. Desinfektion")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU bei chem Des")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "wU Kaltwasser")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "2. NU nach Befall")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "3. NU")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "wU")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "Kommunikation")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "TWU/oU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "wUnSan")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "w. U.")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "Stagnationsbeprobung + stichprobenartige Legionellenuntersuchung")
    value = "gestaffelte Stagnationsbeprobung";
  return; endif
  if strcmp(value, "NU nach 3 Monaten")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU nach TD")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Stagnationsbeprobung")
    value = "gestaffelte Stagnationsbeprobung";
  return; endif
  if strcmp(value, "NU nach 1 Jahr")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "oU vv")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "Nachuntersuchung nach 42. BImSchV + Routine")
    value = "Nachuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Mikrobiologische Trinkwasseruntersuchung")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "weiterge. Unters. nach therm. Des.")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "Untersuchung nach Sanierung")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "oU, TWU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "NU+TWU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "vv o.U.")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "NU nach Sanierung")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Klärung")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "2.NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Baufreigabe")
    value = "Baufreigabe";
  return; endif
  if strcmp(value, "Nachuntersuchung nach 42. BImSchV")
    value = "Nachuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Nachuntersuchung nach 42.BImSchV")
    value = "Nachuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "nach 1 Jahr")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "TWU für Mibi und SM, oU für Legio")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "NU.n.t.D")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "weitergehende Untersuchung")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "wUnB")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "vvNU + TWU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU/wU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "SNU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "NU nach San.")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NEU: Untersuchung Zusatzwasser nicht: Routineuntersuchung nach 42. BImSchV")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "vv 2.NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "w U nach Sanierung")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "vv SU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "Routineuntersuchung nach 42. BlmSchV")
    value = "Routineuntersuchung nach 42. BlmSchV";
  return; endif
  if strcmp(value, "Routineuntersuchung und Nachuntersuchung nach 42. BImSchV")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Wasser")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "Heizungswasseruntersuchung")
    value = "Heizungswasseruntersuchung";
  return; endif
  if strcmp(value, "Nachunters. nach Befall")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Nachuntersuchung nach 42. BImSchV und Routineuntersuchung")
    value = "Nachuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "NU nach 2. TD")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Abwasser")
    value = "Abwasser";
  return; endif
  if strcmp(value, "Trinkwasseruntersuchung NU")
    value = "Nachuntersuchung ";
  return; endif
  if strcmp(value, "Nachuntersuchung")
    value = "Nachuntersuchung ";
  return; endif
  if strcmp(value, "SU nach 2 Jahren")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "oU / TWU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "w.U. nach Befall")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "o.U. und TWU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "wU n tD")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "Vv")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "Mikrobiologische Untersuchung")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "Blei")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "NU ntD")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NUntD")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Nachbeprobung nach thermische Desinfektion")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU nach E.coli Befall")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "TWU für Mibi. oU für Legio")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "NU nach therm. Spülung")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "o.U. bei Legio; TW bei MiBi und Chemie")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "Routineuntersuchung nach 42. BImSchV + Nachuntersuchung")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "oUvv")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "Filter")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "weiterge. Unters. vor San.")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "Vervollständigung der orientierenden Untersuchung")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "oU + TWU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "TWU + oU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "NU nach chemischer Reinigung")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Blei-Stagnation")
    value = "gestaffelte Stagnationsbeprobung";
  return; endif
  if strcmp(value, "wU n San")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "Brunnenwasseranalyse")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "Kaltwasseruntersuchung")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "2.NU + vvSU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Routineuntersuchung")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Trinkwasseruntersuchung bzw. oU (für Legio)")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "weitergehende Untersuchung nach thermischer Desinfektion")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "NU nach Befall ohne Befall")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Routineuntersuchung nach 42. BImSchV + Trinkwasseruntersuchung")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "NUnB")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "vv SNU")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "Vervollständigung mit Nachunters. nach Befall")
    value = "Nachuntersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "Untersuchung nach Befall")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Untersuchung nach Befall")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU und TWU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "oU für Legio, TWU für Mibi")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "weiterge. Unters. nach San. = 1. Nachunters.")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "vvo.U.")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "Nutzwasseruntersuchung und Prozesswaser (letzteres ohne Bewertung nach 42.BImSchV)")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "NU nach thermischer Desinfektion")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "TWU bei MiBi und Schwerm. NU bei Legio WW") ###########################
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Legio = oU; Mibi+Chemie = TWU") 
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "oU bei Legio; TWU bei Nickel") ##############################
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "oU, bei Legio; TW bei MiBi & Schwerm.")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "vvSU0")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "Brunnenwasser")
    value = "Brunnenwasser";
  return; endif
  if strcmp(value, "vvSNU3")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "Nachunters. (nach drei Monaten)")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Routineuntersuchung nach 42. BImSchV, Trinkwasseruntersuchung")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Nutzwasseruntersuchung und Trinkwasser")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "1. NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Nachuntersuchung und Trinkwasseruntersuchung")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Nutzwasser/ Zusatzwasser")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "wU nach thermischer Desinfektion")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "gestaffelte Stagnationsbeprobung und Stichproben")
    value = "gestaffelte Stagnationsbeprobung";
  return; endif
  if strcmp(value, "?")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "SNU1")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "w.U.n.tD")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "TWU bei MiBi und Chemie oU bei Legio WW") ######################
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "Routineuntersuchung nach 42. BImSchV, gätte eigentlich NU sein müssen (21.11.18, DC)")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Aufnahme")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "VV und NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Prozesswasseruntersuchung/ Heizungswasseruntersuchung")
    value = "Heizungswasseruntersuchung ";
  return; endif
  if strcmp(value, "oU / NU/ TWU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "NU + TWU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "oU und Trinkwasseruntersuchung")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "tD")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "Nuvv")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Bleistagnationsbeprobung")
    value = "gestaffelte Stagnationsbeprobung";
  return; endif
  if strcmp(value, "Nutzwasseruntersuchung und Trinkwasseruntersuchung")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Nutzwasser/ TWU")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "systemische Untersuchung")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "Nutzwasser/ Zusatwasser")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "oU +  TWU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "weitergehende Untersuchung ohne Maßnahme")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "endständige Filter")
    value = "-99";
  return; endif
  if strcmp(value, "Bleistagnation")
    value = "gestaffelte Stagnationsbeprobung";
  return; endif
  if strcmp(value, "oU bzw. Trinwkasseruntersuchung")
    value = "orientierende Untersuchung ";
  return; endif
  if strcmp(value, "TWU für Mibi, oU für Legio")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "Routine- und Nachuntersuchung nach 42. BImSchV")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Individuelle Untersuchung")
    value = "Eigenkontrolle";
  return; endif
  if strcmp(value, "NUtD")
    value = "Nachuntersuchung ";
  return; endif
  if strcmp(value, "1.NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "kotz, 3 PN!!")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "o.U. bei WW Legio TWU bei MiBi und Chemie") ####################
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "o.U. + TWU")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "TWU und o.U")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "NU nach GFA")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "weiterge. Unters. nach therm. Des.: Durchführung einer thermischen Desinfektion vom 24.11-28.11.14")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "weiterge. Unters. vor San.: Fertigmeldung in KW 39, Beprobung nach Sanierung")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "Vv.NU")
    value = "Nachuntersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "Heizungswasseruntersuchung oder sowas")
    value = "Heizungswasseruntersuchung";
  return; endif
  if strcmp(value, "NU für Legio, TWU für Mibi")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "o.U. vv")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "Trinkwasseruntersuchung (alles in einem Auftrag)")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "Heizungswasseranalyse nach VDI 2035")
    value = "Heizungswasseruntersuchung ";
  return; endif
  if strcmp(value, "oU (Legionellen), Trinkwasseruntersuchung (für Mibi), Heizungswasseruntersuchung (für Heizungswasser)")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "oU (Legionellen), Trinkwasseruntersuchung (für Mibi)")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "Befeuchterwasser")
    value = "-99";
  return; endif
  if strcmp(value, "TWU + NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "SU - Ventil noch defekt")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "Spülung")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "o.U.+ NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU bei Legio, Trinkwasseruntersuchung bei MiBi")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "geändert 28.03.19, DC Nachuntersuchung nach 42. BImSchV")
    value = "Nachuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "weitergehende Untersuchung nach Saniereung und Th. Desinfektion")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "Kühlwasseruntersuchung")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Untersuchung auf mikrobiologische Parameter")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "o.U.+ w.U")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "oU + Trinkwasseruntersuchung")
    value = "orientierende Untersuchung ";
  return; endif
  if strcmp(value, "vv.oU.")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "NU nach 1 Jahr (Vv)")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "9.NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "orient. Unters.(Erstbeprobung)")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "SNU(1)")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "-")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "NU + vvSU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU +vvSU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU nach 1 Jahr (vvSU?)")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "GA Kommunikation")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "Bleiuntersuchung")
    value = "Trinkwasseruntersuchung";
  return; endif
  if strcmp(value, "w.U.n.t.D.")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "Prozesswasseruntersuchung")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Vervollständigung und NU")
    value = "Nachuntersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "NU (?)")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "weiterge. Unters. nach therm. Des.:  Durchführung einer thermischen Desinfektion am 17.11.-28.11.14")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "NU nach Befall: warte auf GFA: PCC (Stand: 29.07.15)")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU - Karsten hat hier noch kein Angebot erstellen lassen!")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Filter + Einbau")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "Badebeckenwasseruntersuchung")
    value = "-99";
  return; endif
  if strcmp(value, "Nachuntersuchung (für KT2) und Routineuntersuchung (für KT1, KT3, KT4) nach 42. BImSchV")
    value = "Nachuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "SU?")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "TWU/NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "Nutzwasser  + 1 Zusatzwasser Legio")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "Nachunters. nach therm. Des.")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "individuelle Untersuchung (krankheitsfallverdacht)")
    value = "Eigenkontrolle";
  return; endif
  if strcmp(value, "Routineuntersuchung + Nachuntersuchung nach 42. BlmSchV")
    value = "Routineuntersuchung nach 42. BImSchV";
  return; endif
  if strcmp(value, "VV und NU nach Befall")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "w. U. nach Sanierung")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "vvSU - Anfrage Nutzerdaten")
    value = "orientierende Untersuchung (Vervollständigung)";
  return; endif
  if strcmp(value, "TWU+NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU Kaltwasser")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "3.NU")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, ".")
    value = "kein Untersuchungsgrund";
  return; endif
  if strcmp(value, "NU nach Spülplan")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "2. NU nach 3 Monaten")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "2. w. U. nach Sanierung")
    value = "weitergehende Untersuchung";
  return; endif
  if strcmp(value, "oU bzw. Trinkwasseruntersuchung")
    value = "orientierende Untersuchung";
  return; endif
  if strcmp(value, "Nachuntersuchung nach einem (2) jahr")
    value = "Nachuntersuchung";
  return; endif
  if strcmp(value, "NU nach 2 Jahren")
    value = "Nachuntersuchung";
  return; endif
endfunction
#################################################################AktionsstatusID
function value = AktionsstatusID(value)
  if isempty(value{}) || strcmp(value, "") || strcmp(value, " ") || strcmp(value, "  ") || strcmp(value, "   ")
    value = "leer";
  return; endif
  if strcmp(value, "NU unter TMW")
    value = "NU unter TMW";
  return; endif
  if strcmp(value, "ohne Beanstandung")
    value = "ohne Beanstandung";
  return; endif
  if strcmp(value, "NU über TMW")
    value = "NU über TMW";
  return; endif
  if strcmp(value, "oU über TMW")
    value = "oU über TMW";
  return; endif
  if strcmp(value, "oU unter TMW")
    value = "oU unter TMW";
  return; endif
  if strcmp(value, "Prüfwert 2 überschritten")
    value = "Prüfwert 2 überschritten";
  return; endif
  if strcmp(value, "Maßnahmenwert überschritten")
    value = "Maßnahmenwert überschritten";
  return; endif
  if strcmp(value, "Prüfwert 1 überschritten")
    value = "Prüfwert 1 überschritten";
  return; endif  
endfunction
#####################################################BemerkungNaechsterSchrittID
function value = BemerkungNaechsterSchrittID(value)
  if isempty(value{}) || strcmp(value, "") || strcmp(value, " ") || strcmp(value, "  ") || strcmp(value, "   ")
    value = "leer";
  return; endif
  if strcmp(value, "VV")
    value = "Vervollständigung";
  return; endif
  if strcmp(value, "NU in drei Monaten")
    value = "NU in drei Monaten";
  return; endif
  if strcmp(value, "oU in drei Jahren")
    value = "oU in drei Jahren";
  return; endif
  if strcmp(value, "NU in 4 Wochen")
    value = "NU in vier Wochen";
  return; endif
  if strcmp(value, "NU in einem Jahr")
    value = "NU in einem Jahr";
  return; endif
  if strcmp(value, "Routineuntersuchung in drei Monaten")
    value = "Routineuntersuchung in drei Monaten";
  return; endif
  if strcmp(value, "oU in einem Jahr")
    value = "oU in einem Jahr";
  return; endif
  if strcmp(value, "NU in 3 Monaten")
    value = "NU in drei Monaten";
  return; endif
  if strcmp(value, "unverzüglich Nachuntersuchung gem. 42. BImSchV")
    value = "unverzüglich Nachuntersuchung gem. 42. BImSchV";
  return; endif
  if strcmp(value, "NU in 1 Jahr")
    value = "NU in EINEM Jahr";
  return; endif
  if strcmp(value, "N.U in 4 Wochen")
    value = "NU in vier Wochen";
  return; endif
  if strcmp(value, "NU in drei  Monaten")
    value = "NU in drei Monaten";
  return; endif
  if strcmp(value, "Routineuntersuchung in einem Monat")
    value = "Routineuntersuchung in einem Monat";
  return; endif
  if strcmp(value, "N.U in drei Monaten")
    value = "NU in drei Monaten";
  return; endif
  if strcmp(value, "o.U. in 3 Jahren")
    value = "oU in drei Jahren";
  return; endif
  if strcmp(value, "NU  in vier Wochen")
    value = "NU in vier Wochen";
  return; endif
  if strcmp(value, "NU in die Monaten")
    value = "NU in drei Monaten";
  return; endif
  if strcmp(value, "TWU in 1 Jahr")
    value = "oU in einem Jahr";
  return; endif
  if strcmp(value, "oU in drei Jahren - GA Das hat die Kontrolle in 3 Jahren genehmigt. E-Mail im Objektordner. 01.03.2019,LS")
    value = "oU in drei Jahren";
  return; endif
  if strcmp(value, "TWU unter GW")
    value = "oU in einem Jahr";
  return; endif
  if strcmp(value, "oU in 3 Jahren")
    value = "oU in drei Jahren";
  return; endif
  if strcmp(value, "Routineuntersuchung in 3 Monaten")
    value = "Routineuntersuchung in drei Monaten";
  return; endif
  if strcmp(value, "Vervollständigung")
    value = "Vervollständigung";
  return; endif
  if strcmp(value, "NU in drei Moanten")
    value = "NU in drei Monaten";
  return; endif
  if strcmp(value, "N.U. in einem Jahr")
    value = "NU in einem Jahr";
  return; endif
  if strcmp(value, "NU 3 Montaten")
    value = "NU in drei Monaten";
  return; endif
endfunction
#LabbaseStandortID################################################AuftraggeberID
function value = AuftraggeberID(value)
  if strcmp(value, "SUI-Leipzig")
    value = "11";
  return; endif
  if strcmp(value, "STS")
    value = "69";
  return; endif
  if strcmp(value, "sts-Berlin")
    value = "69";
  return; endif
  if strcmp(value, "UAU Augsburg")
    value = "10";
  return; endif
  if strcmp(value, "ULE Leipzig")
    value = "11";
  return; endif
  if strcmp(value, "SUI-Stuttgart")
    value = "0";
  return; endif
  if strcmp(value, "LEV Leverkusen")
    value = "63";
  return; endif
  if strcmp(value, "SUI-Weiden")
    value = "12";
  return; endif
  if strcmp(value, "HES Essen")
    value = "81";
  return; endif
  if strcmp(value, "UKE Kempten")
    value = "13";
  return; endif
  if strcmp(value, "SUI-Offenburg")
    value = "52";
  return; endif
  if strcmp(value, "UBE Berlin") ##################################
    value = "888";
  return; endif
  if strcmp(value, "SUI-Augsburg")
    value = "10";
  return; endif
  if strcmp(value, "UOF Offenburg")
    value = "52";
  return; endif
  if strcmp(value, "sts-Nord")
    value = "69";
  return; endif
  if strcmp(value, "") || strcmp(value, " ") || strcmp(value, "  ") || strcmp(value, "   ") || isempty(value{})
    value = "69";
  return; endif
  if strcmp(value, "HBE Berlin")
    value = "69";
  return; endif
  if strcmp(value, "UST Stuttgart")
    value = "0";
  return; endif
  if strcmp(value, "SUI-Kempten")
    value = "13";
  return; endif
  if strcmp(value, "UKE- Kempten")
    value = "13";
  return; endif
  if strcmp(value, "ULE- Leipzig")
    value = "11";
  return; endif
  if strcmp(value, "SUI-Essen")
    value = "81";
  return; endif
  if strcmp(value, "SUI-Tamm")
    value = "0";
  return; endif
  if strcmp(value, "HLV")
    value = "63";
  return; endif
  if strcmp(value, "LJI (Jena)") #################################
    value = "888";
  return; endif
  if strcmp(value, "SUI-Berlin")
    value = "69";
  return; endif
  if strcmp(value, "SUI- Leipzig")
    value = "11";
  return; endif
  if strcmp(value, "UOF-Offenburg")
    value = "52";
  return; endif
  if strcmp(value, "SUI-Pocking")
    value = "12";
  return; endif
  if strcmp(value, "UWE Weiden")
    value = "12";
  return; endif
  if strcmp(value, "SUI-Leverkusen")
    value = "63";
  return; endif
  if strcmp(value, "STS-18-AN0385-1")
    value = "69";
  return; endif
  if strcmp(value, "LAG Synlab")
    value = "888";
  return; endif
  if strcmp(value, "SUI-Stollberg")
    value = "11";
  return; endif
  if strcmp(value, "SUI Essen")
    value = "81";
  return; endif
  if strcmp(value, "SUI-Freiburg/SUI Essen")
    value = "81";
  return; endif
  if strcmp(value, "Test")
    value = "-99";
  return; endif
  if strcmp(value, "UAU- Augsburg")
    value = "10";
  return; endif
endfunction
###################################################################GebaeudeartID
function value = GebaeudeartID(value)
  if isempty(value{}) || strcmp(value, "") || strcmp(value, " ") || strcmp(value, "  ") || strcmp(value, "   ")
    value = "gewerblich";
  return; endif
  if strcmp(value, "Nassabscheider")
    value = "Nassabscheider";
  return; endif
  if strcmp(value, "gewerblich")
    value = "gewerblich";
  return; endif
  if strcmp(value, "öffentlich")
    value = "öffentlich";
  return; endif
  if strcmp(value, "Verdunstungskühlanlage")
    value = "Verdunstungskühlanlage";
  return; endif
  if strcmp(value, "öff./gewerbl.")
    value = "öffentlich und gewerblich";
  return; endif
  if strcmp(value, "Wohngebäude")
    value = "gewerblich";
  return; endif
  if strcmp(value, "Seniorenheim/Schulen")
    value = "öffentlich";
  return; endif
  if strcmp(value, "öffentlich- Schule")
    value = "öffentlich";
  return; endif
  if strcmp(value, "DG")
    value = "gewerblich";
  return; endif
  if strcmp(value, "") || strcmp(value, " ") || strcmp(value, "  ") || strcmp(value, "   ")
    value = "öffentlich";
  return; endif
  if strcmp(value, "Seniorenheim")
    value = "öffentlich";
  return; endif
  if strcmp(value, "Kühlturm/Nassabscheider")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Kühlturm/ Nassabscheider")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Süßmilch")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Miethaus")
    value = "gewerblich";
  return; endif
  if strcmp(value, "Betriebsstätte")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "1 Verdunstungskühlanlage und 3 Nassabscheidern")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Verdunstungskühlanlage/ Kühlturme")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Schule")
    value = "öffentlich";
  return; endif
  if strcmp(value, "Pflegeeinrichtung")
    value = "öffentlich";
  return; endif
  if strcmp(value, "Mietwohnungen")
    value = "gewerblich";
  return; endif
  if strcmp(value, "1 Verdunstungskühlanlage und 5 Nassabscheide")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Kühlturm")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Verdunstungskühlanlage/ Nassabscheider")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "KG")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Kältemaschine")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "vermutlich VKA")
    value = "Verdunstungskühlanlage";
  return; endif
  if strcmp(value, "Anlagenwasser")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Verdunstungskühlanlagen")
    value = "Verdunstungskühlanlagen";
  return; endif
  if strcmp(value, "Hotel")
    value = "öffentlich";
  return; endif
  if strcmp(value, "Bürohaus")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Verdunstungskühlanlage / Nassabscheider")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Pflegeheim")
    value = "öffentlich";
  return; endif
  if strcmp(value, "Betriebstätte")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "VKA und Nassabscheider")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "vermutlich Nassabscheider")
    value = "Nassabscheider";
  return; endif
  if strcmp(value, "Praxis")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "VKA")
    value = "Verdunstungskühlanlage";
  return; endif
  if strcmp(value, "Verdunstungskühlanlage und Nassabscheider")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Befeuchterwasser")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Spital")
    value = "öffentlich";
  return; endif
  if strcmp(value, "Verdunstungskühlanlage/Nassabscheider")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "Nassabscheider/ Verdunstungskühlanlage")
    value = "Sonstiges";
  return; endif
  if strcmp(value, "öffentlich (dezentral)")
    value = "öffentlich";
  return; endif
endfunction