% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SVM.nfoldcv.R
\name{SVM.nfoldcv}
\alias{SVM.nfoldcv}
\title{Cross validation for SVM}
\usage{
SVM.nfoldcv(data, outcome, train.samples, C, kernels, degree, scale, sigma,
  nfold = 10)
}
\arguments{
\item{data}{List of data matrices for each pathways for each pathway}

\item{outcome}{Binary outcome variable for MKL}

\item{train.samples}{Vector of indices that will be used as training samples}

\item{C}{Vector of canduidate cost parameters}

\item{kernels}{vector of kernel types}

\item{degree}{Degree of polynomial kernel matrix}

\item{scale}{Leading coefficient on the polynomial kernel}

\item{sigma}{Hyperparameter for the radial basis kernel}

\item{nfold}{Number of folds used in cross validation}
}
\value{
cm Confustion matrix along with a variety of accuracy statistics

best.model Model that had the highest accuracy with nfold cross validation
}
\description{
This function performs cross validation to find best combinatiuon of hyper perameters and cost
and uses this model to provide prediction performace results.
}
\examples{
data(benchmark.data)
example.data=benchmark.data[[1]]
training.samples=sample(1:nrow(example.data), floor(0.7*nrow(example.data)),replace=FALSE)
C=2^c(-1,1)
#Find the best cost parameter within the provided range if a linear kernel is used
SVM.nfoldcv(example.data[,1:2], as.factor(example.data[,3]),training.samples,C,
            'linear',0,0,0,nfold=3)
}
