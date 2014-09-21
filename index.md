---
title       : Basal Metabolic Rate Calculator
subtitle    : Calculate the calories you require to meet your goals.
author      : Richard Werezak
job         : Data Scientist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : logo.png
url         : 
  lib: ../../libraries
  assets: assets

--- .class #id 

## Introducing the BMRate Calculator!

Whether you are trying to gain or lose weight or trying to stay at the same weight you need to know the amount of energy your body requires given your own current
body characteristics.

This handy only calculator will give you your current daily calorie intake
requirement.  You provide:

1. your age
2. your sex
3. your activity level
4. your weight
5. and your height

The calulator will then tell you your current daily calorie intake
requirement.  By specifying the weight you want to achieve and
the activity level that you are willing to perform, the calulator will
tell you how much food in calories you need to consume.

---

## Example Calculation of BMR

For example, if you have the following characteristics:


```r
input<-data.frame(
sex="female",
weight=80,   # in kilograms
height=175,  # in centimeters
age=40,      # in years
activity.level="Moderately Active")
```

Your daily caloric requirement will be:


```
## [1] 1085
```

---

## Benefits of the BMRate Calculator

The BMRate calculator has the following benefits:

1. it will help you with your health and fitness planning
2. it's simple
3. it's free
4. it's easy to use
5. nothing to install on your computer
6. it's private (the whole thing runs in a web page on your browser)

---

## How to use the BMRate Calculator

Just go to the following URL with your browser:

[https://werezak.shinyapps.io/bmrate/]

Enter your age, sex, activity level, height, and weight. The BMR will appear on the right. 

Enjoy this handy calculator brought to you by Werezak, R, RStudio, Shiny, and Slidify via the Johns Hopkins Data Science Course.



