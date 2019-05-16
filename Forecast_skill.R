library(verification)

# Get observed and forecast data


## read in clean data

inFolder <- "/Users/shaunharrigan/Dropbox/Projects/Drought_book/Worked_example/Data/"

fcst_dataset <- read.csv(paste0(inFolder, "forecast_data.csv"), header = TRUE)

observed <- fcst_dataset$Observed_flow
ensemble_fcst <- fcst_dataset[ ,4:54] # Select 51 ensemble members 

ensemble_mean <- apply(ensemble_fcst, 1, mean)


### Create benchmark forecast

# Calculate ensemble mean
ens_mean <- apply(fcst_data[ ,], margin, ...)



verification::brier()


# Overall scores
correlation <- cor(observed, ensemble_mean)
pbias <- 100 * (sum(ensemble_mean - observed) / sum(observed))


# Hits and misses under Q90 threshold 




# Brier skill score 


# CRPS
crps_fcst <- verification::crpsDecomposition(obs = observed, eps = ensemble_fcst)


## Data from Wilks, table 7.3 page 246.
y.i <- c(0,0.05, seq(0.1, 1, 0.1))
obar.i <- c(0.006, 0.019, 0.059, 0.15, 0.277, 0.377, 0.511,
            0.587, 0.723, 0.779, 0.934, 0.933)
prob.y <- c(0.4112, 0.0671, 0.1833, 0.0986, 0.0616, 0.0366,
            0.0303, 0.0275, 0.245, 0.022, 0.017, 0.203)
verification::reliability.plot(y.i, obar.i, prob.y, titl = "Test 1", legend.names =
                   c("Model A") )





# end 