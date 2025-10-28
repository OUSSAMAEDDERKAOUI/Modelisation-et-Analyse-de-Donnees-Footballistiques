"""Placeholder: clean_matches.py
Functions to clean and normalize match datasets."""

import pandas as pd


def clean_matches(df: pd.DataFrame) -> pd.DataFrame:
    df = df.copy()
    # Example: ensure score column exists and is standardized
    if 'score' in df.columns:
        df['score'] = df['score'].astype(str).str.strip()
    return df
