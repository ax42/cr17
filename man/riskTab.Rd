% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/riskTab.R
\name{riskTab}
\alias{riskTab}
\title{Number at risk table}
\usage{
riskTab(time, risk, group, cens = NULL, title = "Number at risk")
}
\arguments{
\item{time}{vector with times of the first event or follow-up, must be numeric.}

\item{risk}{vector with type of event, can be numeric or factor/character.}

\item{group}{vector with group variable, can be numeric or factor/character.}

\item{cens}{value of 'risk' indicating censored observation (if NULL, the first value of 'risk' vector will be taken).}

\item{title}{title of a table}
}
\value{
A grob with n tables, where n is number of risks. Each table contains number of observations at risk in each group in given time points (the time points correspond to breaks at x-axis of plots with survival curves).
}
\description{
Creates a table for each risk, containing number of observation at risk in given time points in groups.
}
\examples{
riskTab(time = LUAD$time, risk = LUAD$event, group = LUAD$gender, cens = "alive",
title = "Number at risk")
}
\seealso{
\code{\link[cr17]{plotSurvival}}
}
