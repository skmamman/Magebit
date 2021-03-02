<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Magebit Tasks</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" media="screen and (min-width: 950px)" href="flex.css" />
    <link rel="stylesheet" type="text/css" media="screen and (max-width: 950px)" href="mobile.css" />
</head>
<body>
    <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" id="form" method="POST">
        <div id="flex-container">
            <div id="right-content">
            </div>
            <div id="left-content">
                <!-- Navigation Bar -->
                <div id=navbar>
                    <div class="logo"></div>
                    <div class="navbar">
                        <a href="#">About</a>
                        <a href="#">How it works</a>
                        <a href="#">Contact</a>
                    </div>
                </div>
                <div class="body-container">
                    <div class="contents">
                        <h2>Subscribe to newsletter</h2>
                        <p>Subscribe to our newsletter and get 10% discount on pineapple glasses.</p>
                    </div>
                    <div class="form-control">
                        <input type="email" id="email" class="email" name="email" placeholder="Type your email address here…" required>
                        <button class="button" id="submit" type="submit" name= "submit" src="./icons/arrow.png" ></button>
                    </div>
                    <div class="result"></div>
                    <div class="checkbox">
                        <label class="check">
                            <input id="checkbox" type="checkbox" name="checkbox" class="large">
                            <span class="checkmark"></span>
                            I agree to <a href="#">terms of service</a>
                        </label>
                    </div>
                    <hr>
                    <div class="social">
                        <a href="#"><img class="facebook" src="./icons/Facebook.png" onclick="this.src='./icons/Facebook1.png'"></img></a>
                        <a href="#"><img class="instagram" src="./icons/Instagram.png" onclick="this.src='./icons/instagram1.png'"></img></a>
                        <a href="#"><img class="twitter" src="./icons/Twitter.png" onclick="this.src='./icons/twitter1.png'"></img></a>
                        <a href="#"><img class="youtube" src="./icons/Youtube.png" onclick="this.src='./icons/youtube1.png'"></img></a>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="script.js"></script>
    <noscript>
      JavaScript is disabled, Please enable JavaScript to view the website.
    </noscript>
</body>
</html

<?php

include 'dbcon.php';

    if(isset($_POST['submit'])){
        $email = $_POST['email'];
        $e = strtolower($email);
        $checkemail = "select * from registration where email='$e'";
        $query = mysqli_query($con, $checkemail);
        $emailcount = mysqli_num_rows($query);

        if($emailcount>0){
            echo "<script type='text/javascript'>alert('Email already exists! Please use another email');</script>";
        }else{
            $insertquery = "insert into registration(email) values('$e')";
            $iquery =  mysqli_query($con, $insertquery);

            if($query){
                header('location:success.html');
             }else{
                echo "<script type='text/javascript'>alert('Error occurred, Please try once again');</script>";
             }
        }        
        
    }
?>      
