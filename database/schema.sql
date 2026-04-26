-- Create Database
CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;

-- 1. Books Table
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255),
    Status ENUM('Available', 'Issued') DEFAULT 'Available'
);

-- 2. Members Table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE
);

-- 3. Issue Records Table (The logic hub)
CREATE TABLE IssueRecords (
    IssueID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    IssueDate DATE NOT NULL,
    ReturnDate DATE DEFAULT NULL,
    FineAmount DECIMAL(10, 2) DEFAULT 0.00,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
