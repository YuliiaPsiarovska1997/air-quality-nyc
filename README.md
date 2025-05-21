# Air Quality & Health Impact Analysis – SQL Project

### 📌 Description
SQL-based analysis of air quality and its impact on public health in New York City using open datasets (2008–2023).

## 🛠 Tools Used
- MySQL Workbench

## 📊 Dataset Structure
The main table `air_quality` contains:
- `Geo Place Name`: NYC neighborhood
- `Period`: Year or season
- `Name`: Type of indicator (e.g., PM2.5, Asthma hospitalizations)
- `Data Value`: Numerical measurement

## 🔍 Analysis Topics
- **Pollution levels** (PM2.5, NOx, SO2)
- **Health impacts** (asthma, cardiovascular hospitalizations)
- **Mortality** (deaths due to air pollution)

## 📂 Files Overview

| File                         | Purpose                                  |
|------------------------------|------------------------------------------|
| `queries/pollution_analysis.sql`      | Shows most polluted areas (PM2.5, NOx)     |
| `queries/health_impact.sql`           | Lists hospital visits due to pollution     |
| `queries/deaths_due_to_pollution.sql` | Finds deaths linked to pollution levels    |
| `exports/air_quality_export.csv`      | Optional: exported data                    |
| `screenshots/results_view.png`        | Optional: MySQL result screenshots         |

## 📈 Optional Visualization
Data was exported to Excel and split into:
- `Pollution`
- `Diseases`
- `Deaths`

## ✅ License
© 2025 Yuliia Psiarovska
