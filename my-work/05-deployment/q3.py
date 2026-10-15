import pickle
from pathlib import Path

# Path to the model inside the homework folder
MODEL_PATH = Path(__file__).parents[2] / "cohorts/2026/homework/05-deployment/pipeline.bin"

lead = {
    "lead_source": "paid_ads",
    "industry": "technology",
    "employment_status": "employed",
    "location": "north_america",
    "number_of_courses_viewed": 2,
    "annual_income": 79276.0,
    "interaction_count": 4,
    "lead_score": 0.41,
}

with open(MODEL_PATH, "rb") as f_in:
    pipeline = pickle.load(f_in)

# predict_proba returns [[P(no conversion), P(conversion)]]
probability = pipeline.predict_proba([lead])[0, 1]
print(round(probability, 3))
