---
abstract: 'This protocol explains how to perform a fast SCENIC analysis alongside standard best practices steps on single-cell RNA-sequencing data using software containers and Nextflow pipelines. SCENIC reconstructs regulons (i.e., transcription factors and their target genes) assesses the activity of these discovered regulons in individual cells and uses these cellular activity patterns to find meaningful clusters of cells. Here we present an improved version of SCENIC with several advances. SCENIC has been refactored and reimplemented in Python (pySCENIC), resulting in a tenfold increase in speed, and has been packaged into containers for ease of use. It is now also possible to use epigenomic track databases, as well as motifs, to refine regulons. In this protocol, we explain the different steps of SCENIC: the workflow starts from the count matrix depicting the gene abundances for all cells and consists of three stages. First, coexpression modules are inferred using a regression per-target approach (GRNBoost2). Next, the indirect targets are pruned from these modules using cis-regulatory motif discovery (cisTarget). Lastly, the activity of these regulons is quantified via an enrichment score for the regulon’s target genes (AUCell). Nonlinear projection methods can be used to display visual groupings of cells based on the cellular activity patterns of these regulons. The results can be exported as a loom file and visualized in the SCope web application. This protocol is illustrated on two use cases: a peripheral blood mononuclear cell data set and a panel of single-cell RNA-sequencing cancer experiments. For a data set of 10,000 genes and 50,000 cells, the pipeline runs in <2 h.'
authors:
- Bram Van de Sande
- Christopher Flerin
- Kristofer Davie
- Maxime De Waegeneer
- Gert Hulselmans
- Sara Aibar
- Ruth Seurinck
- Wouter Saelens
- rcannood
- Quentin Rouchon
- Toni Verbeiren
- Dries De Maeyer
- Joke Reumers
- Yvan Saeys
- Stein Aerts
date: "2020-06-19T00:00:00Z"
doi: 10.1038/s41596-020-0336-2
featured: false
image:
  caption: 'Binary regulation activity heatmap for the skin cutaneous melanoma (SKCM) dataset.'
  focal_point: ''
  preview_only: false
project: []
publication: 'Nature Protocols'
publication_short: ''
publication_types:
- '2'
publishDate: '2020-06-19T00:00:00Z'
# slides: example
summary: 'How to perform a fast SCENIC analysis alongside standard best practices steps on single-cell RNA-sequencing data.'
# tags:
# - Example Tag
title: 'A scalable SCENIC workflow for single-cell gene regulatory network analysis'
# url_code: ''
# url_dataset: ''
# url_pdf: ''
# url_poster: ''
# url_slides: ''
# url_source: ''
# url_video: ''
---
