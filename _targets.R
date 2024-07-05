library(targets)
library(tarchetypes)
# This is an example _targets.R file. Every
# {targets} pipeline needs one.
# Use tar_script() to create _targets.R and tar_edit()
# to open it again for editing.
# Then, run tar_make() to run the pipeline
# and tar_read(data_summary) to view the results.

# Define custom functions and other global objects.
# This is where you write source(\"R/functions.R\")
# if you keep your functions in external scripts.
source("R/meeting_params.R")
# Set target-specific options such as packages:
# tar_option_set(packages = "utils") # nolint

# End this file with a list of target objects.
tar_plan(

  meeting_date = time_format(ymd("2024-07-04")),
  title = "Reunion d'Échange sur la Situation et Riposte à l'Épidemie de Rougeole au Burundi",
  participant1 = "Dr Bizimana, PEV Burundi",
  participant2 = "Dr Kaya, UCN Lead OMS Burundi",
  participant3 = "Dr Vincent Sodjinou, Hub des urgences Afrique Centrale et de l'Ouest",
  participant4 = "Dr Mohamed Omer, UNICEF",
  participant6 = "Alice Wimmer, OMS-HQ",
  participant7 = "Dr Franck Mboussou, IST-CA",
  participant8 = "Dr Edie Alain Kemenang, IST-CA",
  participant9 = "Mr Benedict Nguimbis, IST-CA",
  maj_epidemie = 
  "  \n 
    - Épidémie déclarée officellement le **15 février 2024**\n
    - Première flambée de l'épidemie en **aout 2022**\n 
    - **19 districts** ont rapporté des cas confirmés en 2022, **24** en 2023 et **31** en 2024 \n
    - **2507 cas** et **20 décès** ont été rapportés en 2024\n
    - **2** pics de cas ont été observés entre la **S10** et la **S15** de l'année 2024\n
    - Seules **06 provinces** n'ont pas rapporté de cas en 2024 \n
    - L'épidemie est essentiellement localisée dans les provinces du Nord, Centre et Sud Ouest \n
    - Les provinces de **Muyinga**, **Ngozi**, et **kirondo** sont les plus touchées par l'épidemie \n
    - Les enfants de moins de 14 ans sont les plus touchées par l'épidémie, on a aussi noté que des enfants agés de moins de 
  06 mois étaient affectés, ceci s'explique par une faible couverture vaccinale et la malnutrition \n
    - En ce qui concerne la couverture vaccinale, seulement **11 districts** ont atteint la cible sur le RR1, **01 district** a une couverture
  < 50% sur le RR1 \n
    - Sur le RR2, **33 districts** avaient une couverture inférieure à la cible\n
    - En ce qui concerne la riposte, **03 campagnes nationales** ont été organisées: 02 en 2023, et 01 en 2024\n
    - L'objectif de la campagne était l'atteinte d'une couverture d'au moins **95%**, les resultats provisoires
  font état d'une couverture de **92%** une mise à jour est prévue la semaine prochaine\n
    - En ce qui concerne la malnutrition, l'administration de la vitamine A et le déparasitage des enfants ont été effectués\n
    - Au niveau de la frontière avec la RDC, la surveillance est établie dans les camps de transit et de réfugiés\n"
  ,

  defis = "- Persistance des épidémies de rougeole dépuis 2019 \n
  - Hésitation face à la vaccination \n
  - Prélèvement non systématique des cas \n
  - Qualité des données \n
  ",

gap = " - Renforcement de la surveillance communautaire<br>
  - Augmenter la RH dans les 05 districts encore en épidemie <br>",

pers = "- Organisation d'une réunion pratique pour les 5 districts en épidemie avec l'IST-CA et les partenaires <br>
  - Établir des listes linéaires de cas dans chaque district<br>"


)