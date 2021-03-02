<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Magebit Tasks</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
    <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" id="form" method="GET">
        <div class="body-container">
            <h2>List of registered emails</h2>
            <div class="form-control">
                <h4>Click <a href="display.php?submit=sortemail" type="submit">here</a> to sort by Email provider</h4>
                <h4>Click on button to see the data only from one speciafied email provider</h4>

                    <?php

                    include 'dbcon.php';

                    $selectquery = "select * from registration";
                    $emailquery = "select (SUBSTRING_INDEX(SUBSTR(email, INSTR(email, '@') + 1),'.',1)) from registration order by email asc";                   
                    $emailsearchquery = "select * from registration where email like '%gmail%'";

                    if(isset($_GET['submit'])){
                        $getdata=$_GET['submit'];
                        include 'dbcon.php';
                        if(($getdata==="email")||($getdata==="date")){
                            $selectquery = "select * from registration order by $getdata";
                        }else if($getdata==="sortemail"){
                            $selectquery = "select * from registration order by SUBSTRING_INDEX(email,'@',-1)";
                        } else{
                            $deletequery = "delete from registration where id='$getdata'";
                            if(mysqli_query($con, $deletequery))
                            {
                                //echo "<script type='text/javascript'>alert('Deleted');</script>";
                            }else{
                                echo "<script type='text/javascript'>alert('Connection error, Please try once again');</script>";
                            }            
                            }
                        }
                    
                    // for display data of a perticular provider
                    if(isset($_GET['getemail'])){
                        $gemail=$_GET['getemail'];
                        include 'dbcon.php';
                        $selectquery = "select * from registration where email like '%@$gemail%'";
                    }
                    
                    $emailquery = mysqli_query($con, $emailquery);
                    $a[] = "";
                    $i = 0;
                    while($data = mysqli_fetch_array($emailquery)){
                        $a[$i] = $data['0'];
                        $i++;
                    }
                    //sort($a);
                    $final=array_unique($a);
                    foreach($final as $v) {
                        ?>
    
                        <td>
                            <th><button class="button" id="submit" type="submit" name= "getemail" value="<?php echo $v; ?>" > <?php echo $v; ?> </button></th>
                        </td>
    
                        <?php
                        }
                        ?>

                <table style="width:100%">
                    <tr>
                        <th>ID</th>
                        <th ><a href="display.php?submit=email" type="submit">Email</a></th>
                        <th ><a href="display.php?submit=date" type="submit">Date</a></th>
                        <th>Operation</th>
                    </tr>

                    <?php
                    
                    $query = mysqli_query($con, $selectquery);
                    while($data = mysqli_fetch_array($query)){
                    ?>

                    <tr>
                        <th><?php echo $data['id']; ?></th>
                        <th><?php echo $data['email']; ?></th>
                        <th><?php echo $data['date']; ?></th>
                        <th><button class="button" id="submit" type="submit" name= "submit" value=<?php echo $data['id']; ?>>Delete</button><th>
                    </tr>

                    <?php
                    }
                    ?>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
