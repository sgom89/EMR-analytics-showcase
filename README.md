# EMR Analytics Showcase

An EMR-style analytics project built with SQLite, SQL, pandas, and Jupyter Notebook.

This project analyses healthcare-style records including patients, appointments, treatment notes, payments, and lab results. It is designed to show how relational medical data can be explored for operational and clinical insights.

## Main Components

- `SQLite` database for structured healthcare-style data
- `SQL` queries for joins, aggregation, and reporting
- `Jupyter Notebook` for exploratory analysis and portfolio presentation
- `pandas`, `matplotlib`, and `seaborn` for analysis and visualisation
- CSV exports for quick reuse in other tools

## Included Files

- `data/emr_showcase.db`: ready-to-use SQLite database
- `data/exports/*.csv`: exported datasets
- `notebooks/emr_analytics_showcase.ipynb`: executed notebook
- `build_data.py`: helper logic for building the dataset
- `seed_emr_showcase.py`: script to rebuild the database if needed
- `sql_queries.sql`: reusable SQL queries
- `requirements.txt`: Python dependencies

## Dataset

The records included in this project are synthetic and suitable for portfolio use.

## What The Analysis Covers

- patient demographics
- appointment volume by month and type
- revenue split by payment status
- treatment-note activity by diagnosis group
- abnormal lab-result review
- patient utilisation across appointments, notes, and paid revenue

## How To Run

### 1. Create and activate a virtual environment

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```

### 2. Install dependencies

```powershell
pip install -r requirements.txt
```

### 3. Rebuild the database if needed

```powershell
python seed_emr_showcase.py
```

### 4. Open the notebook

```powershell
jupyter notebook notebooks/emr_analytics_showcase.ipynb
```

## Project Structure

```text
emr-analytics-showcase/
|- build_data.py
|- seed_emr_showcase.py
|- sql_queries.sql
|- requirements.txt
|- data/
|  |- emr_showcase.db
|  `- exports/
`- notebooks/
   `- emr_analytics_showcase.ipynb
```

## Notes

- The notebook is ready to review and includes a portfolio-oriented narrative.
- The database is included so the project can be opened immediately without extra setup.
- The exported CSV files are useful if you want to analyse the same data in another tool later.
