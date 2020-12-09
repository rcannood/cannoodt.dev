---
abstract: Trajectory inference has radically enhanced single-cell RNA-seq research by enabling the study of dynamic changes in gene expression levels during biological processes such as the cell cycle, cell type differentiation, and cellular activation. Downstream of trajectory inference, it is vital to discover genes that are associated with the lineages in the trajectory to illuminate the underlying biological processes. Furthermore, genes that are differentially expressed between developmental/activational lineages might be highly relevant to further unravel the system under study. Current data analysis procedures, however, typically cluster cells and assess differential expression between the clusters, which fails to exploit the continuous resolution provided by trajectory inference to its full potential. The few available non-cluster-based methods only assess broad differences in gene expression between lineages, hence failing to pinpoint the exact types of divergence. We introduce a powerful generalized additive model framework based on the negative binomial distribution that allows flexible inference of (i) within-lineage differential expression by detecting associations between gene expression and pseudotime over an entire lineage or by comparing gene expression between points/regions within the lineage and (ii) between-lineage differential expression by comparing gene expression between lineages over the entire lineages or at specific points/regions. By incorporating observation-level weights, the model additionally allows to account for zero inflation, commonly observed in single-cell RNA-seq data from full-length protocols. We evaluate the method on simulated and real datasets from droplet-based and full-length protocols, and show that the flexible inference framework is capable of yielding biological insights through a clear interpretation of the data.
authors:
- Koen Van den Berge
- Hector Roux de Bézieux
- Kelly Street
- Wouter Saelens
- rcannood
- Yvan Saeys
- Sandrine Dudoit
- Lieven Clement
date: "2019-05-02T00:00:00Z"
doi: "10.1101/623397"
featured: false
image:
  caption: 'Overview of tradeSeq functionality.'
  focal_point: ""
  preview_only: false

projects: []
publication: "bioRxiv"
# publication_short: ""
publication_types:
- "3"
publishDate: "2019-05-02T00:00:00Z"
# slides: example
summary: A powerful framework for inferring within-lineage and between-lineage differential expression.
# tags:
# - Source Themes
title: Trajectory-based differential expression analysis for single-cell sequencing data
url_code: 'https://github.com/statOmics/tradeSeq'
# url_dataset: 'https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE138734'
url_pdf: https://www.biorxiv.org/content/biorxiv/early/2019/05/02/623397.full-text.pdf
#url_poster: '#'
#url_project: ""
#url_slides: ""
#url_source: '#'
#url_video: '#'
---
