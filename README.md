# ContentFarm

This is a team project for the course "Introduction to Data Science with R" at National Taiwan University (NTU).

Also, this project reached the final round of the 1st NTU CS+X competition.

[The online presentation page (powered by RShiny)](https://allenlo.shinyapps.io/contentfarm/)


User Story: 
----

* In recent days, information explosion is an inevitable problem.
* "Useless" information prevails and pollutes the Internet.
* The articles from [content farms](https://en.wikipedia.org/wiki/Content_farm), especially are the main representative of the pollution.
* These articles often have attractive headers as click baits.
* This project dedicates to examine the headers of content farms' articles in Taiwan and analyze the "attraciveness" of these headers.

Codes:
----

The web crawler and text mining parts are written with R. (Not in this repository)

The online web page (THIS REPOSITORY) is written with Shiny, an R package for interactive web apps.
To see more details, check [here](https://shiny.rstudio.com/).

User Guides:
----

    For now, the presentation page supports Chinese only.


Four largest content farms in Taiwan are our subjects.
* Teepr
* Bomb01
* Ptt01
* EBCbuzz

We acquired headers and their respective "attractiveness" (article's LIKEs on Facebook) with web crawlers (Facebook API).

Then using [Jieba](https://github.com/ldkrsi/jieba-zh_TW), an R package for text segmentation, to analyze their features. 
For example, the punctuation marks, parts of speech, the length of headers, high frequency words, etc.

Thus we were able to project those features to space and linked the attraciveness to them.
We constructed two models with the work done above to predict the populartity of arbitrary headers.
* Linear Model (LM)
* Support Vector Machine (SVM)
