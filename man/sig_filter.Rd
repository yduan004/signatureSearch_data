% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/meta_filter.R
\name{sig_filter}
\alias{sig_filter}
\title{Filter LINCS Level 5 by Condition}
\usage{
sig_filter(meta, pert_type = "trt_cp", dose, time = "24 h")
}
\arguments{
\item{meta}{tibble containing experimental conditions of LINCS data}

\item{pert_type}{perturbation type, 'trt_cp' refers to treatment ('trt') with compound ('cp'). 
Description of other perturbation types ('pert_type') can be found in the GEO CMap LINCS 
User Guide v2.1 URL: https://docs.google.com/document/d/1rbHBy3DKekFm9lZouRG-ZcfLmCsfkUKzGPxxjqxPlYw/edit#}

\item{dose}{concentration of compound used for treatment, needs to match elements
in 'pert_idose' column of 'meta'}

\item{time}{compound treatment time, needs to match elements in 'pert_itime' 
column of 'meta'}
}
\value{
tibble
}
\description{
Function to filter Level 5 data from LINCS by specific conditions, such as compound 
concentrations and treatment times.
}
\examples{
meta <- data.frame(pert_idose=c("2 um","4 um", "10 um"), 
                   pert_itime="24 h",
                   pert_type="trt_cp", pert_iname=c("p1","p2","p3"),
                   cell_id="MCF7")
sig_filter(meta, dose="2 um")
}
