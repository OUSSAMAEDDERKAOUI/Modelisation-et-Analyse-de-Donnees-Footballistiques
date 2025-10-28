"""Placeholder: clean_players.py
Functions to clean and normalize player datasets."""

import pandas as pd


def clean_players(df: pd.DataFrame) -> pd.DataFrame:
    """Example cleaning: drop duplicates and normalize column names."""
    df = df.copy()
    df.columns = [c.strip().lower() for c in df.columns]
    df = df.drop_duplicates()
    return df
