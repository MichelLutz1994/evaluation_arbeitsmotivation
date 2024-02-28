attach(Datensatz)
# Annahme: Datensatz mit den relevanten Variablen
datensatz <- read_xlsx("C:\\Users\\carol\\OneDrive\\Dokumente\\STUDIUM\\Uni Bamberg\\Semester 2\\Forschungsseminar\\Datensatz.xlsx")

# Multiple lineare Regression
regression_model <- lm(cbind(MO01_01,MO01_02,MO01_03,MO01_04,MO01_05,MO01_06,MO01_07,MO01_08,MO01_09,MO01_10,MO01_11,MO01_12,MO01_13,MO01_14,MO01_15,MO01_16,MO01_17,HY01_01,HY01_02,HY01_03,HY01_04,HY01_05,HY01_06,HY01_07,HY01_08,HY01_09,HY01_10,HY01_11,HY01_12,HY01_13,HY01_14,HY01_15,HY01_16,HY01_17) ~ SD01 + SD02 + SD03 + SD03_09 + SD04, data = datensatz)

# Anzeigen der Ergebnisse
summary(regression_model)
