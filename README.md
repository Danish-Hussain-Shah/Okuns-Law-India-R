📊 Testing Okun’s Law in India (2000–2024)
📌 Project Overview

This project tests the relationship between economic growth and unemployment in India using annual data from 2000 to 2024. The objective is to check whether Okun’s Law holds for India or whether the country has experienced jobless growth.

Two regression models are used:

A basic model using GDP growth and unemployment level

A dynamic model using lagged GDP growth and change in unemployment

The analysis is done using R.

📁 Dataset

Source: World Bank

Variables:

Year

GDP Growth (annual %)

Unemployment Rate (% of labour force)

File:

data/okuns_law_india.csv

🛠 Tools Used

R

RStudio

Basic econometrics (linear regression)

Data visualization

📈 Methodology

Cleaned and merged macroeconomic data

Plotted time series of GDP growth and unemployment

Estimated two regression models:

Unemployment = f(GDP Growth)

Change in Unemployment = f(Lagged GDP Growth)

Interpreted results to evaluate Okun’s Law in Indian context

📊 Key Findings

The relationship between GDP growth and unemployment in India is weak and statistically insignificant

The results suggest the presence of jobless growth

Economic growth alone has not been sufficient to generate employment during the period studied

📄 Project Structure
Okuns-Law-India-R/
├── data/
├── code/
├── output/
├── report/
└── README.md

📎 How to Run

Open code/okuns_law_analysis.R in RStudio

Set working directory to project folder

Run the script

👤 Author

Danish Hussain Shah
MSc Economics