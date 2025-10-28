"""Placeholder: insert_data.py
Simple helpers to insert pandas DataFrames into target tables using SQLAlchemy."""

import pandas as pd
from sqlalchemy.engine import Engine


def insert_dataframe(engine: Engine, df: pd.DataFrame, table_name: str, if_exists: str = 'append'):
    df.to_sql(table_name, con=engine, if_exists=if_exists, index=False)


if __name__ == '__main__':
    print('This is a helper module — import and use insert_dataframe from your ETL scripts.')
