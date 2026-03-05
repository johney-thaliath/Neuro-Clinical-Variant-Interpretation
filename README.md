# Neuro-Clinical Variant Interpretation (Epilepsy)

## Objective
To identify and interpret pathogenic genetic variants associated with epilepsy using computational bioinformatics methods in R using ncbi ClinVar.

ClinVar Epilepsy Variant Analysis

#Objective
To identify and analyze pathogenic genetic variants associated with epilepsy using the ClinVar database.

#Dataset
ClinVar variant_summary.txt.gz
Total variants analyzed: 88,888,525

#Workflow
Load ClinVar dataset
Reduce dataset to relevant columns
Filter epilepsy-related variants
Identify pathogenic variants
Perform gene frequency analysis
Generate visualization plots
Create clinical summary

#Key Results
Metric	Value
Epilepsy variants	76,632
Pathogenic variants	852
Unique genes	81
Most mutated gene	SCN1A

#Tools Used
R- STUDIO
ggplot2
ClinVar database

## Top Epilepsy Genes
The most frequently reported pathogenic variants in epilepsy-associated genes were identified using ClinVar data.
[Top Epilepsy Genes](results/top_epilepsy_genes_plot.png)
