<?php
require 'database.php';


$requete = $conn->prepare("SELECT *
                                FROM monster
                                    WHERE id = :id
    ");

$requete->bindParam(':id', $_GET['id']);

$requete->execute();

$result = $requete->fetch(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="style/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body class="is-fullheight">
        <header class="is-flex is-align-items-center is-space-between is-justify-content-space-evenly">
            <div class="logo_header image is-128x128">
                <a href="index.php"><img src="image/mhw-rathalos_icon.webp" alt="Rathalos"></a>
            </div>
              <div class="title">
                        <h1> Monster Hunter World - <span>Monster search</span> </h1>
                    </div>

                           
            </div>
        </header>

        <main>
        <div class="search">
                <div class="is-flex  mr-6 ml-6 mt-6 pt-6 pr-5 pl-5 is-flex is-align-items-center is-justify-content-space-evenly">
                    <input type="search" name="bar" class="input mr-6" id="search_bar" placeholder="Type to search... (ex: Rathalos, Kirin, Jagras...)">
                    <i class="fa fa-search fa-x2" id="search_icon"></i>
                </div>
                <div id="result" class="pl-5">
                    <ul id="list_result" class="pl-6">

                    </ul>
                </div>
              <section id="monster" class="card p-6 m-6">
                <div>
                    <h1 class="is-size-4"><?php echo $result['name']; ?> </h1>
                </div>
                <div id="text_monster">
                    <p>Species : <?php echo $result['species']; ?></p>
                    <p> Type :                                   <?php echo $result['type']; ?> </p>
                    <p> Description : <?php echo $result['description']; ?> </p>
                </div>
            </section>

            <section id="search_result" class="container pl-5 pr-5 mb-6">

            </section>


        </main>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="script/script.js"></script>

    </body>
</html>
