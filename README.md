# dbt-learn-demo

> ℹ️ This is a demonstration repo used for dbt Learn. Each [pull-request](https://github.com/fishtown-analytics/dbt-learn-demo/pulls?q=is%3Apr+is%3Amerged+) relates to one section of the group assignment. Jump to a different stage by checking out the associated branch:

- [`pre-work`](https://github.com/fishtown-analytics/dbt-learn-demo-v2/tree/pre-work)
- [`start-of-tests`](https://github.com/fishtown-analytics/dbt-learn-demo-v2/tree/start-of-tests)
- [`start-of-sources`](https://github.com/fishtown-analytics/dbt-learn-demo-v2/tree/start-of-sources)
- [`start-of-docs`](https://github.com/fishtown-analytics/dbt-learn-demo-v2/tree/start-of-docs)
- [`reorganize-project`](https://github.com/fishtown-analytics/dbt-learn-demo-v2/tree/reorganize-project)
- [`polish-project`](https://github.com/fishtown-analytics/dbt-learn-demo-v2/tree/polish-project)


## Getting started

There’s two main ways of working with dbt:
* Edit files and run projects using the web-based Integrated Development Environment (IDE) in **dbt Cloud**.
* Edit files locally using a code editor, and run projects using the Command Line Interface (**dbt CLI**).

Please follow the setting up instructions for your chosen development method. Either way, you're going to need credentials for Snowflake!

Here are the statements your database admin will need to run:
```sql
create user <user>
    password = '<generate_this>'
    default_warehouse = transforming
    default_role = transformer;
```

### Using dbt Cloud
1. Ask the data team to add you to the dbt Cloud account as a Developer.
2. Click the hamburger menu, and then `Develop`.
3. Enter your Snowflake credentials
4. Verify that you can run dbt by entering the following in the command line input
```
dbt run
```

### Using the CLI
1. Clone this github repo
2. Install dbt following [these instructions](https://docs.getdbt.com/docs/installation)
3. Copy the example profile to your `~/.dbt` folder (created when installing dbt):
```bash
$ cp ./sample.profiles.yml ~/.dbt/profiles.yml
```
4. Populate `~/.dbt/profiles.yml` with the credentials your Snowflake credentials
```bash
open ~/.dbt
```
5. Verify that you can connect to Snowflake
```
$ dbt debug
```
6. Verify that you can run dbt
```
$ dbt run
```

## Coding conventions
This project follows Fishtown Analytics' [coding conventions](https://github.com/fishtown-analytics/corp/blob/master/dbt_coding_conventions.md) and [git guide](https://github.com/fishtown-analytics/corp/blob/master/git-guide.md).

## Understanding the structure of this project
This project follows the structure set out in [this article](https://discourse.getdbt.com/t/how-we-structure-our-dbt-projects/355).
