install.packages(c(  "tensorflow", "keras", "BiocManager", "Matrix", "Rtsne", "rsvd",
                     "RColorBrewer", "umap", "reshape2"))

# Bioconductor packages:
BiocManager::install(c( "SingleCellExperiment", "scater", "cowplot", "scran",
                        "batchelor", "ComplexHeatmap", "tximeta", 
                        "AnnotationDbi"))

devtools::install_github('fmicompbio/swissknife')