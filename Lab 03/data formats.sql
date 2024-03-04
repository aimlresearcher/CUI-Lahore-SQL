SQL
------
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Age INT,
    Grade NVARCHAR(2),
    Street NVARCHAR(100),
    City NVARCHAR(50),
    State NVARCHAR(2),
    Zipcode NVARCHAR(10)
);

INSERT INTO Students (StudentID, Name, Age, Grade, Street, City, State, Zipcode)
VALUES 
    (1, 'John Doe', 20, 'A', '123 Main St', 'Cityville', 'CA', '12345'),
    (2, 'Jane Smith', 21, 'B+', '456 Oak Ave', 'Townsville', 'NY', '67890');


XML
---
<students>
    <student>
        <id>001</id>
        <name>John Doe</name>
        <age>20</age>
        <grade>A</grade>
        <address>
            <street>123 Main St</street>
            <city>Cityville</city>
            <state>CA</state>
            <zipcode>12345</zipcode>
        </address>
    </student>

    <student>
        <id>002</id>
        <name>Jane Smith</name>
        <age>21</age>
        <grade>B+</grade>
        <address>
            <street>456 Oak Ave</street>
            <city>Townsville</city>
            <state>NY</state>
            <zipcode>67890</zipcode>
        </address>
    </student>

    <!-- Add more student entries as needed -->
</students>


JSON
----
{
  "students": [
    {
      "id": "001",
      "name": "John Doe",
      "age": 20,
      "grade": "A",
      "address": {
        "street": "123 Main St",
        "city": "Cityville",
        "state": "CA",
        "zipcode": "12345"
      }
    },
    {
      "id": "002",
      "name": "Jane Smith",
      "age": 21,
      "grade": "B+",
      "address": {
        "street": "456 Oak Ave",
        "city": "Townsville",
        "state": "NY",
        "zipcode": "67890"
      }
    }
    // Add more student entries as needed
  ]
}
