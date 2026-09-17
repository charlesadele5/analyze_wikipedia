# Download a file
# Using hugging face package called huggingface_hub

library(huggingfaceR)
library(arrow)

path <- hf_hub_download(
  repo_id = "omarkamali/wikipedia-monthly",
  filename = "20250702.en/train_00016.parquet",
  repo_type = "dataset"
)
print(path)

data <- read_parquet(path)
write_parquet(data, "data/raw/data.parquet")
