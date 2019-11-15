# MT5762 Assignment1

# Introduction

Read the associated article on Moodle (__Herald_article.pdf__ _New Zealand Herald_ 4/07/2000).


A forensic scientist has approached you to analyse his data at the end of an experiment. He has been growing Cannabis plants in different soil types and analysing the chemical composition of the leaves. He is specifically interested in whether there are differences between those plants grown in standard store-bought potting mix, and those that are grown in general outdoor soil. It is thought that if a plants chemical composition is very specific to its soil type, then this may assist in the prosecution of persons accused of drug production and distribution. 

The data for this project is contained in the file __potplants_MT5762.csv__. The variables contained in the dataset are the reference codes (not of interest to us), the type of soil used (there are 4 types), and the levels of various elements measured in the leaves. The variables are:

  * __Sample Name__ Reference number of the samples.
  
  * __Group__ The four soil types: Potting mix (pm) and three locations about New Zealand. These are bhb, mb, and nth, being: Blockhouse Bay (Auckland suburb), Mission Bay (Auckland suburb) and Northland (a northern region).
  
  * __Mg-Th__ The elements measured in the leaves. Note the units of measurement are not given.
  

----------------------


# What to do

* Read the data into R. Do some basic plotting and summaries to familiarise yourself with the data. Bear in mind the focus is differences between soils.

* Produce a report that addresses the questions below. Your target audience is statistically trained, so you can assume terms are understood i.e. you do not need to explain basic statistical ideas. 


----------------------

## Questions

The primary questions requiring answering are:

1. Do the data indicate differences in the elemental composition of Cannabis leaves grown in different soil types?

1. Are some of the elements related to one another in terms of their levels in the sampled leaves? Present no more than 5 pairs of elements - choose pairs with interesting relationships.

1. Do you think the results of this experiment will ultimately allow the determination of what soil the plants were grown in, just from the elemental composition of the leaves? Be sure to consider what __population(s)__ we are generalising to. Give a detailed response i.e. if you do not think the aims of the study can be achieved, explain why, and what would be required to achieve the goal. 

__You do not have to analyse all the elements__, only a few (<6) which you consider relevant in answering the above questions. 


## Statistical requirements

  * Formal statistical tests and estimates are required here. If multiple post-hoc comparisons are conducted then they should be adjusted for multiple comparisons e.g. Tukey's. 
  
  * Use a type-1 error of 5% to determine statistical significance in all cases. Confidence intervals for estimates should be given and be 95%.
  
  * Check all assumptions formally. Describe what these violations mean for the validity of conclusions.
  
  * Be clear what hypotheses are being tested in each instance.
  
  * For one test that has assumptions badly violated, research a _non-parametric_ equivalent. Conduct this test and interpret the results (reference accordingly).


----------------------


# Assessment

The report should be roughly limited to 1500 words and should contain relevant plots - however you can put extra output in an appendix at the end. Include an introductory section describing the purpose of your investigation and a discussion at the end summarising your findings. Include an executive summary at the start of the report. 

Do not include raw output or code in the body of the report - make sure any results you include are tidy (e.g. in a table) and are relevant. Include an appendix in your report with the SAS & R code that you used. 


The report should:
 
* answer all the questions given above

* be 'professionally' produced for your target audience in a word processor (e.g. Microsoft Word)

* include references in an established academic style, for example your software, the article above, other articles

* be converted to a .pdf file (and zipped with your code file).

* be uploaded to Moodle

* include your ID number in the document name

* don't use your name in the document, only your ID number for anonymity.


You'll be assessed on:

* Your report - is it suitable for a client? Professional, presentable, referenced, logical, readable.

* Your understanding of the statistical analyses conducted. Have these been conducted correctly and the correct interpretation of results given? Have assumptions been checked.

* Your general understanding of the problem, the questions, and your responses to them.

