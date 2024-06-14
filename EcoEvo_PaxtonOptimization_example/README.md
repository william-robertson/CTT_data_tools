EcolEvol.Manuscript_Optimizing.Trilateration

-- R code used in Ecology and Evoultion Manuscript - Optimizing trilateration estimates for tracking fine-scale movement of wildlife using automated radio telemetry networks. Scripts include:

1. Github_RSS_by_Distance_Calibration.R - contains code to examine the relationship between RSS values and distance for a given study area using an exponential decay model - see the beginning of the script for detailed information about files needed to run the code and output generated from the code

2. Github_TestDataset_LocalizationError.R - contains code to determine the localization error associated with RSS-based localization estimates for a node network based on a test dataset. Information generated in Github_RSS_by_Distance_Calibration.R script is necessary for this script. See the beginning of the script for detailed information about files needed to run the code and output generated from the code.

3. Github_Simulations.R - contains code to 1) simulate 3 node configurations within a 12.5 km2 grid - node spacing: 100m (n = 100 nodes), 175m (n = 64 nodes), or 250m (n = 36 nodes), 2) create simulated dataset of RSS values for a given node configuration incorporating variability in RSS values based on noise in your node network, 3) assess the error associated with RSS-based localization estimates when filters are applied prior to trilateration analysis for different node configurations. Information generated in Github_RSS_by_Distance_Calibration.R script is necessary for this script. See the beginning of the script for detailed information about files needed to run the code and output generated from the code.

4. Functions_RSS.Based.Localizations.R - Functions used in the scripts 

5. Github_Trilateration.From.Beep.Data.R - contains code to estimate locations via trilateration of tagged individuals from beep data generated by a node network. Information generated in Github_RSS_by_Distance_Calibration.R script is necessary for this script, along with the beep data file created from Import_beep.data.Github.R script in CTT.Data.Manipulation repository. See the beginning of the script for detailed information about the files needed to run the code and output generated from the code.




-- Example files that are used in the R scripts 

1. TestInfo_Example.csv - comma deliminate file (csv) containing an example of how to format information about a test data set

2. BeepData_Example.rds - R object containing example RSS values collected by nodes in a node network during the time period of a test

3. Nodes_Example.csv - csv file containing an example list of nodes in your node network and their UTM locations

4. beep_data_2022-03-26_2022-03-27.rds - R object containing example beep data - to be used for trilateration

5. Nodes_trilateration.csv - csv file containing an example list of nodes in your node network and their UTM locations - to be used for trilateration

6. Tags_trilateration.csv - csv file containing an example list of transmitter tages - to be used for trilateration