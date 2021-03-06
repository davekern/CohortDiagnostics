% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CohortConstruction.R
\name{createCohortTable}
\alias{createCohortTable}
\title{Create cohort table(s)}
\usage{
createCohortTable(
  connectionDetails = NULL,
  connection = NULL,
  cohortDatabaseSchema,
  cohortTable = "cohort",
  createInclusionStatsTables = FALSE,
  resultsDatabaseSchema = cohortDatabaseSchema,
  cohortInclusionTable = paste0(cohortTable, "_inclusion"),
  cohortInclusionResultTable = paste0(cohortTable, "_inclusion_result"),
  cohortInclusionStatsTable = paste0(cohortTable, "_inclusion_stats"),
  cohortSummaryStatsTable = paste0(cohortTable, "_summary_stats")
)
}
\arguments{
\item{connectionDetails}{An object of type \code{connectionDetails} as created using the
\code{\link[DatabaseConnector]{createConnectionDetails}} function in the
DatabaseConnector package. Can be left NULL if \code{connection} is
provided.}

\item{connection}{An object of type \code{connection} as created using the
\code{\link[DatabaseConnector]{connect}} function in the
DatabaseConnector package. Can be left NULL if \code{connectionDetails}
is provided, in which case a new connection will be opened at the start
of the function, and closed when the function finishes.}

\item{cohortDatabaseSchema}{Schema name where your cohort table resides. Note that for SQL Server,
this should include both the database and schema name, for example
'scratch.dbo'.}

\item{cohortTable}{Name of the cohort table.}

\item{createInclusionStatsTables}{Create the four additional tables for storing inclusion rule
statistics?}

\item{resultsDatabaseSchema}{Schema name where the statistics tables reside. Note that for
SQL Server, this should include both the database and schema
name, for example 'scratch.dbo'.}

\item{cohortInclusionTable}{Name of the inclusion table, one of the tables for storing
inclusion rule statistics.}

\item{cohortInclusionResultTable}{Name of the inclusion result table, one of the tables for
storing inclusion rule statistics.}

\item{cohortInclusionStatsTable}{Name of the inclusion stats table, one of the tables for storing
inclusion rule statistics.}

\item{cohortSummaryStatsTable}{Name of the summary stats table, one of the tables for storing
inclusion rule statistics.}
}
\description{
This function creates an empty cohort table. Optionally, additional empty tables are created to
store statistics on the various inclusion criteria.
}
