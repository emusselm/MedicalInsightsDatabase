# Medical Insights Database
Within the healthcare system, large amounts of medical data is generated daily. When the
medical community shifted health documentation from the traditional paper-based system to a digitized
system, the volume and complexity of data required digital systems that could grow with the data. Currently,
technologies such as cloud computing and virtualization are allowing for proper storing, processing, and
securing of medical data, as they are powerful and flexible enough to handle the increasing amounts
of medical data available. In this paper, we present a simple-healthcare database system hosted in the
Google Cloud Platform (GCP) using the BigQuery framework to explore the possibilities and privacy issues
presented to the medical community for data storage and access. Additionally, using the flexibility and power
of cloud computing, we present a healthcare portal to allow for secure, user-friendly access of sensitive data,
data visualizations, and medical predictions

To run this code, please do the following to set up your environment:
1. Install a python development environment, such as Anaconda. 
2. Install MySQL Workbench and set up a local SQL instance
3. Create a GoogleCloud Computing Account and set up a BigQueryProject with a datasetID
4. Download a JSON authentification key to access cloud resources from a python script. 

After the environment is initialized you may run the following code: 
1. schema.sql: this sets up the cardiology database table in MySQL
2. preprocessing.ipynb: this python notebook preprocesses the heartdisease data, generates fake personal patient and doctor data, and uploads the data to MySQL
3. MySQLtoBigQuery: this python notebook, after your corresponding information is entered, will upload the contents and schema of the database in MySQL to BigQuery.
