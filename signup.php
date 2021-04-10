<?php
require "includes/header.php"
?>

<main>
    <link rel="stylesheet" href="../css/signup.css">
    <div class="bg-cover">
        <div class="h-100 container center-me">
            <div class="my-auto">
                <div class="signup-form">
                    <form action="includes/signup-helper.php" method="post">
                        <h1 class="h3 mb-3 fw-normal" style="color:white">Please sign up</h1>
                        <p class="hint-text">Create you account!</p>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <input type="text" class="form-control" name="fname" placeholder="First Name" required="required" autofocus>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" name="lname" placeholder="Last Name" required="required" autofocus>
                                </div>
                            </div>
                        </div>
                        <input type="text" class="form-control" name="uname" placeholder="Username" required="required" autofocus>

                        <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Email address" required="required"
                            autofocus>
                        <input type="password" id="inputPassword" class="form-control" name="pwd" placeholder="Password" required="required">
                        
                        <input type="password" id="inputPass" class="form-control" name="con-pwd" placeholder="Confirm Password"
                        required="required">
                           
                        <button class="w-100 btn btn-lg btn-primary" style="background-color:green; border:none" name="signup-submit" type="submit">Sign up</button>
                        <p class="mt-5 mb-3 text-muted">&copy; 2021-9999</p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>