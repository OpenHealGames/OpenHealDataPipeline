# OpenHealDataPipeline

Welcome to the OpenHealDataPipeline repository. This repository contains the core processes for extracting raw data, performing calculations, and supporting clinical research within the OpenHeal project.

## Project Overview

The OpenHealDataPipeline is designed to handle the following key tasks:

- **Data Extraction:** 
  This section includes the primary SQL queries used to extract raw data from various databases.
  These queries are designed to generate CSV files that allow for the association of game metrics, positional data from images, and health and environmental metadata.
  This foundational data is essential for future processing steps, where these various data sources are integrated and analyzed to support broader research goals.

- **Data Processing:** 
  Here, you will find Python scripts and Jupyter notebooks focused on cleaning, filtering, and organizing the extracted data.
  This general data preparation is crucial before it can be applied to specific projects, such as clinical trials.
  For instance, when beginning a new clinical trial, it's recommended to start by cloning this repository.
  From there, you can perform all necessary data cleaning and harmonization, associate the relevant game and movement data with clinical metadata, and then proceed with specific calculations in a new branch. Alternatively, you may fork this repository to create a version tailored to the specific requirements of your study. This process ensures consistency and allows for systematic development while respecting the intellectual property rules outlined in the license agreement.

- **Clinical Research Support:** 
  This section provides general predictive models and classifiers, categorized by software version and the type of data supplied.
  These tools are intended to support the preparation and analysis of data within clinical research settings.
  By offering baseline models, this repository aids researchers in applying standardized methods, which can then be customized according to the specific needs of each study.

## Getting Started

To get started with the project, clone the repository and set up your environment:

```bash
git clone https://github.com/OpenHealGames/OpenHealDataPipeline.git
cd OpenHealDataPipeline
