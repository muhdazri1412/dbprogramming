<html>
    <head>
        <!-- <link href="style.css" rel="stylesheet" media="all" type="text/css"> -->
        <meta charset="utf-8">
        <link rel="icon" type="image/ico" href="img/joystick.ico">

        <title>Game Shop</title>
        
        <style>
            table, th, td {
                
    border: 1px solid black;
    border-collapse: collapse;
}
            nav {
                padding: 0px;
                height: 60px;
                border-bottom:  #070617 solid 10px;
                font-family: 'Times New Roman', serif;
                background-color: #00b0c7;
                margin: -8px;
            }
            nav ul {
                float: right;
            }

            nav ul li {
                display: inline-block;
                float: left;
            }

            nav ul li:not(:first-child) {
                margin-left: 48px;
            }

            nav ul li:last-child {
                margin-right: 24px;
            }

            nav ul li a {
                display: inline-block;
                outline: none;
                color: #000;
                text-transform: uppercase;
                text-decoration: none;
                font-size: 14px;
                letter-spacing: 1px;
                font-weight: 600;
                opacity: 0.5;
                transition: 0.3s;

            }

            nav ul li a:hover {

                border-bottom:#3D4849 solid 8px;
                opacity: 1;

                }

            .logo {
                float: left;
                padding: 8px;
                margin-top: 8px;
            }

            .logo a {
                color: #000;
                text-transform: uppercase;
                font-weight: 700;
                font-size: 18px;
                letter-spacing: 2px;
                text-decoration: none;
            }

            .active {
                opacity: 1;
            }

            input{
                width: 40%;
                height: 5%;
                border:1px;
                border-radius: 05px;
                padding: 8px 15px 8px 15px;
                margin: 10px 0px 15px 0px;
                box-shadow: 1px 1px 2px 1px grey;
            }

            input[type=submit]{
                width: 19.1%;
                height: 5%;
                border: 1px;
                border-radius: 5px;
                padding: 8px 15px 8px 15px;
                margin: 26px 24px 15px 0px;
                box-shadow: 1px 1px 2px 1px grey;
            }

            input[type=reset]{
                width: 19.1%;
                height: 5%;
                border: 1px;
                border-radius: 5px;
                padding: 8px 15px 8px 15px;
                margin: 10px 0px 15px 0px;
                box-shadow: 1px 1px 2px 1px grey;
            }

            body{
                background-color: #e6ffff;
            }

            .button{
                cursor: pointer;
            }

            .button:hover {
                background: #b3b3b3;
            }

            .title{
                color: black;
                text-align: center;
                font-family: sans-serif;
            }

        </style>
    </head>

    <body>
    <nav>
            <div class="container">
                <a href="itemlist.php">
                <img src="img/banner.png" alt="Pc Shop" style="float: left; width: 32px; margin-left: 19px; margin-top: 10.5px">
                </a>

                <div class="logo">
                    <a href="itemlist.php">PC Shop</a>
                </div>

                <div class="topnav">
                    <ul>
                    <li><a href="itemlist.php">Item List</a></li>
                        <li><a href="addnewitem.php">Add</a></li>
                        <li><a href="modify.php">Modify</a></li>
                        <li><a class="active" href="delete.php">Delete</a></li>
                        <li><a  href="find.php">Find</a></li>
                        <li><a href="others.php">Others</a></li>
                    </ul>
                </div>
            </div>
    </nav>
    <div class="title" align="center">
       <h1> DELETE CUSTOMER </h1>
    </div> 
    <center>
            <form action="" method = "POST">
                <input type="text" name = "Cust_Id" placeholder = "Enter customer ID to delete" required/><br>

                <input type="submit" name="delete" class="button" value = "Delete Data" />
  
            </form>
        </center>

<div align="center">
<?php
     
   $connection = mysqli_connect("localhost", "root", "");
   $db = mysqli_select_db($connection, 'itemshop');

   if(isset($_POST['delete']))
   {
    $Cust_Id = $_POST['Cust_Id'];

    $query = "DELETE FROM `Customer` WHERE Cust_Id = '$Cust_Id' ";
    $query_run = mysqli_query($connection, $query);

       if($query_run)
       {
           echo '<script type = "text/javascript"> alert("Data deleted successfully")</script>';
       }
       else
       {
        echo '<script type = "text/javascript"> alert("ERROR. Data not deleted") </script>';
       }
   }
?>
</div>
</body>
</html>