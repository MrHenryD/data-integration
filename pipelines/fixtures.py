import random
from datetime import datetime

import pandas as pd


def sales(n: int = 100, start: int = 100) -> pd.DataFrame:
    """ Generate Sales """

    USERS = 12
    PRODUCTS = 4
    SUPPLIERS = 3
    CAMPAIGNS = 3

    records = []
    for index in range(start, start + n):
        sale_record = {
            "id": random.randint(index),
            "user_id": random.randint(1, USERS),
            "product_id": random.randint(1, PRODUCTS),
            "supplier_id": random.randint(1, SUPPLIERS),
            "campaign_id": random.randint(1, CAMPAIGNS),
            "sale_price": round(random.random() * 1000, 2),
            "sales_ts": datetime.now()
        }

    return pd.DataFrame(records)