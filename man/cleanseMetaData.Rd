% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanseMetaData.R
\name{cleanseMetaData}
\alias{cleanseMetaData}
\title{Clean Meta Data of UTF Characters}
\usage{
cleanseMetaData(meta_data_file, meta_data_clean, overwrite = FALSE)
}
\arguments{
\item{meta_data_file}{\code{character(1)} the path to a meta data file 
that has been downloaded using the REDCap user interface.}

\item{meta_data_clean}{\code{character(1)} the path of the file to which
the cleaned meta data will be written.}

\item{overwrite}{\code{logical(1)} Permit the new file to overwrite an 
existing file}
}
\description{
There have been isolated cases observed where certain 
  characters in the data dictionary prevent it from being downloaded
  correctly.  In one case, the data dictionary could not be downloaded
  at all through the API.  It is suspected that these problematic 
  characters are a result of copying and pasting text out of word 
  processing programs.  The problematic characters are not necessarily 
  visible and their exact location can be difficult to identify.  As 
  a last resort, \code{cleanseMetaData} can read a meta data file 
  downloaded through the user interface, purge it of any UTF-8 characters,
  and write an alternate data dictionary that contains only ASCII 
  characters.
}
