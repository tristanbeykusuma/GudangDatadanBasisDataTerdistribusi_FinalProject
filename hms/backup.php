
<?php
include_once('./include/config2.php');
if(isset($_POST['submit']))
{
$connection = new MySql(SERVERHOST,"gudangdatadanbasisdataterdistribusi",DBUSER, DBPASS);
$connection->backup_tables(); /*Save all tables and it values in selected database*/
$connection->backup_tables("post_table"); /*Saves only table name posts_table from selected database*/
$connection->closeConnection();
echo "<script>alert('Your database backup submitted');</script>";
echo "<script>window.location.href ='/'</script>";
} ?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Hospital management System </title>

    <link rel="shortcut icon" href="./assets/images/fav.jpg">
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/fontawsom-all.min.css">
     <link rel="stylesheet" href="./assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/style.css" />
</head>

    <body>
    <form method="post">
    <div class="col-sm-8">
        <button class="btn btn-success btn-sm" type="submit" name="submit">Backup</button>
    </div>
    </form>
    </body>

<script src="./assets/js/jquery-3.2.1.min.js"></script>
<script src="./assets/js/popper.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<script src="./assets/plugins/scroll-nav/js/jquery.easing.min.js"></script>
<script src="./assets/plugins/scroll-nav/js/scrolling-nav.js"></script>
<script src="./assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>

<script src="./assets/js/script.js"></script>



</html>