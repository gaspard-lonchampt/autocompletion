<?php
require '../database.php';

$search = $_GET['search'];

if (isset($_GET['search']) && $_GET['search'] != "") {
$requete = $conn->prepare("SELECT *
                                FROM monster
                                    WHERE name
                                        LIKE '$search%'
                                            LIMIT 10
    ");

$requete->execute();

$result = $requete->fetchAll(PDO::FETCH_ASSOC);

foreach ($result as $key => $value) {
?>

<li><a class="navbar-item p-0" href="element.php?id=<?php echo $value['id']; ?>"><?php echo $value['name']; ?></a></li>

<?php
}
}