% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/probe2gene.R
\name{probe2gene}
\alias{probe2gene}
\title{Transform Probe Set to Gene Level Data}
\usage{
probe2gene(expr_df, annot)
}
\arguments{
\item{expr_df}{data.frame with probe set level expression data}

\item{annot}{data.frame containing probe set id (in row name slot) to
gene entrez id (in first column) mapping information}
}
\value{
data.frame with gene level expression values
}
\description{
Function to transform expression values from probe set to gene level data. If
genes are represented by several probe sets then their mean intensities are used.
Probe sets not matching any gene ids are removed.
}
\examples{
expr_df <- data.frame(t1=runif(3), t2=runif(3), row.names=paste0("p", 1:3))
annot <- data.frame(ENTREZID=c("123","123","124"), 
                    SYMBOL=c("g1","g1","g2"),
                    row.names=paste0("p", 1:3))
gdf <- probe2gene(expr_df, annot)
}
