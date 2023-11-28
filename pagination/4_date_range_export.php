<?php
// Database connection configuration
$servername = "localhost"; // Replace with your server name
$username = "root"; // Replace with your database username
$password = ""; // Replace with your database password
$dbname = "28"; // Replace with your database name

// Create a connection to the database
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Define records per page
$recordsPerPage = 5; // Number of records to display per page

// Initialize variables
$search = '';
$dateFrom = '';
$dateTo = '';
$whereClause = "WHERE status = 'active'"; // Default WHERE clause

// Check if search parameter is provided
if (isset($_GET['search'])) {
    $search = $_GET['search'];
    // Modify the WHERE clause to include search functionality
    $whereClause .= " AND (name LIKE '%$search%' OR email LIKE '%$search%')";
}

// Check if date range parameters are provided
if (isset($_GET['date_from']) && isset($_GET['date_to'])) {
    $dateFrom = $_GET['date_from'];
    $dateTo = $_GET['date_to'];
    // Modify the WHERE clause to include date range filtering
    $whereClause .= " AND created_at BETWEEN '$dateFrom' AND '$dateTo'";
}

// Get current page number from URL parameter
if (isset($_GET['page']) && $_GET['page'] > 0) {
    $currentPage = $_GET['page'];
} else {
    $currentPage = 1; // Default to page 1 if the page parameter is missing or invalid
}

// Calculate offset for retrieving records from the database
$offset = ($currentPage - 1) * $recordsPerPage;

// SQL query to retrieve records from the database based on search, date range, and pagination
$sql = "SELECT * FROM users $whereClause LIMIT $offset, $recordsPerPage";

// Execute the SQL query
$result = $conn->query($sql);

// Display search and date range forms
echo "<form method='GET'>";
echo "<input type='text' name='search' placeholder='Search by name or email' value='$search'>";
echo "<input type='submit' value='Search'>";
echo "</form>";

echo "<form method='GET'>";
echo "<label>Date From:</label>";
echo "<input type='date' name='date_from' value='$dateFrom'>";
echo "<label>Date To:</label>";
echo "<input type='date' name='date_to' value='$dateTo'>";
echo "<input type='submit' value='Filter'>";
echo "</form>";

// Display records for the current page
echo "<h1>Active Records Pagination</h1>";

if ($result->num_rows > 0) {
    echo "<ul>";
    while ($row = $result->fetch_assoc()) {
        echo "<li>Name: " . $row['name'] . " | Status: " . $row['status'] .' '.$row['created_at']. "</li>";
    }
    echo "</ul>";
} else {
    echo "No records found";
}

// Get total number of records (for pagination)
$totalRecordsSql = "SELECT COUNT(*) AS total FROM users $whereClause";
$totalRecordsResult = $conn->query($totalRecordsSql);
$row = $totalRecordsResult->fetch_assoc();
$totalRecords = $row['total'];

// Calculate total number of pages based on total records and records per page
$totalPages = ceil($totalRecords / $recordsPerPage);

// Display pagination links
echo "<div>";
echo "<p>Page $currentPage of $totalPages</p>";
echo "<ul>";

if ($currentPage > 1) {
    echo "<li><a href='?page=1&search=$search&date_from=$dateFrom&date_to=$dateTo'>First</a></li>";
    echo "<li><a href='?page=" . ($currentPage - 1) . "&search=$search&date_from=$dateFrom&date_to=$dateTo'>Previous</a></li>";
}

if ($currentPage < $totalPages) {
    echo "<li><a href='?page=" . ($currentPage + 1) . "&search=$search&date_from=$dateFrom&date_to=$dateTo'>Next</a></li>";
    echo "<li><a href='?page=$totalPages&search=$search&date_from=$dateFrom&date_to=$dateTo'>Last</a></li>";
}

echo "</ul>";
echo "</div>";

// Close the database connection
$conn->close();
?>
