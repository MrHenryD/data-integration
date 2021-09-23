import logging

from template import PipelineTemplate


class ExamplePipeline(PipelineTemplate):

    def extract(self):
        logging.info("Extracting data...")

        df = pd.DataFrame([
            (1, 2, 3),
            (2, 2, 3),
            (3, 3, 3),
            (4, 3, 3),
            (5, 4, 3),
            (5, 4),
        ], columns=["a", "b", "c"])
        
        logging.info(f"Number of records: {len(df)}")
        return df

    def transform(self, df):
        logging.info("Transforming data...")        

        df = df.drop_duplicates(subset=["b"])\
               .drop_na(subset=["c"])\
               .reset_index(drop=True)
        df["axb"] = df["a"] * df["b"]

        logging.info(f"Number of records: {len(df)}")
        return df

    def load(self, df):
        logging.info("""
        Loading Data...
        {df}
        """)


if __name__ == "__main__":
    pipeline = ExamplePipeline()
    pipeline.run()