# Mon CV

Ce projet me permet de tenir à jour mon CV, et aussi de retourner dans le passé de temps à autre. Le rendu peut-être visualisé à la racine dans les fichiers `cv_fr_emilien_boulben.pdf` et `cv_en_emilien_boulben.pdf` selon le langage nécessaire.

Pour le compiler, il est préférable d'avoir une version Latex postérieure à 2018, ou d'ajouter le traditionnel `\usepackage[utf8]{inputenc}` avec une version d'au moins décembre 2005. PdfLatex est suffisant.

Il est nécessaire d'installer les bibliothèques suivantes :
* [ModernCv](https://ctan.org/pkg/moderncv)
* [ModernTimeline](https://ctan.org/pkg/moderntimeline)

Le script `compile.sh` compile avec pdflatex, créé les pdfs et les nomme correctement.

# My CV

I use this project to maintain my CV, and go backward in time sometimes. You can visualize the output with the root files `cv_fr_emilien_boulben.pdf` and `cv_en_emilien_boulben.pdf`, depending of needed language.

To compile, it is best to use Latex version from 2018 or later. If you cannot, add the old `\usepackage[utf8]{inputenc}` associated with Latex version at least from december of 2005.
PdfLatex is adequate.

It is necessary to install following librairies :
* [ModernCv](https://ctan.org/pkg/moderncv)
* [ModernTimeline](https://ctan.org/pkg/moderntimeline)

The script `compile.sh` compiles with pdflatex then moves the pdfs.
