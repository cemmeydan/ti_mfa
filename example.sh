#!/usr/local/bin/Rscript

# generate dataset with certain seed
set.seed(1)
data <- dyntoy::generate_dataset(
  id = "specific_example/mfa",
  num_cells = 99,
  num_features = 101,
  model = "multifurcating",
  normalise = FALSE
)

# add method specific args (if needed)
data$parameters <- list()
data$seed <- 1

# write example dataset to file
file <- commandArgs(trailingOnly = TRUE)[[1]]
dynutils::write_h5(data, file)