# Web Scraping 100 websites

Overview
This Python script is designed to scrape metadata, technology stacks, and payment methods from a list of websites and store the gathered data in a MySQL database. It uses libraries such as requests and BeautifulSoup for web scraping, re for pattern matching, pymysql for database connection, and concurrent.futures for concurrent execution.

Prerequisites
Before running the script, ensure that you have the following installed on your system:

Python 3.x
Required Python libraries:
requests
beautifulsoup4
pymysql
You can install the required libraries using pip:
pip install requests beautifulsoup4 pymysql

## A MySQL server running locally with a database named webscrapdb1 and a table scrapedinfo1 with the following structure:

CREATE TABLE scrapedinfo1 (
id INT AUTO_INCREMENT PRIMARY KEY,
url VARCHAR(255),
meta_title VARCHAR(255),
meta_description TEXT,
language VARCHAR(50),
social_media_links TEXT,
mvc_frameworks TEXT,
cms_platforms TEXT,
javascript_libraries TEXT,
types_of_technologies TEXT,
payment_methods TEXT,
category VARCHAR(50)
);
Configuration
Database Connection:
Update the database connection details in the script to match your MySQL server configuration:

# python

connection = pymysql.connect(
host='localhost',
user='your_mysql_username',
password='your_mysql_password',
database='webscrapdb1',
charset='utf8mb4',
cursorclass=pymysql.cursors.DictCursor
)
List of URLs:
Update the urls list in the script to include the websites you want to scrape.

Functionality

1. detect_mvc(content)
   Detects the presence of various MVC frameworks in the provided content using regular expressions.

2. detect_cms(content)
   Detects the presence of various CMS platforms in the provided content using regular expressions.

3. detect_payment_methods(content)
   Detects the presence of various payment methods in the provided content using regular expressions.

4. scrape_tech_payment_metadata(url)
   Scrapes the given URL to extract:

Meta title
Meta description
Language
Social media links
MVC frameworks
CMS platforms
JavaScript libraries
Types of technologies
Payment methods
Category (based on URL pattern)
This function returns a dictionary with the extracted information.

5. insert_data_into_db(data)
   Inserts the scraped data into the MySQL database.

Execution
Scraping and Storing Data:
The script uses ThreadPoolExecutor to scrape multiple URLs concurrently, improving efficiency. The results are stored in the results list and then inserted into the MySQL database using the insert_data_into_db function.

Running the Script:
Simply run the script using Python:
python your_script_name.py

# Output:

The script prints a completion message once the data scraping and insertion into the MySQL database are finished:

Data scraping completed and saved to the MySQL database.

Error Handling
The script includes basic error handling to catch and print exceptions that occur during the scraping process. This ensures that even if some URLs fail to be scraped, the script continues to run for the remaining URLs.

Closing the Database Connection
The script ensures the database connection is properly closed after all data has been inserted:

#python
connection.close()

#Conclusion
This script provides an efficient way to scrape technology and payment information from multiple websites and store it in a MySQL database for further analysis. Adjust the list of URLs and the database connection settings as needed for your specific use case.
Dataset Description
The dataset (scraped_data111.csv) contains information such as URLs, meta titles, meta descriptions, languages, social media links, technology frameworks, CMS platforms, types of technologies used, payment methods, and categories.

# Data Cleaning

Filled missing values in columns like Social Media Links, MVC Frameworks, CMS Platforms, JavaScript Libraries, Types of Technologies, and Payment Methods with "Not specified".
Standardized text formats for Meta Title and Meta Description by converting them to lowercase and removing leading/trailing whitespaces.
Exploratory Data Analysis (EDA)
Used descriptive statistics to summarize key aspects of the dataset.
Visualized the distribution of categories, common JavaScript libraries, popular MVC frameworks, prevalent CMS platforms, and frequently used payment methods.

# Key Findings

Most common JavaScript libraries include https://cdn.cookielaw.org/scripttemplates/otSDKStub.js.
Popular MVC frameworks are React, Spring, and Angular.
WordPress is the dominant CMS platform.
Discover is the most used payment method.

# Visualizations

Included bar charts to visualize the distribution of categories, common JavaScript libraries, popular MVC frameworks, CMS platforms, and payment methods.
Conclusion
The analysis revealed significant insights into technology trends across different website categories. Understanding these trends can inform decisions related to technology adoption and website development strategies.

Tools and Libraries Used in visualization
Python
pandas, matplotlib
![image](https://github.com/developernandini/WebsiteScraping/assets/107920115/99427918-66fa-40ad-9ba4-f8d8cbf1b58a)

