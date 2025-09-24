#' Differential expression analysis using Sharon et al. (2020) data.
#'
#'  Expression data for regions of the mouse brain after incoulation from control and ASD gut microbiota from humans.
#'
#' @format A DESeq2 object containing results of differential expression analysis:
#' \describe{
#'   \item{assays}{List of matrices with raw and normalized count data}
#'   \item{rowRanges}{Genomic ranges for each gene}
#'   \item{colData}{Data frame with sample metadata}
#'   \item{design}{Formula representing the experimental design}
#'   \item{dispersions}{Estimated dispersion values}
#'   \item{results}{Data frame with differential expression results}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"gutbrain"

#' Sample meta data for the gutbrain
#'
#'  Sample meta data for the gutbrain data
#'
#' @format A data frame  with 30 rows and 3 variables:
#' \describe{
#'   \item{age}{Age}
#'   \item{mouse_status}{ASD or control}
#'   \item{sex}{Sex}
#'   \item{source_name}{source name}
#'   \item{tissue}{brain tissue sampled}
#'   \item{condition}{Condition}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"gutbrain_metadata"


#' Processed count data for all ASD samples
#'
#'  Processed data for all ASD samples
#'
#' @format A data frame  with 55421 rows and 81 variables:
#' \describe{
#'   \item{GeneID}{MGI gene ID}
#'   \item{SRR#######}{Processed read counts for each sample}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"mouse_gutbrain_de_counts_asd"

#' Processed count data for all control samples
#'
#'  Processed data for all control samples
#'
#' @format A data frame  with 55421 rows and 59 variables:
#' \describe{
#'   \item{GeneID}{MGI gene ID}
#'   \item{SRR#######}{Processed read counts for each sample}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"mouse_gutbrain_de_counts_controls"


#' Processed count data for all samples from the prefrontal cortex
#'
#'  Processed data for all control samples
#'
#' @format A data frame  with 55421 rows and 71 variables:
#' \describe{
#'   \item{GeneID}{MGI gene ID}
#'   \item{SRR#######}{Processed read counts for each sample}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"mouse_gutbrain_de_counts_prefrontalcortex"

#' Processed count data for all samples from the striatum
#'
#'  Processed data for all control samples
#'
#' @format A data frame  with 55421 rows and 69 variables:
#' \describe{
#'   \item{GeneID}{MGI gene ID}
#'   \item{SRR#######}{Processed read counts for each sample}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"mouse_gutbrain_de_counts_striatum"

#' Differential expression results for analysis of all ASD vs all control samples
#'
#'  Differential expression analysis comparing all ASD to all control data
#'
#' @format A data frame  with 55421 rows and 7 variables:
#' \describe{
#'   \item{GeneID}{MGI gene ID}
#'   \item{baseMean}{The average of the normalized count values, dividing by size factors, taken over all samples}
#'   \item{log2FoldChange}{The effect size estimate. This value indicates how much the gene or transcript's expression seems to have changed between the comparison and control groups. This value is reported on a logarithmic scale to base 2}
#'   \item{lfcSE}{The standard error estimate for the log2 fold change estimate}
#'   \item{stat}{The value of the test statistic for the gene or transcript.}
#'   \item{pvalue}{P-value of the test for the gene or transcript.}
#'   \item{padj}{Adjusted P-value for multiple testing for the gene or transcript.}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"mouse_gutbrain_de_autismVcontrol"

#' Differential expression results for analysis of prefrontal cortex ASD samples vs prefrontal cortex control samples
#'
#'  Differential expression analysis comparing prefrontal cortex samples between ASD and control samples
#'
#' @format A data frame  with 55421 rows and 7 variables:
#' \describe{
#'   \item{GeneID}{MGI gene ID}
#'   \item{baseMean}{The average of the normalized count values, dividing by size factors, taken over all samples}
#'   \item{log2FoldChange}{The effect size estimate. This value indicates how much the gene or transcript's expression seems to have changed between the comparison and control groups. This value is reported on a logarithmic scale to base 2}
#'   \item{lfcSE}{The standard error estimate for the log2 fold change estimate}
#'   \item{stat}{The value of the test statistic for the gene or transcript.}
#'   \item{pvalue}{P-value of the test for the gene or transcript.}
#'   \item{padj}{Adjusted P-value for multiple testing for the gene or transcript.}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"mouse_gutbrain_de_autismVcontrol_in_prefrontalcortex"


#' Differential expression results for analysis of striatum ASD samples vs striatum cortex control samples
#'
#'  Differential expression analysis comparing striatum cortex samples between ASD and control samples
#'
#' @format A data frame  with 55421 rows and 7 variables:
#' \describe{
#'   \item{GeneID}{MGI gene ID}
#'   \item{baseMean}{The average of the normalized count values, dividing by size factors, taken over all samples}
#'   \item{log2FoldChange}{The effect size estimate. This value indicates how much the gene or transcript's expression seems to have changed between the comparison and control groups. This value is reported on a logarithmic scale to base 2}
#'   \item{lfcSE}{The standard error estimate for the log2 fold change estimate}
#'   \item{stat}{The value of the test statistic for the gene or transcript.}
#'   \item{pvalue}{P-value of the test for the gene or transcript.}
#'   \item{padj}{Adjusted P-value for multiple testing for the gene or transcript.}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"mouse_gutbrain_de_autismVcontrol_in_striatum"

#' Differential expression results for analysis of the prefrontal cortex vs the striatum across all samples
#'
#'  Differential expression analysis comparing the prefrontal cortex vs the striatum across all samples
#'
#' @format A data frame  with 55421 rows and 7 variables:
#' \describe{
#'   \item{GeneID}{MGI gene ID}
#'   \item{baseMean}{The average of the normalized count values, dividing by size factors, taken over all samples}
#'   \item{log2FoldChange}{The effect size estimate. This value indicates how much the gene or transcript's expression seems to have changed between the comparison and control groups. This value is reported on a logarithmic scale to base 2}
#'   \item{lfcSE}{The standard error estimate for the log2 fold change estimate}
#'   \item{stat}{The value of the test statistic for the gene or transcript.}
#'   \item{pvalue}{P-value of the test for the gene or transcript.}
#'   \item{padj}{Adjusted P-value for multiple testing for the gene or transcript.}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"mouse_gutbrain_de_tissuetype"

#' Differential expression results for analysis of the prefrontal cortex vs the striatum in only ASD samples
#'
#'  Differential expression analysis comparing the prefrontal cortex vs the striatum in only ASD samples
#'
#' @format A data frame  with 55421 rows and 7 variables:
#' \describe{
#'   \item{GeneID}{MGI gene ID}
#'   \item{baseMean}{The average of the normalized count values, dividing by size factors, taken over all samples}
#'   \item{log2FoldChange}{The effect size estimate. This value indicates how much the gene or transcript's expression seems to have changed between the comparison and control groups. This value is reported on a logarithmic scale to base 2}
#'   \item{lfcSE}{The standard error estimate for the log2 fold change estimate}
#'   \item{stat}{The value of the test statistic for the gene or transcript.}
#'   \item{pvalue}{P-value of the test for the gene or transcript.}
#'   \item{padj}{Adjusted P-value for multiple testing for the gene or transcript.}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"mouse_gutbrain_de_tissuetype_in_ASDmice"

#' Differential expression results for analysis of the prefrontal cortex vs the striatum in only control samples
#'
#'  Differential expression analysis comparing the prefrontal cortex vs the striatum in only control samples
#'
#' @format A data frame  with 55421 rows and 7 variables:
#' \describe{
#'   \item{GeneID}{MGI gene ID}
#'   \item{baseMean}{The average of the normalized count values, dividing by size factors, taken over all samples}
#'   \item{log2FoldChange}{The effect size estimate. This value indicates how much the gene or transcript's expression seems to have changed between the comparison and control groups. This value is reported on a logarithmic scale to base 2}
#'   \item{lfcSE}{The standard error estimate for the log2 fold change estimate}
#'   \item{stat}{The value of the test statistic for the gene or transcript.}
#'   \item{pvalue}{P-value of the test for the gene or transcript.}
#'   \item{padj}{Adjusted P-value for multiple testing for the gene or transcript.}
#' }
#' @source \url{doi:10.1016/j.cell.2019.05.004}
"mouse_gutbrain_de_tissuetype_in_controlmice"

