<?php
    require '../database.php';
    $search = $_GET['search'];

    if (isset($_GET['search']) && $_GET['search'] != "") {
        $requete = $conn->prepare("SELECT *
                                FROM monster
                                    WHERE name
                                        LIKE '%$search%'
                                            LIMIT 15
    ");

        $requete->execute();

        $result = $requete->fetchAll(PDO::FETCH_ASSOC);

        // var_dump($result) ;
    ?>
    <h1 class="has-text-centered is-size-4"> Search result : </h1>
    <?php

            if (empty($result)) {
                echo '<p class="error"> No results have been found :( </p>';
            } else {

                foreach ($result as $key => $value) {
                ?>
                <div class="card mt-3 p-3">
                    <h3> <a class="is-size-5 navbar-item p-0" href="element.php?id=<?php echo $value['id']; ?>"><?php echo $value['name']; ?></a></h3>
                    <p>                        <?php echo $value['description']; ?> </p>
                </div>

        <?php
            }
                }

        }