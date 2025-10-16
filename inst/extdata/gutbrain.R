#Load other libraries
library("DESeq2")
library("clusterProfiler")
library("org.Dm.eg.db")
library("tidyverse")
library("org.Mm.eg.db")
library("MarianesMidgutData")

# Generic functions

formatDESeq2Results <- function( x ) {
  df <- as.data.frame(x)
  df <- data.frame(rownames(df), df)
  colnames(df) <- c("GeneID", colnames(df)[-1])
  rownames(df) <- c()
  return(df)
}

# Fly functions

runClusterProfiler <- function (x) {
  ids <- bitr( x$GeneID, "ENSEMBL", "ENTREZID", "org.Dm.eg.db" )
  kegg <- enrichKEGG(ids$ENTREZID, "dme", keyType="ncbi-geneid")
  kegg@result$Description <- sub( " - Drosophila melanogaster \\(fruit fly\\)", "", kegg@result$Description )
  return(kegg)
}

getClusterProfilerGenes <- function (x, i) {
  data.frame( x ) %>%
    filter( str_detect( Description, i ) ) %>%
    pull( geneID ) %>%
    strsplit( "/" ) %>%
    unlist() %>%
    bitr( fromType="ENTREZID", toType="SYMBOL", OrgDb="org.Dm.eg.db") %>%
    pull( SYMBOL )
}

plotAcrossRegions <- function( x ) {
  df <- data.frame(counts(midgut)[x,], midgut_tsv$condition)
  colnames(df) <- c("counts", "region")
  df <- df[10:30,]
  df$region <- fct_relevel( factor( df$region ), "a1", "a2_3", "Cu", "LFCFe", "Fe", "p1", "p2_4" )
  ggplot( df ) +
    geom_bar( aes( region, counts ), stat="identity" ) +    
    ggtitle(x)+
    theme_bw() + 
    theme( axis.text.x = element_text( angle=90, vjust=0.5 ) )
}

#Mouse functions
runClusterProfilerMouse <- function (x) {
  ids <- bitr( x$GeneID, "ENSEMBL", "ENTREZID", "org.Mm.eg.db" )
  kegg <- enrichKEGG(ids$ENTREZID, "mmu", keyType="ncbi-geneid")
  kegg@result$Description <- sub( " - Mus musculus \\(house mouse\\)", "", kegg@result$Description )
  return(kegg)
}

getClusterProfilerGenesMouse <- function (x, i) {
  data.frame( x ) %>%
    filter( str_detect( Description, i ) ) %>%
    pull( geneID ) %>%
    strsplit( "/" ) %>%
    unlist() %>%
    bitr( fromType="ENTREZID", toType="SYMBOL", OrgDb="org.Mm.eg.db") %>%
    pull( SYMBOL )
}

plotAcrossRegionsMouse <- function( x ) {
  df <- data.frame(counts(gutbrain)[x,], gutbrain$tissue)
  colnames(df) <- c("counts", "condition")  
  df$condition <- fct_relevel( factor( df$condition), "STR", "PFC")
  ggplot( df ) +
    geom_bar( aes( condition, counts ), stat="identity" ) +
    ggtitle(x)+
    theme_bw() + 
    theme( axis.text.x = element_text( angle=90, vjust=0.5 ) )
}


###########################################
#Create objects
###########################################
mouse_counts<-read.csv("GEMS_counts_TD_filt.csv", row.names = 1)
mouse_metadata<-read.csv("GEMS_metadata_TD.csv", row.names = 1)

mouse_brain <- DESeqDataSetFromMatrix(countData = gutbrain,
                                      colData = gutbrain_metadata,
                                      design = ~ tissue)
mouse_brain_collapse <- collapseReplicates(mouse_brain, mouse_brain$bio_sample)
mouse_brain_collapse <- DESeq(mouse_brain_collapse)
mouse_brain_collapse
saveRDS(mouse_brain_collapse, file="GEMS_counts_TD_filt_TISSUE_BIOSAMPLE_COLLAPSE.RDS", compress="xz")


###########################################
#Test objects
###########################################

gutbrain<-readRDS("gutbrain.RDS")
gutbrain_metadata<-read.csv("GEMS_metadata_TD.csv", row.names = 1)

###########################################
#DESeq2 and ClusterProfiler
###########################################

temp <- results(gutbrain, contrast = c("tissue", "STR", "PFC") )
R1_vs_R2 <- formatDESeq2Results(temp)
sig_genes <- filter(R1_vs_R2, padj <= 0.05)
dim(sig_genes)
R1_vs_R2_clusters <- runClusterProfilerMouse(sig_genes)

# Look at the dotplot to see the groups of genes
dim(R1_vs_R2_clusters)
dotplot(R1_vs_R2_clusters, showCategory=34, title="YOUR TITLE HERE", font.size=10, label_format = 50)

# Get the gene symbols for a group of genes
#Replace YOUR CATEGORY HERE with a category from your dotplot
getClusterProfilerGenesMouse(R1_vs_R2_clusters, "Endocytosis")


###########################################
#plotAcrossRegionsMouse
###########################################

plotAcrossRegionsMouse("ENSMUSG00000000184")