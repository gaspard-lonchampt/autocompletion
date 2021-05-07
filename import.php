<?php
    require 'database.php';
    if (isset($_POST['import'])) {
        copy($_FILES['jsonFile']['tmp_name'], 'jsonFiles/' . $_FILES['jsonFile']['name']);
        $data = file_get_contents('jsonFiles/' . $_FILES['jsonFile']['name']);
        $monsters = json_decode($data);

        foreach ($monsters as $monster) {
            $stmt = $conn->prepare('insert into monster(id, name, type, species, description) values(:id, :name, :type, :species, :description)');
            $stmt->bindValue('id', $monster->id);
            $stmt->bindValue('name', $monster->name);
            $stmt->bindValue('type', $monster->type);
            $stmt->bindValue('species', $monster->species);
            $stmt->bindValue('description', $monster->description);
            $stmt->execute();
        }
    }
?>

<html>
	<head>
		<title>Import JSON File</title>
	</head>
	<body>
		<form method="post" enctype="multipart/form-data">
			JSON File <input type="file" name="jsonFile">
			<br>
			<input type="submit" value="Import" name="import">
		</form>
	</body>
</html>
