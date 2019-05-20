# R Prototypes

## Description:
This repo provides a Dockerized prototyping environment for testing R notebooks.  Example notebooks has been included.

## Usage:
1. Build the dockerized Jupyter environment ` make build `
1. Start the notebook Jupyter server ` make upn `
1. View and edit notebooks at http://localhost:8888
1. Stop the Jupyter server ` make down `

## Content

#### Notebook Examples:
* **CO2 Dataset Investigation:** *notebooks/examples/CO2_Dataset_Investigation.ipynb*
  * Basic exploratory analysis on a sample data set
* **K-Means PCA Example:** *notebooks/examples/K-Means_PCA_Exampleon.ipynb*
  * K-Means example using PCA with clustering visualization
