% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fitAndTestCompRiskReg.R
\name{testReg}
\alias{testReg}
\title{Regresion models difference testing}
\usage{
testReg(reg, conf.int = 0.95)
}
\arguments{
\item{reg}{a result of fitReg function.}

\item{conf.int}{level of two-sided confidence interval (default 0.95).}
}
\value{
a data.frame containing p-values of Modified Log-Rank Test for each type of event. The test compares differences between groups in Competing Risks Cox Models.
}
\description{
Testing differences in Competing Risks Regression Models between groups.
}
\examples{
fitR <- fitReg(time = LUAD$time, risk = LUAD$event, group = LUAD$gender, cens = "alive")
testReg(fitR)
}
\seealso{
\code{\link[cr17]{fitReg}}
}
