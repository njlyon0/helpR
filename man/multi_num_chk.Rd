% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multi_num_chk.R
\name{multi_num_chk}
\alias{multi_num_chk}
\title{Check Multiple Columns for Non-Numbers.}
\usage{
multi_num_chk(data = NULL, col_vec = NULL)
}
\arguments{
\item{data}{(dataframe) object containing at least one column of supposed numbers}

\item{col_vec}{(character or numeric) vector of names or column numbers of the columns containing putative numbers in the data object}
}
\value{
list of same length as `col_vec` with malformed numbers from each column in their respective element
}
\description{
Any elements in the columns that would be changed to NA if `as.numeric()` is used are returned. This is useful for quickly identifying only the "problem" entries of ostensibly numeric columns that are read in as characters. This function is an extension of the `num_chk()` function in this package that deals with only a single column.
}
\examples{
# Create dataframe with a numeric column where some entries would be coerced into NA
spp <- c('salmon', 'bass', 'halibut', 'eel')
ct <- c(1, '14x', '_23', 12)
ct2 <- c('a', '2', '4', '0')
ct3 <- c(NA, 'Y', 'typo', '2')
fish <- data.frame('species' = spp, 'count' = ct, 'num_col2' = ct2, 'third_count' = ct3)

# Use `multi_num_chk()` to return only the entries that would be lost
helpR::multi_num_chk(data = fish, col_vec = c("count", "num_col2", "third_count"))
}
