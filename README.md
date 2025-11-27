# 📊 HR Analytics & Employee Attrition Analysis

This project focuses on analyzing employee attrition within an organization using structured HR data.

The objective is to identify key factors that influence employee turnover and derive actionable insights that support workforce retention strategies.

## 1. Project Overview

Employee attrition is a major cost driver for organizations.

Through SQL-based data processing and Python-driven exploratory data analysis (EDA), this project examines:

Which employee segments are more likely to resign

How demographic, salary and job-related variables impact attrition

Patterns, trends and correlations influencing workforce stability

This analysis serves as a decision-support model for HR departments to design efficient retention programs.

## 2. Tech Stack

| Domain           | Technology                           |

| ---------------- | ------------------------------------ |

| Database         | **MySQL**                            |

| Programming      | **Python**                           |

| Libraries        | Pandas, NumPy, Matplotlib, Seaborn   |

## 3. Project Components

| File / Folder                 | Description                                                                      |

| ----------------------------- | -------------------------------------------------------------------------------- |

| `SQL_Queries.sql`             | Complete SQL workflow including data cleaning, transformation & analysis queries |

| `HR_Attrition_Analysis.ipynb` | Python notebook for data visualization and exploratory insights                  |

| `Employee_Attrition.csv`      | Source dataset (IBM HR Attrition)                                                |

| `README.md`                   | Project documentation                                                            |

## 4.Data Preparation Summary (SQL)

  Performed data quality checks (null values, duplicates, inconsistency)

  Created derived column AgeGroup for categorical interpretation

  Conducted outlier detection using IQR method

  Performed SQL-based descriptive and comparative analytics

 ## 5. Exploratory Data Analysis (Python)

  ### Key analysis dimensions:
  
  | Category         | Observations                                                              
  |
| ---------------- | ------------------------------------------------------------------------- |

| Attrition Ratio  | ~16–18% employees exited the organization                                 |

| Age Impact       | Employees aged **25–35 show highest attrition risk**                      |

| Compensation     | Lower salary correlates with higher resignation probability               |

| Department Risk  | Sales and R&D experienced greater churn than HR & Finance                 |

| Job Role Impact  | Technicians & Sales associates show higher exits; Managers show stability |

| Senior Workforce | 40+ employees exhibit comparatively lower attrition                       |

## 6. Key Insights

Mid-career employees are more likely to seek external opportunities.

Compensation plays a crucial role in retaining talent.

Higher attrition in technical/operational roles suggests role-based stress.

Long-tenured employees show greater loyalty and organizational alignment.

## 7. Conclusion

The analysis indicates that attrition is significantly influenced by age, role type, compensation level and experience.

Strategies focused on career growth, skill development, salary optimization and healthy work-life balance can reduce attrition rates and increase organizational productivity.


