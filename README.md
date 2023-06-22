### dbt_play

This repo is to let you get started with `dbt-core`, so you have understanding on every basic processes.
For the sevice account added to this project, it has access to the dataset `hello_dbt` only.

Once you have understanding about this, you can try `dbt-cloud`, build some `macro`,`incremental model`, run `freshness` and more.

### How to get started on my own machine ?
- Clone this repo
- Install DBT
    - Make sure you have `Python3` installed
    - Create env: `python3 -m venv .venv`
    - Activate env: `source .venv/bin/activate`
    - Upgrade pip: `pip install --upgrade pip`
    - Install Libs: `pip install --upgrade dbt-core dbt-bigquery`
    - Check if we have the latest version: `dbt --version`
- Update the `profiles.yml` file with your credentials
    - `realpath your_sa_file.json` and copy the output, then paste it in the `profiles.yml` file
- Let's run some `dbt` commands
    - `dbt debug --profiles-dir ./profiles --project-dir ./mymodel`
    - `dbt run --profiles-dir ./profiles --project-dir ./mymodel`
    - Run only some folder `dbt run --profiles-dir ./profiles --project-dir ./mymodel --select folder1`
    - Run only some file `dbt run --profiles-dir ./profiles --project-dir ./mymodel --select folder1.dbt01_simple`
    - Full refresh when change object type `dbt run --profiles-dir ./profiles --project-dir ./mymodel --select folder1.dbt01_simple --full-refresh`
    - Check freshness `dbt source freshness --profiles-dir ./profiles --project-dir ./mymodel`