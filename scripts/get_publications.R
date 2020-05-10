library(tidyverse)
library(rorcid)

orcid <- as.orcid(x = "0000-0003-3641-729X", verbose = TRUE)

works <- works(orcid)

works %>% slice(1) %>% as.list

dois <- 
  works$`external-ids.external-id` %>% 
  map_df(function(df) df %>% filter(`external-id-type` == "doi")) %>% 
  select(doi = `external-id-value`) %>% 
  pull(doi) %>% 
  unique()

library(rcrossref)
works2 <- 
  cr_works(dois)$data %>% 
  mutate(
    folder = paste0(
      "content/publication/", created, "_", title %>% tolower() %>% gsub("[^a-zA-Z ]", "", .) %>% strsplit(" ") %>% map(head, 5) %>% map(paste, collapse = "-"), "/"
    ),
    journal_name = ifelse(publisher == "Cold Spring Harbor Laboratory", "bioRxiv", container.title)
  )

for (i in seq_len(nrow(works2))) {
  date <- works2$created[[i]]
  title <- works2$title[[i]]
  folder <- works2$folder[[i]]
  index_md <- paste0(folder, "/index.md")
  authors <- works2$author[[i]] %>% 
    mutate(label = paste0(
      ifelse(given == "Robrecht" & family == "Cannoodt", "<b>", ""),
      given, " ", family,
      ifelse(given == "Robrecht" & family == "Cannoodt", "</b>", "")
    ))
  journal_name <- works2$journal_name[[i]]
  
  
  if (!file.exists(index_md)) {
    
    content <- paste0(
      "---\n",
      "abstract: ", works2$abstract[[i]], "\n",
      "authors:\n",
      paste0(
        "- ", authors$label, "\n", collapse = ""
      ),
      "date: \"", date, "T00:00:00Z\"\n",
      "doi: ", works2$doi[[i]], "\n",
      "featured: false\n",
      "image:\n",
      "  caption: 'Caption.'\n",
      "  focal_point: ''\n", 
      "  preview_only: false\n",
      "project: []\n",
      "publication: '", journal_name, "'\n",
      "publication_short: ''\n",
      "publication_types:\n", 
      "- '", ifelse(any(journal_name %in% c("arXiv", "bioRxiv")), 3, 2), "'\n",
      "publishDate: '", date, "T00:00:00Z'\n",
      "# slides: example\n",
      "summary: SUMMARY\n", 
      "# tags:\n",
      "# - Example Tag\n",
      "title: '", title, "'\n",
      "# url_code: ''\n",
      "# url_dataset: ''\n", 
      "# url_pdf: ''\n",
      "# url_poster: ''\n",
      "# url_slides: ''\n",
      "# url_source: ''\n",
      "# url_video: ''\n",
      "---"
    )
    
    if (!dir.exists(folder)) {
      dir.create(folder, recursive = TRUE)
    }
    
    write_lines(content, index_md)
  }
}
