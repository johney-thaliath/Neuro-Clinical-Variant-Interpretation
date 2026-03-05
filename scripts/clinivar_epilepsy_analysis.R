install.packages("tidyverse")
clinvar <- read.delim(
  "data/variant_summary.txt.gz",
  stringsAsFactors = FALSE
)
dim(clinvar)
colnames(clinvar)
clinvar_small = clinvar[, c(
  "GeneSymbol",
  "ClinicalSignificance",
  "PhenotypeList",
  "ReviewStatus",
  "Chromosome",
  "Start"
)];clinvar_small
rm(clinvar)
gc()
epilepsy_clinvar <- clinvar_small[
  grepl("epilepsy", clinvar_small$PhenotypeList, ignore.case = TRUE),
]
dim(epilepsy_clinvar)
unique(epilepsy_clinvar$ClinicalSignificance)
pathogenic_epilepsy=epilepsy_clinvar[epilepsy_clinvar$ClinicalSignificance %in% c("pathogenic","likely pathogenic","Pathogenic/Likely pathogenic","Pathogenic, low penetrance"),]
dim(pathogenic_epilepsy)
gene_counts = sort(table(pathogenic_epilepsy$GeneSymbol), decreasing = TRUE)
head(gene_counts, 15)
pathogenic_epilepsy[pathogenic_epilepsy$GeneSymbol== "SCN1A",]
gene_counts <-table(pathogenic_epilepsy$GeneSymbol)
head(gene_counts, 10)
top_genes <- as.data.frame(head(gene_counts, 10))
colnames(top_genes) <- c("Gene", "Variant_Count")
top_genes
table(pathogenic_epilepsy$ReviewStatus)
sort(table(pathogenic_epilepsy$Chromosome), decreasing = TRUE)
write.csv(
  pathogenic_epilepsy,
  "result/pathogenic_epilepsy_variants.csv",
  row.names = FALSE
)
library(ggplot2)

# Count genes
gene_counts <- sort(table(pathogenic_epilepsy$GeneSymbol), decreasing = TRUE)
# Plot top 10
barplot(
  gene_counts[1:10],
  las = 2,
  main = "Top 10 Epilepsy Genes",
  ylab = "Number of Pathogenic Variants"
)
ggsave("result/top_epilepsy_genes_plot.png", width = 8, height = 6)

clinical_summary <- data.frame(
  Total_Epilepsy_Variants = nrow(epilepsy_clinvar),
  Pathogenic_High_Confidence = nrow(pathogenic_epilepsy),
  Unique_Genes = length(unique(pathogenic_epilepsy$GeneSymbol)),
  Most_Common_Gene = names(gene_counts)[1]
)

clinical_summary

write.csv(clinical_summary,
          "result/clinical_summary.csv",
          row.names = FALSE)
gene_counts_df <- as.data.frame(gene_counts)

write.csv(
  gene_counts,
  "result/gene_variant_counts.csv",
  row.names = FALSE
)

