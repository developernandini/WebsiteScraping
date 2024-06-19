SELECT * FROM webscrapdb1.scrapedinfo1;
CREATE TABLE scrapedinfo1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255),
    meta_title TEXT,
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