\name{TrackHub-class}
\docType{class}

%% Classes:
\alias{class:TrackHub}
\alias{TrackHub-class}

%% Constructor:
\alias{TrackHub}

%% Accessors:
\alias{$,TrackHub-method}
\alias{[[,TrackHub,ANY,ANY-method}
\alias{genome,TrackHub-method}
\alias{length,TrackHub-method}
\alias{uri}

%% Coercion:
\alias{coerce,character,TrackHub-method}

%% Show:
\alias{show,TrackHub-method}

\title{TrackHub Access}

\description{
  The \code{TrackHub} class represents a TrackHub data source,
  essentially directory layout separating tracks and sequences by
  genome, along with a few metadata files. This interface abstracts
  those details and provides access to a TrackHub at any URL supported
  by R (HTTP, FTP, and local files). This is an easy way to make data
  accessible to the UCSC Genome Browser.
}

\section{Constructor}{
  \describe{
    \item{}{
      \code{TrackHub(uri, create = FALSE)}: Constructs a
      new \code{TrackHub} object, representing a repository at
      \code{uri}. If \code{create} is \code{TRUE}, and \code{uri} is
      writeable (i.e., local), the repository is created if it does not
      already exist. If it does exist, then a message is emitted to
      indicate that the repository was not recreated.
    }
  }
}

\section{Accessor Methods}{
  In the code snippets below, \code{x} represents a \code{TrackHub}
  object.

  \describe{
    \item{}{\code{x$genome}, \code{x[["genome"]]}: Get
      the \code{\linkS4class{TrackHubGenome}} object for the genome named
      \code{genome}.
    }
    \item{}{\code{length(x)}: number of genomes in the repository
    }
    \item{}{\code{uri(x)}:
      Get the URI pointing to the TrackHub repository.
    }
    \item{}{\code{genome(x)}:
      Get the identifiers of the genomes present in the repository.
    }
  }
}

\author{Michael Lawrence}

\examples{
th <- TrackHub(system.file("tests", "trackhub", package = "rtracklayer"))
uri(th)
genome(th)
length(th)
th$hg19
th[["hg19"]]
}

\keyword{methods}
\keyword{classes}