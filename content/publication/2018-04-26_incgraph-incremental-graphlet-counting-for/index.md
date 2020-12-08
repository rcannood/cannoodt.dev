---
abstract: Graphlets are small network patterns that can be counted in order to characterise the structure of a network (topology). As part of a topology optimisation process, one could use graphlet counts to iteratively modify a network and keep track of the graphlet counts, in order to achieve certain topological properties. Up until now, however, graphlets were not suited as a metric for performing topology optimisation; when millions of minor changes are made to the network structure it becomes computationally intractable to recalculate all the graphlet counts for each of the edge modifications. IncGraph is a method for calculating the differences in graphlet counts with respect to the network in its previous state, which is much more efficient than calculating the graphlet occurrences from scratch at every edge modification made. In comparison to static counting approaches, our findings show IncGraph reduces the execution time by several orders of magnitude. The usefulness of this approach was demonstrated by developing a graphlet-based metric to optimise gene regulatory networks. IncGraph is able to quickly quantify the topological impact of small changes to a network, which opens novel research opportunities to study changes in topologies in evolving or online networks, or develop graphlet-based criteria for topology optimisation.
authors:
- <b>Robrecht Cannoodt</b>
- Joeri Ruyssinck
- Jan Ramon
- Katleen De Preter
- Yvan Saeys
date: "2018-04-26T00:00:00Z"
doi: 10.1371/journal.pone.0195997
featured: false
image:
  caption: 'Graphlet counting in a network characterises its local topologies.'
  focal_point: ''
  preview_only: false
project: []
publication: 'PLOS ONE'
publication_short: ''
publication_types:
- '2'
publishDate: '2018-04-26T00:00:00Z'
# slides: example
summary: IncGraph is a method for calculating the differences in graphlet counts with respect to the network in its previous state.
# tags:
# - Example Tag
title: 'IncGraph: Incremental graphlet counting for topology optimisation'
url_code: 'https://github.com/rcannood/incgraph'
# url_dataset: ''
url_pdf: 'IncGraph is a method for calculating the differences in graphlet counts with respect to the network in its previous state'
# url_poster: ''
# url_slides: ''
# url_source: ''
# url_video: ''
---
