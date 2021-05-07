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
        </header>

        <main>
            <section id="search" class="hero ">
                <article class="content_search">
                    <div class="is-flex mr-6 ml-6 mt-6 pt-6 pr-5 pl-5 is-flex is-align-items-center is-justify-content-space-evenly">
                            <input type="search" name="bar" id="search_bar" class="input mr-6" placeholder="Type to search... (ex: Rathalos, Kirin, Jagras...)">
                            <i class="fa fa-search fa-2x" id="search_icon"></i>
                            <!-- <button id="button_search"> Search </button>     -->
                    </div>
                    <div id="result" class="pl-5">
                        <ul id="list_result" class="pl-6">

                        </ul>
                    </div>
                </article>
            </section>

            <section id="search_result" class="container is-flex-direction-column mb-6">

            </section>


        </main>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="script/script.js"></script>

    </body>
</html>
