#!/bin/bash
set -e

BASE="/Users/rubenvernaak/Desktop/Analytics/Machine Learning Zoomcamp/machine-learning-zoomcamp"
cd "$BASE"
mkdir -p notebooklm_exports

append_file() {
    local src="$1"
    local dest="$2"
    if [ -f "$src" ]; then
        cat "$src" >> "$dest"
        printf "\n\n---\n\n" >> "$dest"
        echo "  Added: $src"
    fi
}

# ===== 01 - Introduction to Machine Learning =====
echo "=== Building 01_Intro_Master.md ==="
OUT="notebooklm_exports/01_Intro_Master.md"
rm -f "$OUT"
append_file "01-intro/README.md" "$OUT"
for file in 01-intro/[0-9]*.md; do
    append_file "$file" "$OUT"
done
echo "✓ Done"

# ===== 02 - Machine Learning for Regression =====
echo "=== Building 02_Regression_Master.md ==="
OUT="notebooklm_exports/02_Regression_Master.md"
rm -f "$OUT"
append_file "02-regression/README.md" "$OUT"
for file in 02-regression/[0-9]*.md; do
    append_file "$file" "$OUT"
done
echo "✓ Done"

# ===== 03 - Machine Learning for Classification =====
echo "=== Building 03_Classification_Master.md ==="
OUT="notebooklm_exports/03_Classification_Master.md"
rm -f "$OUT"
append_file "03-classification/README.md" "$OUT"
for file in 03-classification/[0-9]*.md; do
    append_file "$file" "$OUT"
done
echo "✓ Done"

# ===== 04 - Evaluation Metrics for Classification =====
echo "=== Building 04_Evaluation_Master.md ==="
OUT="notebooklm_exports/04_Evaluation_Master.md"
rm -f "$OUT"
append_file "04-evaluation/README.md" "$OUT"
for file in 04-evaluation/[0-9]*.md; do
    append_file "$file" "$OUT"
done
echo "✓ Done"

# ===== 05 - Deploying Machine Learning Models =====
echo "=== Building 05_Deployment_Master.md ==="
OUT="notebooklm_exports/05_Deployment_Master.md"
rm -f "$OUT"
append_file "05-deployment/README.md" "$OUT"
for file in 05-deployment/[0-9]*.md; do
    append_file "$file" "$OUT"
done
append_file "05-deployment/workshop/README.md" "$OUT"
echo "✓ Done"

# ===== 06 - Decision Trees and Ensemble Learning =====
echo "=== Building 06_Trees_Master.md ==="
OUT="notebooklm_exports/06_Trees_Master.md"
rm -f "$OUT"
append_file "06-trees/README.md" "$OUT"
for file in 06-trees/[0-9]*.md; do
    append_file "$file" "$OUT"
done
echo "✓ Done"

# ===== 08 - Neural Networks and Deep Learning =====
echo "=== Building 08_Deep_Learning_Master.md ==="
OUT="notebooklm_exports/08_Deep_Learning_Master.md"
rm -f "$OUT"
append_file "08-deep-learning/README.md" "$OUT"
for file in 08-deep-learning/[0-9]*.md; do
    append_file "$file" "$OUT"
done
append_file "08-deep-learning/install.md" "$OUT"
append_file "08-deep-learning/pytorch/README.md" "$OUT"
append_file "08-deep-learning/pytorch/install_pytorch.md" "$OUT"
echo "✓ Done"

# ===== 09 - Serverless Deep Learning =====
echo "=== Building 09_Serverless_Master.md ==="
OUT="notebooklm_exports/09_Serverless_Master.md"
rm -f "$OUT"
append_file "09-serverless/README.md" "$OUT"
for file in 09-serverless/[0-9]*.md; do
    append_file "$file" "$OUT"
done
append_file "09-serverless/updates.md" "$OUT"
append_file "09-serverless/workshop/README.md" "$OUT"
echo "✓ Done"

# ===== 10 - Kubernetes and TensorFlow Serving =====
echo "=== Building 10_Kubernetes_Master.md ==="
OUT="notebooklm_exports/10_Kubernetes_Master.md"
rm -f "$OUT"
append_file "10-kubernetes/README.md" "$OUT"
for file in 10-kubernetes/[0-9]*.md; do
    append_file "$file" "$OUT"
done
append_file "10-kubernetes/workshop/README.md" "$OUT"
echo "✓ Done"

# ===== 11 - KServe (bonus module) =====
echo "=== Building 11_KServe_Master.md ==="
OUT="notebooklm_exports/11_KServe_Master.md"
rm -f "$OUT"
append_file "11-kserve/README.md" "$OUT"
for file in 11-kserve/[0-9]*.md; do
    append_file "$file" "$OUT"
done
append_file "11-kserve/code/README.md" "$OUT"
echo "✓ Done"

echo ""
echo "=============================="
echo "All master files created in: $BASE/notebooklm_exports/"
ls -lh notebooklm_exports/
