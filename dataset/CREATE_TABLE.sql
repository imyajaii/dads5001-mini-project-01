CREATE DATABASE "dads5001"; /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE "dads5001";

-- dads5001.AGE_DATASET definition

CREATE TABLE "AGE_DATASET" (
  "id" int NOT NULL AUTO_INCREMENT,
  "CODE" varchar(50) DEFAULT NULL,
  "Name" varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "Short description" varchar(500) DEFAULT NULL,
  "Gender" varchar(50) DEFAULT NULL,
  "Country" varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "Occupation" varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "Birth_year" int DEFAULT NULL,
  "Death_year" int DEFAULT NULL,
  "Manner_of_death" varchar(50) DEFAULT NULL,
  "Age_of_death" int DEFAULT NULL,
  "Short _description" varchar(500) DEFAULT NULL,
  PRIMARY KEY ("id")
);


-- dads5001.CAUSE_OF_DEATHS definition

CREATE TABLE "CAUSE_OF_DEATHS" (
  "id" int NOT NULL AUTO_INCREMENT,
  "Country/Territory" varchar(50) DEFAULT NULL,
  "Code" varchar(50) DEFAULT NULL,
  "Year" int DEFAULT NULL,
  "Meningitis" int DEFAULT NULL,
  "Alzheimer's Disease and Other Dementias" int DEFAULT NULL,
  "Parkinson's Disease" int DEFAULT NULL,
  "Nutritional Deficiencies" int DEFAULT NULL,
  "Malaria" int DEFAULT NULL,
  "Drowning" int DEFAULT NULL,
  "Interpersonal Violence" int DEFAULT NULL,
  "Maternal Disorders" int DEFAULT NULL,
  "HIV/AIDS" int DEFAULT NULL,
  "Drug Use Disorders" int DEFAULT NULL,
  "Tuberculosis" int DEFAULT NULL,
  "Cardiovascular Diseases" int DEFAULT NULL,
  "Lower Respiratory Infections" int DEFAULT NULL,
  "Neonatal Disorders" int DEFAULT NULL,
  "Alcohol Use Disorders" int DEFAULT NULL,
  "Self-harm" int DEFAULT NULL,
  "Exposure to Forces of Nature" int DEFAULT NULL,
  "Diarrheal Diseases" int DEFAULT NULL,
  "Environmental Heat and Cold Exposure" int DEFAULT NULL,
  "Neoplasms" int DEFAULT NULL,
  "Conflict and Terrorism" int DEFAULT NULL,
  "Diabetes Mellitus" int DEFAULT NULL,
  "Chronic Kidney Disease" int DEFAULT NULL,
  "Poisonings" int DEFAULT NULL,
  "Protein-Energy Malnutrition" int DEFAULT NULL,
  "Road Injuries" int DEFAULT NULL,
  "Chronic Respiratory Diseases" int DEFAULT NULL,
  "Cirrhosis and Other Chronic Liver Diseases" int DEFAULT NULL,
  "Digestive Diseases" int DEFAULT NULL,
  "Fire, Heat, and Hot Substances" int DEFAULT NULL,
  "Acute Hepatitis" int DEFAULT NULL,
  PRIMARY KEY ("id")
);


-- dads5001.COUNTRY_CONTINENT definition

CREATE TABLE "COUNTRY_CONTINENT" (
  "id" int NOT NULL AUTO_INCREMENT,
  "country" varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "code_2" varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "code_3" varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "country_code" int DEFAULT NULL,
  "iso_3166_2" varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "continent" varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "sub_region" varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "region_code" int DEFAULT NULL,
  "sub_region_code" int DEFAULT NULL,
  PRIMARY KEY ("id")
);


-- dads5001.WORLD_POPULATION definition

CREATE TABLE "WORLD_POPULATION" (
  "id" int NOT NULL AUTO_INCREMENT,
  "Country Name" varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "Country Code" varchar(50) DEFAULT NULL,
  "1960" bigint DEFAULT NULL,
  "1961" bigint DEFAULT NULL,
  "1962" bigint DEFAULT NULL,
  "1963" bigint DEFAULT NULL,
  "1964" bigint DEFAULT NULL,
  "1965" bigint DEFAULT NULL,
  "1966" bigint DEFAULT NULL,
  "1967" bigint DEFAULT NULL,
  "1968" bigint DEFAULT NULL,
  "1969" bigint DEFAULT NULL,
  "1970" bigint DEFAULT NULL,
  "1971" bigint DEFAULT NULL,
  "1972" bigint DEFAULT NULL,
  "1973" bigint DEFAULT NULL,
  "1974" bigint DEFAULT NULL,
  "1975" bigint DEFAULT NULL,
  "1976" bigint DEFAULT NULL,
  "1977" bigint DEFAULT NULL,
  "1978" bigint DEFAULT NULL,
  "1979" bigint DEFAULT NULL,
  "1980" bigint DEFAULT NULL,
  "1981" bigint DEFAULT NULL,
  "1982" bigint DEFAULT NULL,
  "1983" bigint DEFAULT NULL,
  "1984" bigint DEFAULT NULL,
  "1985" bigint DEFAULT NULL,
  "1986" bigint DEFAULT NULL,
  "1987" bigint DEFAULT NULL,
  "1988" bigint DEFAULT NULL,
  "1989" bigint DEFAULT NULL,
  "1990" bigint DEFAULT NULL,
  "1991" bigint DEFAULT NULL,
  "1992" bigint DEFAULT NULL,
  "1993" bigint DEFAULT NULL,
  "1994" bigint DEFAULT NULL,
  "1995" bigint DEFAULT NULL,
  "1996" bigint DEFAULT NULL,
  "1997" bigint DEFAULT NULL,
  "1998" bigint DEFAULT NULL,
  "1999" bigint DEFAULT NULL,
  "2000" bigint DEFAULT NULL,
  "2001" bigint DEFAULT NULL,
  "2002" bigint DEFAULT NULL,
  "2003" bigint DEFAULT NULL,
  "2004" bigint DEFAULT NULL,
  "2005" bigint DEFAULT NULL,
  "2006" bigint DEFAULT NULL,
  "2007" bigint DEFAULT NULL,
  "2008" bigint DEFAULT NULL,
  "2009" bigint DEFAULT NULL,
  "2010" bigint DEFAULT NULL,
  "2011" bigint DEFAULT NULL,
  "2012" bigint DEFAULT NULL,
  "2013" bigint DEFAULT NULL,
  "2014" bigint DEFAULT NULL,
  "2015" bigint DEFAULT NULL,
  "2016" bigint DEFAULT NULL,
  "2017" bigint DEFAULT NULL,
  "2018" bigint DEFAULT NULL,
  "2019" bigint DEFAULT NULL,
  "2020" bigint DEFAULT NULL,
  "2021" bigint DEFAULT NULL,
  PRIMARY KEY ("id")
);