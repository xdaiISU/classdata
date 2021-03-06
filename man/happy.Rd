% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{happy}
\alias{happy}
\title{Data related to happiness from the general social survey.}
\format{
A data frame with 62466 rows and 11 variables
}
\usage{
data(happy)
}
\description{
The data is a small sample of variables related to happiness from the
general social survey (GSS). The GSS is a yearly cross-sectional survey of
Americans, run since 1972. We combine data for more than 25 years to yield over 60 thousand
observations, and of the over 5,000 variables, we select some variables that are related to
happiness:
}
\details{
\itemize{
\item year. year of the response, 1972 to 2018.
\item age. age in years: 18--89 (89 stands for all 89 year olds and older).
\item degree. highest education: lt high school, high school, junior
college, bachelor, graduate.
\item finrela. how is your financial status compared to others: far below, below average, average, above average, far above.
\item happy. happiness: very happy, pretty happy, not too happy.
\item health. health: excellent, good, fair, poor.
\item marital. marital status:  married, never married, divorced,
widowed, separated.
\item sex. sex: female, male.
\item polviews. from extremely conservative to extremely liberal.
\item partyid. party identification: strong republican, not str republican, ind near rep, independent, ind near dem, not str democrat, strong democrat, other party.
\item wtssall. probability weight. 0.39--8.74
}
}
\keyword{datasets}
