<?php
require_once('./core/connect.php');
$products = array();
// Exécution d'une requête SQL
try {
    // $valeur_condition = 1;
    $requete = "SELECT * FROM products";
    $statement = $pdo->prepare($requete);
    $statement->execute([]);

    // Traitement des résultats
    while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
        // Traitement de chaque ligne de résultat
        array_push($products, $row);

    }

} catch (PDOException $e) {
    echo "Erreur de requête : " . $e->getMessage();
}

?>

<!DOCTYPE html>
<html lang="fr" dir="ltr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> ArtShop | Shop </title>
    <link rel="stylesheet" href="./css/style.css">
</head>

<body>
    <main class="shop__main">
        <section class="shop-main__articles">
            <?php
            if ($products && count($products) > 1) {
                foreach ($products as $product) {


                    ?>
                    <article class="shop__article">
                        <figure>
                            <img src=<?= $product["url"] ?> alt=<?= $product["name"] ?> />
                        </figure>

                    </article>
                    <?php
                }
            } else {
                ?>
                <p> Aucun produit pour le moment </p>

                <?php

            }


            ?>
        </section>
        <main>
</body>

</html>