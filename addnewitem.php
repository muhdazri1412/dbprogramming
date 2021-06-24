<html>
    <head>
        <!-- <link href="style.css" rel="stylesheet" media="all" type="text/css"> -->
        <meta charset="utf-8">
        <link rel="icon" type="image/ico" href="img/banner.png">
        <title>Game Shop</title>
        
        <style>
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
            input{
                width: 40%;
                height: 5%;
                border: 1px;
                border-radius: 5px;
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
                margin: 10px 0px 15px 0px;
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
                        <li><a class="active" href="addnewitem.php">Add</a></li>
                        <li><a href="modify.php">Modify</a></li>
                        <li><a href="delete.php">Delete</a></li>
                        <li><a  href="find.php">Find</a></li>
                        <li><a href="others.php">Others</a></li>
                    </ul>
                </div>
            </div>
        </nav>
<div align="center">
       <div class="title">
           <h1> ADD NEW CUSTOMER </h1>
        </div> 
    <div class="content">
    <form method="post" action="insert.php" >
        <input type="text" name="Cust_Id" class="form-control" placeholder="Enter Customer Id" required><br/>
        <input type="text" name="Cust_Name" class="form-control" placeholder="Enter Customer name" required><br/>
        <input type="text" name="Cust_phoneNum" class="form-control" placeholder="Enter Phone Number" required><br/>
        <input type="text" name="Cust_Email" class="form-control" placeholder="Enter Customer Email address" required><br/>
        <input type="text" name="Cust_address" class="form-control" placeholder="Enter Customer Address" required><br/>
    </div>
        <div>
        <input type="submit" class="button" value="Add data">
        &nbsp; &nbsp; &nbsp;
            
        <input type="reset" class="button" value="Reset"><br/>
        </div>
    </form>
</div>
</body>
</html>