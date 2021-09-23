from abc import ABC, abstractmethod

import pandas as pd


class PipelineTemplate(ABC): 

    @abstractmethod
    def extract(self) -> pd.DataFrame:
        pass

    @abstractmethod
    def transform(self, df: pd.DataFrame) -> pd.DataFrame:
        pass

    @abstractmethod
    def load(self, df: pd.DataFrame) -> None:
        pass

    def run(self) -> None:
        _ = load(
            transform(
                extract()
            )
        )
