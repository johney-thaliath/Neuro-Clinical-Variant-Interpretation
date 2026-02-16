Research Log — Epilepsy Variant Interpretation Project

🗓️ Day 1 — Project Setup & Tool Installation
Focus: Environment setup for computational bioinformatics
Installed R and RStudio on Windows system
Learned basics of R console and script execution
Installed core packages (tidyverse)
Understood difference between Script and Console
Created project folder structure
Set working directory in RStudio
Outcome:
Successfully established a working R environment for bioinformatics analysis.

🗓️ Day 2 — Learning Variant Data & Package Management
Focus: Understanding genomic data formats
Learned basics of genetic variants and VCF files
Explored structure of a VCF file
Installed Rtools for Windows to enable package compilation
Troubleshooted installation issues
Successfully installed and loaded vcfR package
Outcome:
System became capable of reading and processing genomic variant files.

🗓️ Day 3 — Loading and Exploring Variant Data
Focus: Working with real genetic datasets
Loaded example VCF file using vcfR
Converted VCF data to data frame format
Explored variant columns (CHROM, POS, REF, ALT, QUAL, FILTER, ID)
Learned meaning of QUAL and ID columns
Practiced viewing and summarising variant data
Outcome:
Gained understanding of raw genomic variant datasets.

🗓️ Day 4 — Quality Control and Variant Filtering
Focus: Data cleaning and reliability assessment
Converted VCF to tabular format
Applied quality filtering using:
FILTER = PASS
QUAL > 30
Compared number of variants before and after filtering
Calculated number of removed low-quality variants
Saved filtered data as CSV file
Outcome:
Generated high-confidence variant dataset for downstream analysis.

🗓️ Day 5 — Database Integration & Package Troubleshooting
Focus: Gene annotation preparation
Installed Bioconductor package manager
Installed and configured biomaRt package
Resolved dependency issues (RSQLite installation)
Learned how package dependencies affect workflows
Successfully loaded biomaRt
Outcome:
Prepared system for gene-level variant annotation.

🗓️ Day 6 — Connecting to Ensembl & Data Annotation
Focus: Linking variants to biological meaning
Connected to Ensembl database using biomaRt
Learned about BioMart servers and mirrors
Resolved server connection issues using Asia mirror
Retrieved human gene location data
Understood importance of online genomic databases
Outcome:
Established connection between local variant data and global gene databases.
