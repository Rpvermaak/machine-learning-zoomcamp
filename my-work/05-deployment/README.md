# Homework 5 — Deployment

Homework: [cohorts/2026/homework/05-deployment](../../cohorts/2026/homework/05-deployment/homework.md)

All commands run from `cohorts/2026/homework/05-deployment` unless noted.

## Q1 — Environment check

```bash
uv --version
```

## Q2 — Locked scikit-learn version

Read from the lockfile without regenerating it: 1.7.2

```bash
grep -A2 'name = "scikit-learn"' uv.lock
```

## Q3 — Load the model

[q3.py](q3.py) loads `pipeline.bin` with pickle and calls `predict_proba`. Run from the repo root:

```bash
uv run --project cohorts/2026/homework/05-deployment python my-work/05-deployment/q3.py
```

Result: **0.533**

## Q4 — Serve the model

```bash
uv run uvicorn predict:app --host 0.0.0.0 --port 9696
```

In a second terminal:

```bash
curl -s http://localhost:9696/predict \
  -H 'Content-Type: application/json' \
  -d '{"lead_source": "organic_search", "industry": "technology",
       "employment_status": "employed", "location": "europe",
       "number_of_courses_viewed": 4, "annual_income": 80304.0,
       "interaction_count": 7, "lead_score": 0.74}'
```

Result: `0.769799` → **0.770**

## Q5 — Base image

```bash
head -1 Dockerfile
```

Result: **`python:3.11.15-slim-bookworm`**

## Q6 — Run the container

```bash
docker build -t zoomcamp-model:2026-hw5 .
docker run --rm -p 9696:9696 zoomcamp-model:2026-hw5
```

In a second terminal:

```bash
python q6_test.py
curl -s http://localhost:9696/health
```

Result: **0.770**, same as Q4. `/health` returns `"status": "ok"` and a `model_sha256` matching `model_metadata.json`.
