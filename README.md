<h1>[DADS5001] Mini Project - Living death</h1>
<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#overview">Overview</a>
      <ul>
        <li><a href="#dataset">Dataset</a></li>
        <li><a href="#main-question">Main Question</a></li>
      </ul>
    </li>
    <li>
      <a href="#import-data">Import Data</a>
      <ul>
        <li><a href="#cause-of-death">Cause of Death</a></li>
        <li><a href="#continent">Continent</a></li>
        <li><a href="#world-population">World Population</a></li>
      </ul>
    </li>
    <li>
      <a href="#cleansing">Cleansing</a>
      <ul>
        <li><a href="#cleansing-world-population">Cleansing World Population</a></li>
        <li><a href="#cleansing-continent">Cleansing Continent</a></li>
        <li><a href="#cleansing-cause-of-death">Cleansing Cause of Death</a></li>
        <li><a href="#create-main-table">Create Main Table</a></li>
      </ul>
    </li>
    <li><a href="Markdown/Death_Cause_Analysis.md" target="_blank">Death Cause Analysis</a></li>
    <li><a href="Markdown/Event_Analysis.md" target="_blank">Event Analysis</a></li>
    <li><a href="#summary">Summary</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Overview

### Dataset
https://www.kaggle.com/datasets/adriandiazny/world-wide-death-factors
https://www.kaggle.com/datasets/statchaitya/country-to-continent
https://www.kaggle.com/datasets/kaggleashwin/population-dataset
https://www.macrotrends.net/global-metrics/countries/TWN/taiwan/population


### Main Question
1. สาเหตุการเสียชีวิตที่พบมากที่สุดทั่วโลกตั้งแต่ปี 1990 ถึง 2019 คืออะไร
2. ปัจจัยเสี่ยงใดที่มีผลต่อการเสียชีวิตมากที่สุดในแต่ละทวีป
3. แนวโน้มของอัตราการเปลี่ยนแปลงในการเสียชีวิตจาก 4 ปัจจัยเสี่ยง มีการเพิ่มขึ้นหรือลดลงอย่างไร
4. อัตราการเสียชีวิตจากโรคเรื้อรังในภูมิภาคเอเชียตะวันออกเฉียงใต้มีแนวโน้มเป็นอย่างไร
5. แนวโน้มของอัตราการเปลี่ยนแปลงในการเสียชีวิตของประชากรประเทศไทยเทียบกับ เมียนมาร์ ฟิลิปปินส์ และเวียดนาม ในช่วงปี 1990 ถึง 2019 เป็นอย่างไร
6. เหตุการณ์สำคัญที่เกิดขึ้นในแต่ละช่วงเวลา มีความสอดคล้องและดำเนินไปในทิศทางเดียวกันกับข้อมูลจำนวนผู้เสียชีวิตหรือไม่

<!-- Import Data -->
## Import Data

### Cause of Death

<b>Dataset:</b> <a href="https://github.com/imyajaii/dads5001-mini-project-01/blob/develop/dataset/cause_of_deaths.csv" target="_blank">Cause of Death</a>

<b>DataFrame Info</b>

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 6120 entries, 0 to 6119
    Data columns (total 34 columns):
     #   Column                                      Non-Null Count  Dtype 
    ---  ------                                      --------------  ----- 
     0   Country/Territory                           6120 non-null   object
     1   Code                                        6120 non-null   object
     2   Year                                        6120 non-null   int64 
     3   Meningitis                                  6120 non-null   int64 
     4   Alzheimer's Disease and Other Dementias     6120 non-null   int64 
     5   Parkinson's Disease                         6120 non-null   int64 
     6   Nutritional Deficiencies                    6120 non-null   int64 
     7   Malaria                                     6120 non-null   int64 
     8   Drowning                                    6120 non-null   int64 
     9   Interpersonal Violence                      6120 non-null   int64 
     10  Maternal Disorders                          6120 non-null   int64 
     11  HIV/AIDS                                    6120 non-null   int64 
     12  Drug Use Disorders                          6120 non-null   int64 
     13  Tuberculosis                                6120 non-null   int64 
     14  Cardiovascular Diseases                     6120 non-null   int64 
     15  Lower Respiratory Infections                6120 non-null   int64 
     16  Neonatal Disorders                          6120 non-null   int64 
     17  Alcohol Use Disorders                       6120 non-null   int64 
     18  Self-harm                                   6120 non-null   int64 
     19  Exposure to Forces of Nature                6120 non-null   int64 
     20  Diarrheal Diseases                          6120 non-null   int64 
     21  Environmental Heat and Cold Exposure        6120 non-null   int64 
     22  Neoplasms                                   6120 non-null   int64 
     23  Conflict and Terrorism                      6120 non-null   int64 
     24  Diabetes Mellitus                           6120 non-null   int64 
     25  Chronic Kidney Disease                      6120 non-null   int64 
     26  Poisonings                                  6120 non-null   int64 
     27  Protein-Energy Malnutrition                 6120 non-null   int64 
     28  Road Injuries                               6120 non-null   int64 
     29  Chronic Respiratory Diseases                6120 non-null   int64 
     30  Cirrhosis and Other Chronic Liver Diseases  6120 non-null   int64 
     31  Digestive Diseases                          6120 non-null   int64 
     32  Fire, Heat, and Hot Substances              6120 non-null   int64 
     33  Acute Hepatitis                             6120 non-null   int64 
    dtypes: int64(32), object(2)
    memory usage: 1.6+ MB

<b>First five recoreds</b>

  <div id="df-c038362d-8990-47b3-9ac0-3c692107364c" class="colab-df-container">
    <div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country/Territory</th>
      <th>Code</th>
      <th>Year</th>
      <th>Meningitis</th>
      <th>Alzheimer's Disease and Other Dementias</th>
      <th>Parkinson's Disease</th>
      <th>Nutritional Deficiencies</th>
      <th>Malaria</th>
      <th>Drowning</th>
      <th>Interpersonal Violence</th>
      <th>...</th>
      <th>Diabetes Mellitus</th>
      <th>Chronic Kidney Disease</th>
      <th>Poisonings</th>
      <th>Protein-Energy Malnutrition</th>
      <th>Road Injuries</th>
      <th>Chronic Respiratory Diseases</th>
      <th>Cirrhosis and Other Chronic Liver Diseases</th>
      <th>Digestive Diseases</th>
      <th>Fire, Heat, and Hot Substances</th>
      <th>Acute Hepatitis</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1990</td>
      <td>2159</td>
      <td>1116</td>
      <td>371</td>
      <td>2087</td>
      <td>93</td>
      <td>1370</td>
      <td>1538</td>
      <td>...</td>
      <td>2108</td>
      <td>3709</td>
      <td>338</td>
      <td>2054</td>
      <td>4154</td>
      <td>5945</td>
      <td>2673</td>
      <td>5005</td>
      <td>323</td>
      <td>2985</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1991</td>
      <td>2218</td>
      <td>1136</td>
      <td>374</td>
      <td>2153</td>
      <td>189</td>
      <td>1391</td>
      <td>2001</td>
      <td>...</td>
      <td>2120</td>
      <td>3724</td>
      <td>351</td>
      <td>2119</td>
      <td>4472</td>
      <td>6050</td>
      <td>2728</td>
      <td>5120</td>
      <td>332</td>
      <td>3092</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1992</td>
      <td>2475</td>
      <td>1162</td>
      <td>378</td>
      <td>2441</td>
      <td>239</td>
      <td>1514</td>
      <td>2299</td>
      <td>...</td>
      <td>2153</td>
      <td>3776</td>
      <td>386</td>
      <td>2404</td>
      <td>5106</td>
      <td>6223</td>
      <td>2830</td>
      <td>5335</td>
      <td>360</td>
      <td>3325</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1993</td>
      <td>2812</td>
      <td>1187</td>
      <td>384</td>
      <td>2837</td>
      <td>108</td>
      <td>1687</td>
      <td>2589</td>
      <td>...</td>
      <td>2195</td>
      <td>3862</td>
      <td>425</td>
      <td>2797</td>
      <td>5681</td>
      <td>6445</td>
      <td>2943</td>
      <td>5568</td>
      <td>396</td>
      <td>3601</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1994</td>
      <td>3027</td>
      <td>1211</td>
      <td>391</td>
      <td>3081</td>
      <td>211</td>
      <td>1809</td>
      <td>2849</td>
      <td>...</td>
      <td>2231</td>
      <td>3932</td>
      <td>451</td>
      <td>3038</td>
      <td>6001</td>
      <td>6664</td>
      <td>3027</td>
      <td>5739</td>
      <td>420</td>
      <td>3816</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 34 columns</p>

<b>Unique Country Code</b>

    array(['AFG', 'ALB', 'DZA', 'ASM', 'AND', 'AGO', 'ATG', 'ARG', 'ARM',
           'AUS', 'AUT', 'AZE', 'BHS', 'BHR', 'BGD', 'BRB', 'BLR', 'BEL',
           'BLZ', 'BEN', 'BMU', 'BTN', 'BOL', 'BIH', 'BWA', 'BRA', 'BRN',
           'BGR', 'BFA', 'BDI', 'KHM', 'CMR', 'CAN', 'CPV', 'CAF', 'TCD',
           'CHL', 'CHN', 'COL', 'COM', 'COG', 'COK', 'CRI', 'CIV', 'HRV',
           'CUB', 'CYP', 'CZE', 'COD', 'DNK', 'DJI', 'DMA', 'DOM', 'ECU',
           'EGY', 'SLV', 'GNQ', 'ERI', 'EST', 'SWZ', 'ETH', 'FJI', 'FIN',
           'FRA', 'GAB', 'GMB', 'GEO', 'DEU', 'GHA', 'GRC', 'GRL', 'GRD',
           'GUM', 'GTM', 'GIN', 'GNB', 'GUY', 'HTI', 'HND', 'HUN', 'ISL',
           'IND', 'IDN', 'IRN', 'IRQ', 'IRL', 'ISR', 'ITA', 'JAM', 'JPN',
           'JOR', 'KAZ', 'KEN', 'KIR', 'KWT', 'KGZ', 'LAO', 'LVA', 'LBN',
           'LSO', 'LBR', 'LBY', 'LTU', 'LUX', 'MDG', 'MWI', 'MYS', 'MDV',
           'MLI', 'MLT', 'MHL', 'MRT', 'MUS', 'MEX', 'FSM', 'MDA', 'MCO',
           'MNG', 'MNE', 'MAR', 'MOZ', 'MMR', 'NAM', 'NRU', 'NPL', 'NLD',
           'NZL', 'NIC', 'NER', 'NGA', 'NIU', 'PRK', 'MKD', 'MNP', 'NOR',
           'OMN', 'PAK', 'PLW', 'PSE', 'PAN', 'PNG', 'PRY', 'PER', 'PHL',
           'POL', 'PRT', 'PRI', 'QAT', 'ROU', 'RUS', 'RWA', 'KNA', 'LCA',
           'VCT', 'WSM', 'SMR', 'STP', 'SAU', 'SEN', 'SRB', 'SYC', 'SLE',
           'SGP', 'SVK', 'SVN', 'SLB', 'SOM', 'ZAF', 'KOR', 'SSD', 'ESP',
           'LKA', 'SDN', 'SUR', 'SWE', 'CHE', 'SYR', 'TWN', 'TJK', 'TZA',
           'THA', 'TLS', 'TGO', 'TKL', 'TON', 'TTO', 'TUN', 'TUR', 'TKM',
           'TUV', 'UGA', 'UKR', 'ARE', 'GBR', 'USA', 'VIR', 'URY', 'UZB',
           'VUT', 'VEN', 'VNM', 'YEM', 'ZMB', 'ZWE'], dtype=object)
    Total: 204

### Continent

<b>Dataset:</b> <a href="https://github.com/imyajaii/dads5001-mini-project-01/blob/develop/dataset/countryContinent.csv" target="_blank">Continent</a>

<b>DataFrame Info</b>


    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 249 entries, 0 to 248
    Data columns (total 9 columns):
     #   Column           Non-Null Count  Dtype  
    ---  ------           --------------  -----  
     0   country          249 non-null    object 
     1   code_2           248 non-null    object 
     2   code_3           249 non-null    object 
     3   country_code     249 non-null    int64  
     4   iso_3166_2       249 non-null    object 
     5   continent        240 non-null    object 
     6   sub_region       240 non-null    object 
     7   region_code      240 non-null    float64
     8   sub_region_code  240 non-null    float64
    dtypes: float64(2), int64(1), object(6)
    memory usage: 17.6+ KB

### World Population

<b>Dataset:</b> <a href="https://github.com/imyajaii/dads5001-mini-project-01/blob/develop/dataset/World-population-by-countries-dataset.csv" target="_blank">World Population</a>

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 266 entries, 0 to 265
    Data columns (total 64 columns):
     #   Column        Non-Null Count  Dtype  
    ---  ------        --------------  -----  
     0   Country Name  266 non-null    object 
     1   Country Code  266 non-null    object 
     2   1960          264 non-null    float64
     3   1961          264 non-null    float64
     4   1962          264 non-null    float64
     5   1963          264 non-null    float64
     6   1964          264 non-null    float64
     7   1965          264 non-null    float64
     8   1966          264 non-null    float64
     9   1967          264 non-null    float64
     10  1968          264 non-null    float64
     11  1969          264 non-null    float64
     12  1970          264 non-null    float64
     13  1971          264 non-null    float64
     14  1972          264 non-null    float64
     15  1973          264 non-null    float64
     16  1974          264 non-null    float64
     17  1975          264 non-null    float64
     18  1976          264 non-null    float64
     19  1977          264 non-null    float64
     20  1978          264 non-null    float64
     21  1979          264 non-null    float64
     22  1980          264 non-null    float64
     23  1981          264 non-null    float64
     24  1982          264 non-null    float64
     25  1983          264 non-null    float64
     26  1984          264 non-null    float64
     27  1985          264 non-null    float64
     28  1986          264 non-null    float64
     29  1987          264 non-null    float64
     30  1988          264 non-null    float64
     31  1989          264 non-null    float64
     32  1990          265 non-null    float64
     33  1991          265 non-null    float64
     34  1992          264 non-null    float64
     35  1993          264 non-null    float64
     36  1994          264 non-null    float64
     37  1995          265 non-null    float64
     38  1996          265 non-null    float64
     39  1997          265 non-null    float64
     40  1998          265 non-null    float64
     41  1999          265 non-null    float64
     42  2000          265 non-null    float64
     43  2001          265 non-null    float64
     44  2002          265 non-null    float64
     45  2003          265 non-null    float64
     46  2004          265 non-null    float64
     47  2005          265 non-null    float64
     48  2006          265 non-null    float64
     49  2007          265 non-null    float64
     50  2008          265 non-null    float64
     51  2009          265 non-null    float64
     52  2010          265 non-null    float64
     53  2011          265 non-null    float64
     54  2012          264 non-null    float64
     55  2013          264 non-null    float64
     56  2014          264 non-null    float64
     57  2015          264 non-null    float64
     58  2016          264 non-null    float64
     59  2017          264 non-null    float64
     60  2018          264 non-null    float64
     61  2019          264 non-null    float64
     62  2020          264 non-null    float64
     63  2021          264 non-null    float64
    dtypes: float64(62), object(2)
    memory usage: 133.1+ KB

<!-- Cleansing -->
## Cleansing

### Cleansing World Population
Drop column 1960 - 1989 , 2020 , 2021 of World Population

Convert  World Population of column 1990 - 2019 to be row of each of Column Country Code (the new name of column is Population) keep column Country Name
<table border="1">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country Name</th>
      <th>Country Code</th>
      <th>Year</th>
      <th>Population</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Aruba</td>
      <td>ABW</td>
      <td>1990</td>
      <td>62152.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Africa Eastern and Southern</td>
      <td>AFE</td>
      <td>1990</td>
      <td>304648010.0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1990</td>
      <td>12412311.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Africa Western and Central</td>
      <td>AFW</td>
      <td>1990</td>
      <td>204803865.0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Angola</td>
      <td>AGO</td>
      <td>1990</td>
      <td>11848385.0</td>
    </tr>
  </tbody>
</table>
</div>

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 7980 entries, 0 to 7979
    Data columns (total 4 columns):
     #   Column        Non-Null Count  Dtype  
    ---  ------        --------------  -----  
     0   Country Name  7980 non-null   object 
     1   Country Code  7980 non-null   object 
     2   Year          7980 non-null   object 
     3   Population    7939 non-null   float64
    dtypes: float64(1), object(3)
    memory usage: 249.5+ KB
    

### Cleansing Continent
Drop column contry, code_2, contry_code, iso_3166_2, region_code, sub_region_code

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 249 entries, 0 to 248
    Data columns (total 3 columns):
     #   Column      Non-Null Count  Dtype 
    ---  ------      --------------  ----- 
     0   code_3      249 non-null    object
     1   continent   240 non-null    object
     2   sub_region  240 non-null    object
    dtypes: object(3)
    memory usage: 6.0+ KB

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>code_3</th>
      <th>continent</th>
      <th>sub_region</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
    <tr>
      <th>1</th>
      <td>ALA</td>
      <td>Europe</td>
      <td>Northern Europe</td>
    </tr>
    <tr>
      <th>2</th>
      <td>ALB</td>
      <td>Europe</td>
      <td>Southern Europe</td>
    </tr>
    <tr>
      <th>3</th>
      <td>DZA</td>
      <td>Africa</td>
      <td>Northern Africa</td>
    </tr>
    <tr>
      <th>4</th>
      <td>ASM</td>
      <td>Oceania</td>
      <td>Polynesia</td>
    </tr>
  </tbody>
</table>
</div>

### Cleansing Cause of Death

#### Merge data by Country code 3 digits

```python
# prompt: check if the column Code of df_cause_of_death was all in column code_3 of df_cintinent

# Convert both columns to sets for efficient comparison
cause_of_death_codes = set(df_cause_of_death['Code'].unique())
continent_codes = set(df_continent['code_3'].unique())

# Check if all codes in df_cause_of_death are present in df_continent
all_codes_present = cause_of_death_codes.issubset(continent_codes)

print(f"Are all 'Code' values from df_cause_of_death present in 'code_3' of df_continent? {all_codes_present}")

```

    Are all 'Code' values from df_cause_of_death present in 'code_3' of df_continent? True
    

```python
df_join1 = pd.merge( df_cause_of_death, df_continent, left_on='Code', right_on='code_3', how='left' )
```
First five records
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country/Territory</th>
      <th>Code</th>
      <th>Year</th>
      <th>Meningitis</th>
      <th>Alzheimer's Disease and Other Dementias</th>
      <th>Parkinson's Disease</th>
      <th>Nutritional Deficiencies</th>
      <th>Malaria</th>
      <th>Drowning</th>
      <th>Interpersonal Violence</th>
      <th>...</th>
      <th>Protein-Energy Malnutrition</th>
      <th>Road Injuries</th>
      <th>Chronic Respiratory Diseases</th>
      <th>Cirrhosis and Other Chronic Liver Diseases</th>
      <th>Digestive Diseases</th>
      <th>Fire, Heat, and Hot Substances</th>
      <th>Acute Hepatitis</th>
      <th>code_3</th>
      <th>continent</th>
      <th>sub_region</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1990</td>
      <td>2159</td>
      <td>1116</td>
      <td>371</td>
      <td>2087</td>
      <td>93</td>
      <td>1370</td>
      <td>1538</td>
      <td>...</td>
      <td>2054</td>
      <td>4154</td>
      <td>5945</td>
      <td>2673</td>
      <td>5005</td>
      <td>323</td>
      <td>2985</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1991</td>
      <td>2218</td>
      <td>1136</td>
      <td>374</td>
      <td>2153</td>
      <td>189</td>
      <td>1391</td>
      <td>2001</td>
      <td>...</td>
      <td>2119</td>
      <td>4472</td>
      <td>6050</td>
      <td>2728</td>
      <td>5120</td>
      <td>332</td>
      <td>3092</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1992</td>
      <td>2475</td>
      <td>1162</td>
      <td>378</td>
      <td>2441</td>
      <td>239</td>
      <td>1514</td>
      <td>2299</td>
      <td>...</td>
      <td>2404</td>
      <td>5106</td>
      <td>6223</td>
      <td>2830</td>
      <td>5335</td>
      <td>360</td>
      <td>3325</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1993</td>
      <td>2812</td>
      <td>1187</td>
      <td>384</td>
      <td>2837</td>
      <td>108</td>
      <td>1687</td>
      <td>2589</td>
      <td>...</td>
      <td>2797</td>
      <td>5681</td>
      <td>6445</td>
      <td>2943</td>
      <td>5568</td>
      <td>396</td>
      <td>3601</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1994</td>
      <td>3027</td>
      <td>1211</td>
      <td>391</td>
      <td>3081</td>
      <td>211</td>
      <td>1809</td>
      <td>2849</td>
      <td>...</td>
      <td>3038</td>
      <td>6001</td>
      <td>6664</td>
      <td>3027</td>
      <td>5739</td>
      <td>420</td>
      <td>3816</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 37 columns</p>

<b>DataFrame Info</b>

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 6120 entries, 0 to 6119
    Data columns (total 37 columns):
     #   Column                                      Non-Null Count  Dtype 
    ---  ------                                      --------------  ----- 
     0   Country/Territory                           6120 non-null   object
     1   Code                                        6120 non-null   object
     2   Year                                        6120 non-null   int64 
     3   Meningitis                                  6120 non-null   int64 
     4   Alzheimer's Disease and Other Dementias     6120 non-null   int64 
     5   Parkinson's Disease                         6120 non-null   int64 
     6   Nutritional Deficiencies                    6120 non-null   int64 
     7   Malaria                                     6120 non-null   int64 
     8   Drowning                                    6120 non-null   int64 
     9   Interpersonal Violence                      6120 non-null   int64 
     10  Maternal Disorders                          6120 non-null   int64 
     11  HIV/AIDS                                    6120 non-null   int64 
     12  Drug Use Disorders                          6120 non-null   int64 
     13  Tuberculosis                                6120 non-null   int64 
     14  Cardiovascular Diseases                     6120 non-null   int64 
     15  Lower Respiratory Infections                6120 non-null   int64 
     16  Neonatal Disorders                          6120 non-null   int64 
     17  Alcohol Use Disorders                       6120 non-null   int64 
     18  Self-harm                                   6120 non-null   int64 
     19  Exposure to Forces of Nature                6120 non-null   int64 
     20  Diarrheal Diseases                          6120 non-null   int64 
     21  Environmental Heat and Cold Exposure        6120 non-null   int64 
     22  Neoplasms                                   6120 non-null   int64 
     23  Conflict and Terrorism                      6120 non-null   int64 
     24  Diabetes Mellitus                           6120 non-null   int64 
     25  Chronic Kidney Disease                      6120 non-null   int64 
     26  Poisonings                                  6120 non-null   int64 
     27  Protein-Energy Malnutrition                 6120 non-null   int64 
     28  Road Injuries                               6120 non-null   int64 
     29  Chronic Respiratory Diseases                6120 non-null   int64 
     30  Cirrhosis and Other Chronic Liver Diseases  6120 non-null   int64 
     31  Digestive Diseases                          6120 non-null   int64 
     32  Fire, Heat, and Hot Substances              6120 non-null   int64 
     33  Acute Hepatitis                             6120 non-null   int64 
     34  code_3                                      6120 non-null   object
     35  continent                                   6120 non-null   object
     36  sub_region                                  6120 non-null   object
    dtypes: int64(32), object(5)
    memory usage: 1.7+ MB

<b>Drop duplicate column and select first five records</b>

```python
df_join1 = df_join1.drop(['code_3'], axis=1) # Drop duplicate column
df_join1.head()
```

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country/Territory</th>
      <th>Code</th>
      <th>Year</th>
      <th>Meningitis</th>
      <th>Alzheimer's Disease and Other Dementias</th>
      <th>Parkinson's Disease</th>
      <th>Nutritional Deficiencies</th>
      <th>Malaria</th>
      <th>Drowning</th>
      <th>Interpersonal Violence</th>
      <th>...</th>
      <th>Poisonings</th>
      <th>Protein-Energy Malnutrition</th>
      <th>Road Injuries</th>
      <th>Chronic Respiratory Diseases</th>
      <th>Cirrhosis and Other Chronic Liver Diseases</th>
      <th>Digestive Diseases</th>
      <th>Fire, Heat, and Hot Substances</th>
      <th>Acute Hepatitis</th>
      <th>continent</th>
      <th>sub_region</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1990</td>
      <td>2159</td>
      <td>1116</td>
      <td>371</td>
      <td>2087</td>
      <td>93</td>
      <td>1370</td>
      <td>1538</td>
      <td>...</td>
      <td>338</td>
      <td>2054</td>
      <td>4154</td>
      <td>5945</td>
      <td>2673</td>
      <td>5005</td>
      <td>323</td>
      <td>2985</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1991</td>
      <td>2218</td>
      <td>1136</td>
      <td>374</td>
      <td>2153</td>
      <td>189</td>
      <td>1391</td>
      <td>2001</td>
      <td>...</td>
      <td>351</td>
      <td>2119</td>
      <td>4472</td>
      <td>6050</td>
      <td>2728</td>
      <td>5120</td>
      <td>332</td>
      <td>3092</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1992</td>
      <td>2475</td>
      <td>1162</td>
      <td>378</td>
      <td>2441</td>
      <td>239</td>
      <td>1514</td>
      <td>2299</td>
      <td>...</td>
      <td>386</td>
      <td>2404</td>
      <td>5106</td>
      <td>6223</td>
      <td>2830</td>
      <td>5335</td>
      <td>360</td>
      <td>3325</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1993</td>
      <td>2812</td>
      <td>1187</td>
      <td>384</td>
      <td>2837</td>
      <td>108</td>
      <td>1687</td>
      <td>2589</td>
      <td>...</td>
      <td>425</td>
      <td>2797</td>
      <td>5681</td>
      <td>6445</td>
      <td>2943</td>
      <td>5568</td>
      <td>396</td>
      <td>3601</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1994</td>
      <td>3027</td>
      <td>1211</td>
      <td>391</td>
      <td>3081</td>
      <td>211</td>
      <td>1809</td>
      <td>2849</td>
      <td>...</td>
      <td>451</td>
      <td>3038</td>
      <td>6001</td>
      <td>6664</td>
      <td>3027</td>
      <td>5739</td>
      <td>420</td>
      <td>3816</td>
      <td>Asia</td>
      <td>Southern Asia</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 36 columns</p>

```python
# prompt: move column continent and sub_region into next of column Code

cols = list(df_join1.columns)
continent_index = cols.index('continent')
sub_region_index = cols.index('sub_region')
code_index = cols.index('Code')

# Move 'continent' and 'sub_region' columns to the right of 'Code'
new_cols = cols[:code_index+1] + [cols[continent_index]] + [cols[sub_region_index]] + cols[code_index+1:continent_index] + cols[continent_index+1:sub_region_index] + cols[sub_region_index+1:]
df_join1 = df_join1[new_cols]

df_join1.head()

```
Select first five records

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country/Territory</th>
      <th>Code</th>
      <th>continent</th>
      <th>sub_region</th>
      <th>Year</th>
      <th>Meningitis</th>
      <th>Alzheimer's Disease and Other Dementias</th>
      <th>Parkinson's Disease</th>
      <th>Nutritional Deficiencies</th>
      <th>Malaria</th>
      <th>...</th>
      <th>Diabetes Mellitus</th>
      <th>Chronic Kidney Disease</th>
      <th>Poisonings</th>
      <th>Protein-Energy Malnutrition</th>
      <th>Road Injuries</th>
      <th>Chronic Respiratory Diseases</th>
      <th>Cirrhosis and Other Chronic Liver Diseases</th>
      <th>Digestive Diseases</th>
      <th>Fire, Heat, and Hot Substances</th>
      <th>Acute Hepatitis</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1990</td>
      <td>2159</td>
      <td>1116</td>
      <td>371</td>
      <td>2087</td>
      <td>93</td>
      <td>...</td>
      <td>2108</td>
      <td>3709</td>
      <td>338</td>
      <td>2054</td>
      <td>4154</td>
      <td>5945</td>
      <td>2673</td>
      <td>5005</td>
      <td>323</td>
      <td>2985</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1991</td>
      <td>2218</td>
      <td>1136</td>
      <td>374</td>
      <td>2153</td>
      <td>189</td>
      <td>...</td>
      <td>2120</td>
      <td>3724</td>
      <td>351</td>
      <td>2119</td>
      <td>4472</td>
      <td>6050</td>
      <td>2728</td>
      <td>5120</td>
      <td>332</td>
      <td>3092</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1992</td>
      <td>2475</td>
      <td>1162</td>
      <td>378</td>
      <td>2441</td>
      <td>239</td>
      <td>...</td>
      <td>2153</td>
      <td>3776</td>
      <td>386</td>
      <td>2404</td>
      <td>5106</td>
      <td>6223</td>
      <td>2830</td>
      <td>5335</td>
      <td>360</td>
      <td>3325</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1993</td>
      <td>2812</td>
      <td>1187</td>
      <td>384</td>
      <td>2837</td>
      <td>108</td>
      <td>...</td>
      <td>2195</td>
      <td>3862</td>
      <td>425</td>
      <td>2797</td>
      <td>5681</td>
      <td>6445</td>
      <td>2943</td>
      <td>5568</td>
      <td>396</td>
      <td>3601</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1994</td>
      <td>3027</td>
      <td>1211</td>
      <td>391</td>
      <td>3081</td>
      <td>211</td>
      <td>...</td>
      <td>2231</td>
      <td>3932</td>
      <td>451</td>
      <td>3038</td>
      <td>6001</td>
      <td>6664</td>
      <td>3027</td>
      <td>5739</td>
      <td>420</td>
      <td>3816</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 36 columns</p>

#### Check Invalid Country

```python
join1_codes = set(df_join1['Code'].unique())
population_codes = set(df_population_melted['Country Code'].unique())

codes_not_in_population = join1_codes - population_codes

print("Codes in df_join1['Code'] that are not in df_population['Country Code']:\n", codes_not_in_population)
```

    Codes in df_join1['Code'] that are not in df_population['Country Code']:
     {'NIU', 'TKL', 'TWN', 'COK'}

```python
join1 = set(df_join1['Code'].unique())
population = set(df_population_melted['Country Code'].unique())

# Check if all codes in df_cause_of_death are present in df_continent
all_codes_present = join1.issubset(population)

print(f"Are all 'Code' values from df_cause_of_death present in 'code_3' of df_continent? {all_codes_present}")
```

    Are all 'Code' values from df_cause_of_death present in 'code_3' of df_continent? False

##### Import Taiwan
<b>Dataset: </b> <a href="https://github.com/imyajaii/dads5001-mini-project-01/blob/develop/dataset/taiwan-population.csv" target="_blank">Taiwan Population</a>

DataFrame Info


    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 151 entries, 0 to 150
    Data columns (total 3 columns):
     #   Column            Non-Null Count  Dtype  
    ---  ------            --------------  -----  
     0   date              151 non-null    object 
     1    Population       151 non-null    int64  
     2    Annual % Change  150 non-null    float64
    dtypes: float64(1), int64(1), object(1)
    memory usage: 3.7+ KB

First five records

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>date</th>
      <th>Population</th>
      <th>Annual % Change</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>31/12/1950</td>
      <td>7623130</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>1</th>
      <td>31/12/1951</td>
      <td>7934689</td>
      <td>4.09</td>
    </tr>
    <tr>
      <th>2</th>
      <td>31/12/1952</td>
      <td>8251039</td>
      <td>3.99</td>
    </tr>
    <tr>
      <th>3</th>
      <td>31/12/1953</td>
      <td>8572131</td>
      <td>3.89</td>
    </tr>
    <tr>
      <th>4</th>
      <td>31/12/1954</td>
      <td>8897776</td>
      <td>3.80</td>
    </tr>
  </tbody>
</table>

```python
# prompt: change date of column date into year
# Assuming 'df_taiwan' is your DataFrame and 'date' is the column containing dates
df_taiwan['Year'] = pd.to_datetime(df_taiwan['date']).dt.year
df_taiwan
```

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>date</th>
      <th>Population</th>
      <th>Annual % Change</th>
      <th>Year</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>31/12/1950</td>
      <td>7623130</td>
      <td>NaN</td>
      <td>1950</td>
    </tr>
    <tr>
      <th>1</th>
      <td>31/12/1951</td>
      <td>7934689</td>
      <td>4.09</td>
      <td>1951</td>
    </tr>
    <tr>
      <th>2</th>
      <td>31/12/1952</td>
      <td>8251039</td>
      <td>3.99</td>
      <td>1952</td>
    </tr>
    <tr>
      <th>3</th>
      <td>31/12/1953</td>
      <td>8572131</td>
      <td>3.89</td>
      <td>1953</td>
    </tr>
    <tr>
      <th>4</th>
      <td>31/12/1954</td>
      <td>8897776</td>
      <td>3.80</td>
      <td>1954</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>146</th>
      <td>31/12/2096</td>
      <td>15590180</td>
      <td>-0.62</td>
      <td>2096</td>
    </tr>
    <tr>
      <th>147</th>
      <td>31/12/2097</td>
      <td>15497260</td>
      <td>-0.60</td>
      <td>2097</td>
    </tr>
    <tr>
      <th>148</th>
      <td>31/12/2098</td>
      <td>15408434</td>
      <td>-0.57</td>
      <td>2098</td>
    </tr>
    <tr>
      <th>149</th>
      <td>31/12/2099</td>
      <td>15323545</td>
      <td>-0.55</td>
      <td>2099</td>
    </tr>
    <tr>
      <th>150</th>
      <td>31/12/2100</td>
      <td>15241961</td>
      <td>-0.53</td>
      <td>2100</td>
    </tr>
  </tbody>
</table>
<p>151 rows × 4 columns</p>

```python
# prompt: create column Country in first column all data was Taiwan , column Code in second column all data was TWN and move column Year into third column

# Create new columns 'Country' and 'Code'
df_taiwan['Country'] = 'Taiwan'
df_taiwan['Code'] = 'TWN'

# Get the list of column names
cols = list(df_taiwan.columns)

# Find the index of the 'Year' column
year_index = cols.index('Year')

# Remove 'Year' from its original position
cols.pop(year_index)

# Insert 'Year' at the third position (index 2)
cols.insert(2, 'Year')

# Reorder the DataFrame columns based on the new list
df_taiwan = df_taiwan[cols]

df_taiwan.head()

```
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>date</th>
      <th>Population</th>
      <th>Year</th>
      <th>Annual % Change</th>
      <th>Country</th>
      <th>Code</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>31/12/1950</td>
      <td>7623130</td>
      <td>1950</td>
      <td>NaN</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>1</th>
      <td>31/12/1951</td>
      <td>7934689</td>
      <td>1951</td>
      <td>4.09</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>2</th>
      <td>31/12/1952</td>
      <td>8251039</td>
      <td>1952</td>
      <td>3.99</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>3</th>
      <td>31/12/1953</td>
      <td>8572131</td>
      <td>1953</td>
      <td>3.89</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>4</th>
      <td>31/12/1954</td>
      <td>8897776</td>
      <td>1954</td>
      <td>3.80</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
  </tbody>
</table>

```python
# prompt: drop column date , Annual % Change

df_taiwan = df_taiwan.drop(['date', ' Annual % Change'], axis=1)

```
Display first five records

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Population</th>
      <th>Year</th>
      <th>Country</th>
      <th>Code</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>7623130</td>
      <td>1950</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>1</th>
      <td>7934689</td>
      <td>1951</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>2</th>
      <td>8251039</td>
      <td>1952</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>3</th>
      <td>8572131</td>
      <td>1953</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>4</th>
      <td>8897776</td>
      <td>1954</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
  </tbody>
</table>

Display Taiwan DataFrame After Cleansing

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 151 entries, 0 to 150
    Data columns (total 4 columns):
     #   Column       Non-Null Count  Dtype 
    ---  ------       --------------  ----- 
     0    Population  151 non-null    int64 
     1   Year         151 non-null    int32 
     2   Country      151 non-null    object
     3   Code         151 non-null    object
    dtypes: int32(1), int64(1), object(2)
    memory usage: 4.3+ KB

```python
# prompt: change name of column

df_taiwan = df_taiwan.rename(columns={' Population': 'Population', 'Country': 'Country Name', 'Code': 'Country Code'})
df_taiwan.head()

```
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Population</th>
      <th>Year</th>
      <th>Country Name</th>
      <th>Country Code</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>7623130</td>
      <td>1950</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>1</th>
      <td>7934689</td>
      <td>1951</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>2</th>
      <td>8251039</td>
      <td>1952</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>3</th>
      <td>8572131</td>
      <td>1953</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
    <tr>
      <th>4</th>
      <td>8897776</td>
      <td>1954</td>
      <td>Taiwan</td>
      <td>TWN</td>
    </tr>
  </tbody>
</table>

```python
# prompt: move column in this way Country Name , Country Code , Year , Population

new_order = ['Country Name', 'Country Code', 'Year', 'Population']
df_taiwan = df_taiwan[new_order]
df_taiwan.head()

```





  <div id="df-3737521d-bb46-4b78-bd3c-6e4951295099" class="colab-df-container">
    <div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country Name</th>
      <th>Country Code</th>
      <th>Year</th>
      <th>Population</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1950</td>
      <td>7623130</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1951</td>
      <td>7934689</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1952</td>
      <td>8251039</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1953</td>
      <td>8572131</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1954</td>
      <td>8897776</td>
    </tr>
  </tbody>
</table>

```python
# prompt: drop row that was Year 1950 - 1989 , 2020 - 2100 of df_taiwan

years_to_drop = list(range(1950, 1990)) + list(range(2020, 2101))
df_taiwan = df_taiwan[~df_taiwan['Year'].isin(years_to_drop)]

```
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country Name</th>
      <th>Country Code</th>
      <th>Year</th>
      <th>Population</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>40</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1990</td>
      <td>20586174</td>
    </tr>
    <tr>
      <th>41</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1991</td>
      <td>20770620</td>
    </tr>
    <tr>
      <th>42</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1992</td>
      <td>20952222</td>
    </tr>
    <tr>
      <th>43</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1993</td>
      <td>21125717</td>
    </tr>
    <tr>
      <th>44</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1994</td>
      <td>21293437</td>
    </tr>
    <tr>
      <th>45</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1995</td>
      <td>21455813</td>
    </tr>
    <tr>
      <th>46</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1996</td>
      <td>21612429</td>
    </tr>
    <tr>
      <th>47</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1997</td>
      <td>21764843</td>
    </tr>
    <tr>
      <th>48</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1998</td>
      <td>21913672</td>
    </tr>
    <tr>
      <th>49</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>1999</td>
      <td>22057214</td>
    </tr>
    <tr>
      <th>50</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2000</td>
      <td>22194731</td>
    </tr>
    <tr>
      <th>51</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2001</td>
      <td>22333125</td>
    </tr>
    <tr>
      <th>52</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2002</td>
      <td>22469616</td>
    </tr>
    <tr>
      <th>53</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2003</td>
      <td>22593681</td>
    </tr>
    <tr>
      <th>54</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2004</td>
      <td>22703099</td>
    </tr>
    <tr>
      <th>55</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2005</td>
      <td>22796306</td>
    </tr>
    <tr>
      <th>56</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2006</td>
      <td>22874975</td>
    </tr>
    <tr>
      <th>57</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2007</td>
      <td>22942308</td>
    </tr>
    <tr>
      <th>58</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2008</td>
      <td>22998321</td>
    </tr>
    <tr>
      <th>59</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2009</td>
      <td>23044082</td>
    </tr>
    <tr>
      <th>60</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2010</td>
      <td>23083083</td>
    </tr>
    <tr>
      <th>61</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2011</td>
      <td>23143071</td>
    </tr>
    <tr>
      <th>62</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2012</td>
      <td>23234058</td>
    </tr>
    <tr>
      <th>63</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2013</td>
      <td>23330334</td>
    </tr>
    <tr>
      <th>64</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2014</td>
      <td>23422513</td>
    </tr>
    <tr>
      <th>65</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2015</td>
      <td>23512136</td>
    </tr>
    <tr>
      <th>66</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2016</td>
      <td>23594471</td>
    </tr>
    <tr>
      <th>67</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2017</td>
      <td>23665024</td>
    </tr>
    <tr>
      <th>68</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2018</td>
      <td>23726185</td>
    </tr>
    <tr>
      <th>69</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2019</td>
      <td>23777737</td>
    </tr>
  </tbody>
</table>

##### Join missing TWN
```python
# prompt: add row of df_taiwan in to df_population_melted

df_population_melted = pd.concat([df_population_melted, df_taiwan], ignore_index=True)
df_population_melted

```

  <div id="df-38e7d67b-f81b-428f-8b45-caa203a7d7e8" class="colab-df-container">
    <div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country Name</th>
      <th>Country Code</th>
      <th>Year</th>
      <th>Population</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Aruba</td>
      <td>ABW</td>
      <td>1990</td>
      <td>62152.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Africa Eastern and Southern</td>
      <td>AFE</td>
      <td>1990</td>
      <td>304648010.0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>1990</td>
      <td>12412311.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Africa Western and Central</td>
      <td>AFW</td>
      <td>1990</td>
      <td>204803865.0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Angola</td>
      <td>AGO</td>
      <td>1990</td>
      <td>11848385.0</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>8005</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2015</td>
      <td>23512136.0</td>
    </tr>
    <tr>
      <th>8006</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2016</td>
      <td>23594471.0</td>
    </tr>
    <tr>
      <th>8007</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2017</td>
      <td>23665024.0</td>
    </tr>
    <tr>
      <th>8008</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2018</td>
      <td>23726185.0</td>
    </tr>
    <tr>
      <th>8009</th>
      <td>Taiwan</td>
      <td>TWN</td>
      <td>2019</td>
      <td>23777737.0</td>
    </tr>
  </tbody>
</table>

#### Check Invalid Country

```python
# prompt: show column Code in df_join1 was not in column Country Code in df_population

join1_codes = set(df_join1['Code'].unique())
population_codes = set(df_population_melted['Country Code'].unique())

codes_not_in_population = join1_codes - population_codes

print("Codes in df_join1['Code'] that are not in df_population['Country Code']:\n", codes_not_in_population)

```

    Codes in df_join1['Code'] that are not in df_population['Country Code']:
     {'NIU', 'TKL', 'COK'}
    


```python
join1_codes = set(df_join1['Year'].unique())
population_codes = set(df_population_melted['Year'].unique())

codes_not_in_population = join1_codes - population_codes

print("Codes in df_join1['Year'] that are not in df_population['Year']:\n", codes_not_in_population)
```

    Codes in df_join1['Year'] that are not in df_population['Year']:
     set()
    


```python
# prompt: check type of Year in df_join1

print(df_join1['Year'].dtype)

```

    int64
    


```python
df_population_melted['Year'].unique()
```




    array(['1990', '1991', '1992', '1993', '1994', '1995', '1996', '1997',
           '1998', '1999', '2000', '2001', '2002', '2003', '2004', '2005',
           '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013',
           '2014', '2015', '2016', '2017', '2018', '2019', 1990, 1991, 1992,
           1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003,
           2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014,
           2015, 2016, 2017, 2018, 2019], dtype=object)




```python
# Match type of Year before Merge

df_population_melted['Year'] = df_population_melted['Year'].astype('int64')

```


```python
df_population_melted[df_population_melted['Population'].isnull()]
```
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country Name</th>
      <th>Country Code</th>
      <th>Year</th>
      <th>Population</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>110</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>1990</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>376</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>1991</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>642</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>1992</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>659</th>
      <td>Kuwait</td>
      <td>KWT</td>
      <td>1992</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>908</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>1993</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>925</th>
      <td>Kuwait</td>
      <td>KWT</td>
      <td>1993</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>1174</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>1994</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>1191</th>
      <td>Kuwait</td>
      <td>KWT</td>
      <td>1994</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>1440</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>1995</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>1706</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>1996</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>1972</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>1997</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>2238</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>1998</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>2504</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>1999</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>2770</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2000</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>3036</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2001</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>3302</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2002</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>3568</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2003</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>3834</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2004</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>4100</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2005</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>4366</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2006</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>4632</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2007</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>4898</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2008</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>5164</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2009</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>5430</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2010</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>5696</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2011</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>5921</th>
      <td>Eritrea</td>
      <td>ERI</td>
      <td>2012</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>5962</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2012</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>6187</th>
      <td>Eritrea</td>
      <td>ERI</td>
      <td>2013</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>6228</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2013</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>6453</th>
      <td>Eritrea</td>
      <td>ERI</td>
      <td>2014</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>6494</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2014</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>6719</th>
      <td>Eritrea</td>
      <td>ERI</td>
      <td>2015</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>6760</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2015</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>6985</th>
      <td>Eritrea</td>
      <td>ERI</td>
      <td>2016</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>7026</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2016</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>7251</th>
      <td>Eritrea</td>
      <td>ERI</td>
      <td>2017</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>7292</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2017</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>7517</th>
      <td>Eritrea</td>
      <td>ERI</td>
      <td>2018</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>7558</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2018</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>7783</th>
      <td>Eritrea</td>
      <td>ERI</td>
      <td>2019</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>7824</th>
      <td>Not classified</td>
      <td>INX</td>
      <td>2019</td>
      <td>NaN</td>
    </tr>
  </tbody>
</table>

### Create Main Table

#### Merge all data to be main Table
```python
# Merge on multiple keys: Inner join

# Alternative 1
#pd.merge(df_join1, df_population_melted, on=['StudentID', 'CourseID'], how='inner')

# Alternative 2
df_Main_data = pd.merge(df_join1, df_population_melted, left_on=['Code', 'Year'], right_on=['Country Code', 'Year'], how='outer')
df_Main_data
```

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country/Territory</th>
      <th>Code</th>
      <th>continent</th>
      <th>sub_region</th>
      <th>Year</th>
      <th>Meningitis</th>
      <th>Alzheimer's Disease and Other Dementias</th>
      <th>Parkinson's Disease</th>
      <th>Nutritional Deficiencies</th>
      <th>Malaria</th>
      <th>...</th>
      <th>Protein-Energy Malnutrition</th>
      <th>Road Injuries</th>
      <th>Chronic Respiratory Diseases</th>
      <th>Cirrhosis and Other Chronic Liver Diseases</th>
      <th>Digestive Diseases</th>
      <th>Fire, Heat, and Hot Substances</th>
      <th>Acute Hepatitis</th>
      <th>Country Name</th>
      <th>Country Code</th>
      <th>Population</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>1990</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>...</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>Aruba</td>
      <td>ABW</td>
      <td>62152.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>1991</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>...</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>Aruba</td>
      <td>ABW</td>
      <td>64623.0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>1992</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>...</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>Aruba</td>
      <td>ABW</td>
      <td>68240.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>1993</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>...</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>Aruba</td>
      <td>ABW</td>
      <td>72495.0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>1994</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>...</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>Aruba</td>
      <td>ABW</td>
      <td>76705.0</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>8095</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2015</td>
      <td>1439.0</td>
      <td>754.0</td>
      <td>215.0</td>
      <td>3019.0</td>
      <td>2518.0</td>
      <td>...</td>
      <td>2990.0</td>
      <td>2373.0</td>
      <td>2751.0</td>
      <td>1956.0</td>
      <td>4202.0</td>
      <td>632.0</td>
      <td>146.0</td>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>13814642.0</td>
    </tr>
    <tr>
      <th>8096</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2016</td>
      <td>1457.0</td>
      <td>767.0</td>
      <td>219.0</td>
      <td>3056.0</td>
      <td>2050.0</td>
      <td>...</td>
      <td>3027.0</td>
      <td>2436.0</td>
      <td>2788.0</td>
      <td>1962.0</td>
      <td>4264.0</td>
      <td>648.0</td>
      <td>146.0</td>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>14030338.0</td>
    </tr>
    <tr>
      <th>8097</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2017</td>
      <td>1460.0</td>
      <td>781.0</td>
      <td>223.0</td>
      <td>2990.0</td>
      <td>2116.0</td>
      <td>...</td>
      <td>2962.0</td>
      <td>2473.0</td>
      <td>2818.0</td>
      <td>2007.0</td>
      <td>4342.0</td>
      <td>654.0</td>
      <td>144.0</td>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>14236599.0</td>
    </tr>
    <tr>
      <th>8098</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2018</td>
      <td>1450.0</td>
      <td>795.0</td>
      <td>227.0</td>
      <td>2918.0</td>
      <td>2088.0</td>
      <td>...</td>
      <td>2890.0</td>
      <td>2509.0</td>
      <td>2849.0</td>
      <td>2030.0</td>
      <td>4377.0</td>
      <td>657.0</td>
      <td>139.0</td>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>14438812.0</td>
    </tr>
    <tr>
      <th>8099</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2019</td>
      <td>1450.0</td>
      <td>812.0</td>
      <td>232.0</td>
      <td>2884.0</td>
      <td>2068.0</td>
      <td>...</td>
      <td>2855.0</td>
      <td>2554.0</td>
      <td>2891.0</td>
      <td>2065.0</td>
      <td>4437.0</td>
      <td>662.0</td>
      <td>136.0</td>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>14645473.0</td>
    </tr>
  </tbody>
</table>
<p>8100 rows × 39 columns</p>


#### Drop Null and Duplicate columns
```python
# prompt: drop row in column Code that was NaN

df_Main_data = df_Main_data.dropna(subset=['Code'])
df_Main_data = df_Main_data.drop(['Country Name', 'Country Code'], axis=1)
```


```python
df_Main_data
```

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country/Territory</th>
      <th>Code</th>
      <th>continent</th>
      <th>sub_region</th>
      <th>Year</th>
      <th>Meningitis</th>
      <th>Alzheimer's Disease and Other Dementias</th>
      <th>Parkinson's Disease</th>
      <th>Nutritional Deficiencies</th>
      <th>Malaria</th>
      <th>...</th>
      <th>Chronic Kidney Disease</th>
      <th>Poisonings</th>
      <th>Protein-Energy Malnutrition</th>
      <th>Road Injuries</th>
      <th>Chronic Respiratory Diseases</th>
      <th>Cirrhosis and Other Chronic Liver Diseases</th>
      <th>Digestive Diseases</th>
      <th>Fire, Heat, and Hot Substances</th>
      <th>Acute Hepatitis</th>
      <th>Population</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>60</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1990</td>
      <td>2159.0</td>
      <td>1116.0</td>
      <td>371.0</td>
      <td>2087.0</td>
      <td>93.0</td>
      <td>...</td>
      <td>3709.0</td>
      <td>338.0</td>
      <td>2054.0</td>
      <td>4154.0</td>
      <td>5945.0</td>
      <td>2673.0</td>
      <td>5005.0</td>
      <td>323.0</td>
      <td>2985.0</td>
      <td>12412311.0</td>
    </tr>
    <tr>
      <th>61</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1991</td>
      <td>2218.0</td>
      <td>1136.0</td>
      <td>374.0</td>
      <td>2153.0</td>
      <td>189.0</td>
      <td>...</td>
      <td>3724.0</td>
      <td>351.0</td>
      <td>2119.0</td>
      <td>4472.0</td>
      <td>6050.0</td>
      <td>2728.0</td>
      <td>5120.0</td>
      <td>332.0</td>
      <td>3092.0</td>
      <td>13299016.0</td>
    </tr>
    <tr>
      <th>62</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1992</td>
      <td>2475.0</td>
      <td>1162.0</td>
      <td>378.0</td>
      <td>2441.0</td>
      <td>239.0</td>
      <td>...</td>
      <td>3776.0</td>
      <td>386.0</td>
      <td>2404.0</td>
      <td>5106.0</td>
      <td>6223.0</td>
      <td>2830.0</td>
      <td>5335.0</td>
      <td>360.0</td>
      <td>3325.0</td>
      <td>14485543.0</td>
    </tr>
    <tr>
      <th>63</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1993</td>
      <td>2812.0</td>
      <td>1187.0</td>
      <td>384.0</td>
      <td>2837.0</td>
      <td>108.0</td>
      <td>...</td>
      <td>3862.0</td>
      <td>425.0</td>
      <td>2797.0</td>
      <td>5681.0</td>
      <td>6445.0</td>
      <td>2943.0</td>
      <td>5568.0</td>
      <td>396.0</td>
      <td>3601.0</td>
      <td>15816601.0</td>
    </tr>
    <tr>
      <th>64</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1994</td>
      <td>3027.0</td>
      <td>1211.0</td>
      <td>391.0</td>
      <td>3081.0</td>
      <td>211.0</td>
      <td>...</td>
      <td>3932.0</td>
      <td>451.0</td>
      <td>3038.0</td>
      <td>6001.0</td>
      <td>6664.0</td>
      <td>3027.0</td>
      <td>5739.0</td>
      <td>420.0</td>
      <td>3816.0</td>
      <td>17075728.0</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>8095</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2015</td>
      <td>1439.0</td>
      <td>754.0</td>
      <td>215.0</td>
      <td>3019.0</td>
      <td>2518.0</td>
      <td>...</td>
      <td>2108.0</td>
      <td>381.0</td>
      <td>2990.0</td>
      <td>2373.0</td>
      <td>2751.0</td>
      <td>1956.0</td>
      <td>4202.0</td>
      <td>632.0</td>
      <td>146.0</td>
      <td>13814642.0</td>
    </tr>
    <tr>
      <th>8096</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2016</td>
      <td>1457.0</td>
      <td>767.0</td>
      <td>219.0</td>
      <td>3056.0</td>
      <td>2050.0</td>
      <td>...</td>
      <td>2160.0</td>
      <td>393.0</td>
      <td>3027.0</td>
      <td>2436.0</td>
      <td>2788.0</td>
      <td>1962.0</td>
      <td>4264.0</td>
      <td>648.0</td>
      <td>146.0</td>
      <td>14030338.0</td>
    </tr>
    <tr>
      <th>8097</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2017</td>
      <td>1460.0</td>
      <td>781.0</td>
      <td>223.0</td>
      <td>2990.0</td>
      <td>2116.0</td>
      <td>...</td>
      <td>2196.0</td>
      <td>398.0</td>
      <td>2962.0</td>
      <td>2473.0</td>
      <td>2818.0</td>
      <td>2007.0</td>
      <td>4342.0</td>
      <td>654.0</td>
      <td>144.0</td>
      <td>14236599.0</td>
    </tr>
    <tr>
      <th>8098</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2018</td>
      <td>1450.0</td>
      <td>795.0</td>
      <td>227.0</td>
      <td>2918.0</td>
      <td>2088.0</td>
      <td>...</td>
      <td>2240.0</td>
      <td>400.0</td>
      <td>2890.0</td>
      <td>2509.0</td>
      <td>2849.0</td>
      <td>2030.0</td>
      <td>4377.0</td>
      <td>657.0</td>
      <td>139.0</td>
      <td>14438812.0</td>
    </tr>
    <tr>
      <th>8099</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2019</td>
      <td>1450.0</td>
      <td>812.0</td>
      <td>232.0</td>
      <td>2884.0</td>
      <td>2068.0</td>
      <td>...</td>
      <td>2292.0</td>
      <td>405.0</td>
      <td>2855.0</td>
      <td>2554.0</td>
      <td>2891.0</td>
      <td>2065.0</td>
      <td>4437.0</td>
      <td>662.0</td>
      <td>136.0</td>
      <td>14645473.0</td>
    </tr>
  </tbody>
</table>
<p>6120 rows × 37 columns</p>

```python
# prompt: show null data in column Population

df_Main_data[df_Main_data['Population'].isnull()]['Code'].unique()

```




    array(['COK', 'ERI', 'KWT', 'NIU', 'TKL'], dtype=object)




```python
# prompt: list of name of column

column_names = df_Main_data.columns.tolist()
print(column_names)
```

    ['Country/Territory', 'Code', 'continent', 'sub_region', 'Year', 'Meningitis', "Alzheimer's Disease and Other Dementias", "Parkinson's Disease", 'Nutritional Deficiencies', 'Malaria', 'Drowning', 'Interpersonal Violence', 'Maternal Disorders', 'HIV/AIDS', 'Drug Use Disorders', 'Tuberculosis', 'Cardiovascular Diseases', 'Lower Respiratory Infections', 'Neonatal Disorders', 'Alcohol Use Disorders', 'Self-harm', 'Exposure to Forces of Nature', 'Diarrheal Diseases', 'Environmental Heat and Cold Exposure', 'Neoplasms', 'Conflict and Terrorism', 'Diabetes Mellitus', 'Chronic Kidney Disease', 'Poisonings', 'Protein-Energy Malnutrition', 'Road Injuries', 'Chronic Respiratory Diseases', 'Cirrhosis and Other Chronic Liver Diseases', 'Digestive Diseases', 'Fire, Heat, and Hot Substances', 'Acute Hepatitis', 'Population']

#### Rename Columns

```python
#change name of column of df_Main_data replace blank with "_" and Capitalized

df_Main_data = df_Main_data.rename(columns={'Country/Territory': 'Country', 'continent': 'Continent', 'sub_region': 'Sub_region', "Alzheimer's Disease and Other Dementias": 'Alzheimers_Disease_and_Other_Dementias', "Parkinson's Disease": 'Parkinsons_Disease', 'Nutritional Deficiencies': 'Nutritional_Deficiencies', 'Interpersonal Violence': 'Interpersonal_Violence', 'Maternal Disorders': 'Maternal_Disorders', 'HIV/AIDS': 'HIV', 'Drug Use Disorders': 'Drug_Use_Disorders', 'Cardiovascular Diseases': 'Cardiovascular_Diseases', 'Lower Respiratory Infections': 'Lower_Respiratory_Infections', 'Neonatal Disorders': 'Neonatal_Disorders', 'Alcohol Use Disorders': 'Alcohol_Use_Disorders', 'Self-harm': 'Self_harm', 'Exposure to Forces of Nature': 'Exposure_to_Forces_of_Nature', 'Diarrheal Diseases': 'Diarrheal_Diseases', 'Environmental Heat and Cold Exposure': 'Environmental_Heat_and_Cold_Exposure', 'Conflict and Terrorism': 'Conflict_and_Terrorism', 'Diabetes Mellitus': 'Diabetes_Mellitus', 'Chronic Kidney Disease': 'Chronic_Kidney_Disease', 'Protein-Energy Malnutrition': 'Protein_Energy_Malnutrition', 'Road Injuries': 'Road_Injuries', 'Chronic Respiratory Diseases': 'Chronic_Respiratory_Diseases', 'Cirrhosis and Other Chronic Liver Diseases': 'Cirrhosis_and_Other_Chronic_Liver_Diseases', 'Digestive Diseases': 'Digestive_Diseases', 'Fire, Heat, and Hot Substances': 'Fire_Heat_and_Hot_Substances', 'Acute Hepatitis': 'Acute_Hepatitis'})
```


```python
df_Main_data.head()
```

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country</th>
      <th>Code</th>
      <th>Continent</th>
      <th>Sub_region</th>
      <th>Year</th>
      <th>Meningitis</th>
      <th>Alzheimers_Disease_and_Other_Dementias</th>
      <th>Parkinsons_Disease</th>
      <th>Nutritional_Deficiencies</th>
      <th>Malaria</th>
      <th>...</th>
      <th>Chronic_Kidney_Disease</th>
      <th>Poisonings</th>
      <th>Protein_Energy_Malnutrition</th>
      <th>Road_Injuries</th>
      <th>Chronic_Respiratory_Diseases</th>
      <th>Cirrhosis_and_Other_Chronic_Liver_Diseases</th>
      <th>Digestive_Diseases</th>
      <th>Fire_Heat_and_Hot_Substances</th>
      <th>Acute_Hepatitis</th>
      <th>Population</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>60</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1990</td>
      <td>2159.0</td>
      <td>1116.0</td>
      <td>371.0</td>
      <td>2087.0</td>
      <td>93.0</td>
      <td>...</td>
      <td>3709.0</td>
      <td>338.0</td>
      <td>2054.0</td>
      <td>4154.0</td>
      <td>5945.0</td>
      <td>2673.0</td>
      <td>5005.0</td>
      <td>323.0</td>
      <td>2985.0</td>
      <td>12412311.0</td>
    </tr>
    <tr>
      <th>61</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1991</td>
      <td>2218.0</td>
      <td>1136.0</td>
      <td>374.0</td>
      <td>2153.0</td>
      <td>189.0</td>
      <td>...</td>
      <td>3724.0</td>
      <td>351.0</td>
      <td>2119.0</td>
      <td>4472.0</td>
      <td>6050.0</td>
      <td>2728.0</td>
      <td>5120.0</td>
      <td>332.0</td>
      <td>3092.0</td>
      <td>13299016.0</td>
    </tr>
    <tr>
      <th>62</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1992</td>
      <td>2475.0</td>
      <td>1162.0</td>
      <td>378.0</td>
      <td>2441.0</td>
      <td>239.0</td>
      <td>...</td>
      <td>3776.0</td>
      <td>386.0</td>
      <td>2404.0</td>
      <td>5106.0</td>
      <td>6223.0</td>
      <td>2830.0</td>
      <td>5335.0</td>
      <td>360.0</td>
      <td>3325.0</td>
      <td>14485543.0</td>
    </tr>
    <tr>
      <th>63</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1993</td>
      <td>2812.0</td>
      <td>1187.0</td>
      <td>384.0</td>
      <td>2837.0</td>
      <td>108.0</td>
      <td>...</td>
      <td>3862.0</td>
      <td>425.0</td>
      <td>2797.0</td>
      <td>5681.0</td>
      <td>6445.0</td>
      <td>2943.0</td>
      <td>5568.0</td>
      <td>396.0</td>
      <td>3601.0</td>
      <td>15816601.0</td>
    </tr>
    <tr>
      <th>64</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1994</td>
      <td>3027.0</td>
      <td>1211.0</td>
      <td>391.0</td>
      <td>3081.0</td>
      <td>211.0</td>
      <td>...</td>
      <td>3932.0</td>
      <td>451.0</td>
      <td>3038.0</td>
      <td>6001.0</td>
      <td>6664.0</td>
      <td>3027.0</td>
      <td>5739.0</td>
      <td>420.0</td>
      <td>3816.0</td>
      <td>17075728.0</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 37 columns</p>

```python
column_names = df_Main_data.columns.tolist()
print(column_names)
```

    ['Country', 'Code', 'Continent', 'Sub_region', 'Year', 'Meningitis', 'Alzheimers_Disease_and_Other_Dementias', 'Parkinsons_Disease', 'Nutritional_Deficiencies', 'Malaria', 'Drowning', 'Interpersonal_Violence', 'Maternal_Disorders', 'HIV', 'Drug_Use_Disorders', 'Tuberculosis', 'Cardiovascular_Diseases', 'Lower_Respiratory_Infections', 'Neonatal_Disorders', 'Alcohol_Use_Disorders', 'Self_harm', 'Exposure_to_Forces_of_Nature', 'Diarrheal_Diseases', 'Environmental_Heat_and_Cold_Exposure', 'Neoplasms', 'Conflict_and_Terrorism', 'Diabetes_Mellitus', 'Chronic_Kidney_Disease', 'Poisonings', 'Protein_Energy_Malnutrition', 'Road_Injuries', 'Chronic_Respiratory_Diseases', 'Cirrhosis_and_Other_Chronic_Liver_Diseases', 'Digestive_Diseases', 'Fire_Heat_and_Hot_Substances', 'Acute_Hepatitis', 'Population']

#### Add Column Total amount of Death by Cause and Ratio of Death per Population

```python
# prompt: add column total_dead that sum from column Meningitis to column Acute_Hepatitis
#Use column_to_sum for represent all cause of death
columns_to_sum = ['Meningitis', 'Alzheimers_Disease_and_Other_Dementias', 'Parkinsons_Disease',
                  'Nutritional_Deficiencies', 'Malaria', 'Drowning', 'Interpersonal_Violence',
                  'Maternal_Disorders', 'HIV', 'Drug_Use_Disorders', 'Tuberculosis', 'Cardiovascular_Diseases',
                  'Lower_Respiratory_Infections', 'Neonatal_Disorders', 'Alcohol_Use_Disorders', 'Self_harm',
                  'Exposure_to_Forces_of_Nature', 'Diarrheal_Diseases', 'Environmental_Heat_and_Cold_Exposure',
                  'Neoplasms', 'Conflict_and_Terrorism', 'Diabetes_Mellitus', 'Chronic_Kidney_Disease',
                  'Poisonings', 'Protein_Energy_Malnutrition', 'Road_Injuries', 'Chronic_Respiratory_Diseases',
                  'Cirrhosis_and_Other_Chronic_Liver_Diseases', 'Digestive_Diseases', 'Fire_Heat_and_Hot_Substances', 'Acute_Hepatitis']

df_Main_data['Total_Dead'] = df_Main_data[columns_to_sum].sum(axis=1)

```


```python
df_Main_data
```

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country</th>
      <th>Code</th>
      <th>Continent</th>
      <th>Sub_region</th>
      <th>Year</th>
      <th>Meningitis</th>
      <th>Alzheimers_Disease_and_Other_Dementias</th>
      <th>Parkinsons_Disease</th>
      <th>Nutritional_Deficiencies</th>
      <th>Malaria</th>
      <th>...</th>
      <th>Poisonings</th>
      <th>Protein_Energy_Malnutrition</th>
      <th>Road_Injuries</th>
      <th>Chronic_Respiratory_Diseases</th>
      <th>Cirrhosis_and_Other_Chronic_Liver_Diseases</th>
      <th>Digestive_Diseases</th>
      <th>Fire_Heat_and_Hot_Substances</th>
      <th>Acute_Hepatitis</th>
      <th>Population</th>
      <th>Total_Dead</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>60</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1990</td>
      <td>2159.0</td>
      <td>1116.0</td>
      <td>371.0</td>
      <td>2087.0</td>
      <td>93.0</td>
      <td>...</td>
      <td>338.0</td>
      <td>2054.0</td>
      <td>4154.0</td>
      <td>5945.0</td>
      <td>2673.0</td>
      <td>5005.0</td>
      <td>323.0</td>
      <td>2985.0</td>
      <td>12412311.0</td>
      <td>147971.0</td>
    </tr>
    <tr>
      <th>61</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1991</td>
      <td>2218.0</td>
      <td>1136.0</td>
      <td>374.0</td>
      <td>2153.0</td>
      <td>189.0</td>
      <td>...</td>
      <td>351.0</td>
      <td>2119.0</td>
      <td>4472.0</td>
      <td>6050.0</td>
      <td>2728.0</td>
      <td>5120.0</td>
      <td>332.0</td>
      <td>3092.0</td>
      <td>13299016.0</td>
      <td>156844.0</td>
    </tr>
    <tr>
      <th>62</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1992</td>
      <td>2475.0</td>
      <td>1162.0</td>
      <td>378.0</td>
      <td>2441.0</td>
      <td>239.0</td>
      <td>...</td>
      <td>386.0</td>
      <td>2404.0</td>
      <td>5106.0</td>
      <td>6223.0</td>
      <td>2830.0</td>
      <td>5335.0</td>
      <td>360.0</td>
      <td>3325.0</td>
      <td>14485543.0</td>
      <td>169156.0</td>
    </tr>
    <tr>
      <th>63</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1993</td>
      <td>2812.0</td>
      <td>1187.0</td>
      <td>384.0</td>
      <td>2837.0</td>
      <td>108.0</td>
      <td>...</td>
      <td>425.0</td>
      <td>2797.0</td>
      <td>5681.0</td>
      <td>6445.0</td>
      <td>2943.0</td>
      <td>5568.0</td>
      <td>396.0</td>
      <td>3601.0</td>
      <td>15816601.0</td>
      <td>182230.0</td>
    </tr>
    <tr>
      <th>64</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1994</td>
      <td>3027.0</td>
      <td>1211.0</td>
      <td>391.0</td>
      <td>3081.0</td>
      <td>211.0</td>
      <td>...</td>
      <td>451.0</td>
      <td>3038.0</td>
      <td>6001.0</td>
      <td>6664.0</td>
      <td>3027.0</td>
      <td>5739.0</td>
      <td>420.0</td>
      <td>3816.0</td>
      <td>17075728.0</td>
      <td>194795.0</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>8095</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2015</td>
      <td>1439.0</td>
      <td>754.0</td>
      <td>215.0</td>
      <td>3019.0</td>
      <td>2518.0</td>
      <td>...</td>
      <td>381.0</td>
      <td>2990.0</td>
      <td>2373.0</td>
      <td>2751.0</td>
      <td>1956.0</td>
      <td>4202.0</td>
      <td>632.0</td>
      <td>146.0</td>
      <td>13814642.0</td>
      <td>130080.0</td>
    </tr>
    <tr>
      <th>8096</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2016</td>
      <td>1457.0</td>
      <td>767.0</td>
      <td>219.0</td>
      <td>3056.0</td>
      <td>2050.0</td>
      <td>...</td>
      <td>393.0</td>
      <td>3027.0</td>
      <td>2436.0</td>
      <td>2788.0</td>
      <td>1962.0</td>
      <td>4264.0</td>
      <td>648.0</td>
      <td>146.0</td>
      <td>14030338.0</td>
      <td>128274.0</td>
    </tr>
    <tr>
      <th>8097</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2017</td>
      <td>1460.0</td>
      <td>781.0</td>
      <td>223.0</td>
      <td>2990.0</td>
      <td>2116.0</td>
      <td>...</td>
      <td>398.0</td>
      <td>2962.0</td>
      <td>2473.0</td>
      <td>2818.0</td>
      <td>2007.0</td>
      <td>4342.0</td>
      <td>654.0</td>
      <td>144.0</td>
      <td>14236599.0</td>
      <td>126515.0</td>
    </tr>
    <tr>
      <th>8098</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2018</td>
      <td>1450.0</td>
      <td>795.0</td>
      <td>227.0</td>
      <td>2918.0</td>
      <td>2088.0</td>
      <td>...</td>
      <td>400.0</td>
      <td>2890.0</td>
      <td>2509.0</td>
      <td>2849.0</td>
      <td>2030.0</td>
      <td>4377.0</td>
      <td>657.0</td>
      <td>139.0</td>
      <td>14438812.0</td>
      <td>123506.0</td>
    </tr>
    <tr>
      <th>8099</th>
      <td>Zimbabwe</td>
      <td>ZWE</td>
      <td>Africa</td>
      <td>Eastern Africa</td>
      <td>2019</td>
      <td>1450.0</td>
      <td>812.0</td>
      <td>232.0</td>
      <td>2884.0</td>
      <td>2068.0</td>
      <td>...</td>
      <td>405.0</td>
      <td>2855.0</td>
      <td>2554.0</td>
      <td>2891.0</td>
      <td>2065.0</td>
      <td>4437.0</td>
      <td>662.0</td>
      <td>136.0</td>
      <td>14645473.0</td>
      <td>123540.0</td>
    </tr>
  </tbody>
</table>
<p>6120 rows × 38 columns</p>

```python
# prompt: move column Population in to last column

# Get a list of column names
cols = list(df_Main_data.columns)

# Find the index of the 'Population' column
population_index = cols.index('Population')

# Remove 'Population' from its original position
cols.pop(population_index)

# Append 'Population' to the end of the list
cols.append('Population')

# Reorder the DataFrame columns based on the new list
df_Main_data = df_Main_data[cols]

df_Main_data.head()

```

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Country</th>
      <th>Code</th>
      <th>Continent</th>
      <th>Sub_region</th>
      <th>Year</th>
      <th>Meningitis</th>
      <th>Alzheimers_Disease_and_Other_Dementias</th>
      <th>Parkinsons_Disease</th>
      <th>Nutritional_Deficiencies</th>
      <th>Malaria</th>
      <th>...</th>
      <th>Poisonings</th>
      <th>Protein_Energy_Malnutrition</th>
      <th>Road_Injuries</th>
      <th>Chronic_Respiratory_Diseases</th>
      <th>Cirrhosis_and_Other_Chronic_Liver_Diseases</th>
      <th>Digestive_Diseases</th>
      <th>Fire_Heat_and_Hot_Substances</th>
      <th>Acute_Hepatitis</th>
      <th>Total_Dead</th>
      <th>Population</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>60</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1990</td>
      <td>2159.0</td>
      <td>1116.0</td>
      <td>371.0</td>
      <td>2087.0</td>
      <td>93.0</td>
      <td>...</td>
      <td>338.0</td>
      <td>2054.0</td>
      <td>4154.0</td>
      <td>5945.0</td>
      <td>2673.0</td>
      <td>5005.0</td>
      <td>323.0</td>
      <td>2985.0</td>
      <td>147971.0</td>
      <td>12412311.0</td>
    </tr>
    <tr>
      <th>61</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1991</td>
      <td>2218.0</td>
      <td>1136.0</td>
      <td>374.0</td>
      <td>2153.0</td>
      <td>189.0</td>
      <td>...</td>
      <td>351.0</td>
      <td>2119.0</td>
      <td>4472.0</td>
      <td>6050.0</td>
      <td>2728.0</td>
      <td>5120.0</td>
      <td>332.0</td>
      <td>3092.0</td>
      <td>156844.0</td>
      <td>13299016.0</td>
    </tr>
    <tr>
      <th>62</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1992</td>
      <td>2475.0</td>
      <td>1162.0</td>
      <td>378.0</td>
      <td>2441.0</td>
      <td>239.0</td>
      <td>...</td>
      <td>386.0</td>
      <td>2404.0</td>
      <td>5106.0</td>
      <td>6223.0</td>
      <td>2830.0</td>
      <td>5335.0</td>
      <td>360.0</td>
      <td>3325.0</td>
      <td>169156.0</td>
      <td>14485543.0</td>
    </tr>
    <tr>
      <th>63</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1993</td>
      <td>2812.0</td>
      <td>1187.0</td>
      <td>384.0</td>
      <td>2837.0</td>
      <td>108.0</td>
      <td>...</td>
      <td>425.0</td>
      <td>2797.0</td>
      <td>5681.0</td>
      <td>6445.0</td>
      <td>2943.0</td>
      <td>5568.0</td>
      <td>396.0</td>
      <td>3601.0</td>
      <td>182230.0</td>
      <td>15816601.0</td>
    </tr>
    <tr>
      <th>64</th>
      <td>Afghanistan</td>
      <td>AFG</td>
      <td>Asia</td>
      <td>Southern Asia</td>
      <td>1994</td>
      <td>3027.0</td>
      <td>1211.0</td>
      <td>391.0</td>
      <td>3081.0</td>
      <td>211.0</td>
      <td>...</td>
      <td>451.0</td>
      <td>3038.0</td>
      <td>6001.0</td>
      <td>6664.0</td>
      <td>3027.0</td>
      <td>5739.0</td>
      <td>420.0</td>
      <td>3816.0</td>
      <td>194795.0</td>
      <td>17075728.0</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 38 columns</p>

## Death Cause Analysis
- <a href="Markdown/Death_Cause_Analysis.md" target="_blank">Death Cause Analysis</a>

## Event Analysis
- <a href="Markdown/Event_Analysis.md" target="_blank">Event Analysis</a>

## Summary
**สรุปภาพรวมการวิเคราะห์ข้อมูลการเสียชีวิตทั่วโลก (1990-2019)**

จากข้อมูลที่นำเสนอในช่วงปี 1990-2019 จะเห็นว่าอัตราการเสียชีวิตและเหตุการณ์ต่าง ๆ มีความเกี่ยวข้องกันและดำเนินไปในทิศทางเดียวกัน ซึ่งช่วยให้เราเข้าใจถึงสาเหตุที่ทำให้จำนวนผู้เสียชีวิตเพิ่มขึ้นในบางช่วงเวลาและลดลงในช่วงอื่น ๆ ตัวอย่างเช่น การเข้าถึงน้ำดื่มสะอาดได้มีส่วนสำคัญในการลดอัตราการเสียชีวิตจากโรคที่เกิดจากน้ำอย่างเช่น อหิวาตกโรคและอุจจาระร่วง

นอกจากนี้ การพัฒนาวัคซีนในการรักษาโรคมาลาเรียในหลายประเทศก็มีผลอย่างมากต่อการลดอัตราการเสียชีวิตในกลุ่มเด็กและประชากรที่อาศัยอยู่ในพื้นที่ที่มีการแพร่ระบาดของโรคนี้ การระบาดของโรคที่เกิดจากน้ำและมาลาเรียนั้นสามารถควบคุมได้มากขึ้นด้วยการใช้วิธีการที่มีประสิทธิภาพ

ในทางกลับกัน เหตุการณ์ทางธรรมชาติ เช่น แผ่นดินไหวและสึนามิในปี 2004 ทำให้จำนวนผู้เสียชีวิตเพิ่มขึ้นอย่างรวดเร็วในบางพื้นที่ ซึ่งเป็นการเตือนให้เห็นถึงความสำคัญของการเตรียมความพร้อมและระบบการป้องกันภัยพิบัติ

การวิเคราะห์ข้อมูลเหล่านี้ไม่เพียงแค่แสดงให้เห็นถึงความสัมพันธ์ระหว่างอัตราการเสียชีวิตและเหตุการณ์ต่าง ๆ แต่ยังสามารถนำไปประยุกต์ใช้เพื่อป้องกันและแก้ไขปัญหาที่อาจเกิดขึ้นในอนาคตได้อย่างมีประสิทธิภาพ โดยการพัฒนานโยบายและกลยุทธ์ที่มุ่งเน้นการลดความเสี่ยงและการป้องกันการเกิดโรคในประชากรที่เปราะบาง
