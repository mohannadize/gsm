<?php 

$downloads = $db->query("SELECT SUM(downloads) from files");
$downloads = $db->fetch_array($downloads);
$storage  = $db->query("SELECT SUM(size) from files");
$storage = $db->fetch_array($storage);
$num_files  = $db->query("SELECT COUNT(*) from files");
$num_files = $db->fetch_array($num_files);
$num_users  = $db->query("SELECT COUNT(*) from users");
$num_users = $db->fetch_array($num_users);


?>

<section class="section" id='home'>
    <div class="container">
        <div class="columns">
            <a href="roms" class="column">
                <div class="card" style="background-color:brown;">
                    <div class="card-content">
                        <div class="title has-text-white" style="display:flex;align-items:center">
                            <span class="icon is-large"><i class="fa fa-compact-disc"></i></span>
                            <span>Roms</span>
                        </div>
                    </div>
                </div>
            </a>
            <a href="combinations" class="column">
                <div class="card" style="background-color:grey;">
                    <div class="card-content">
                    <div class="title has-text-white" style="display:flex;align-items:center">
                            <span class="icon is-large"><i class="fa fa-cubes"></i></span>
                            <span>Combinations</span>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>
</section>
<section class="section">
<div class="container">
        <div class="columns">
            <div class="column">
                <div class="card" style="margin-top:25px">
                    <div class="card-image has-text-centered">
                        <span class="icon has-text-primary" style="font-size:75px;"><i class="fa fa-compact-disc"></i></span>
                    </div>
                    <div class="card-content has-text-centered">
                        <div class="content" style="font-size:20px">
                            <?php echo $downloads['SUM(downloads)']; ?> <br>
                            Downloads
                        </div>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card" style="margin-top:25px">
                    <div class="card-image has-text-centered">
                        <span class="icon has-text-warning" style="font-size:75px;"><i class="fa fa-hdd"></i></span>
                    </div>
                    <div class="card-content has-text-centered">
                        <div class="content" style="font-size:20px">
                            <?php echo bytes_to_human($storage['SUM(size)']); ?> <br>
                            Storage
                        </div>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card" style="margin-top:25px">
                    <div class="card-image has-text-centered">
                        <span class="icon has-text-danger" style="font-size:75px;"><i class="fa fa-database"></i></span>
                    </div>
                    <div class="card-content has-text-centered">
                        <div class="content" style="font-size:20px">
                            <?php echo $num_files['COUNT(*)']; ?> <br>
                            Files
                        </div>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card" style="margin-top:25px">
                    <div class="card-image has-text-centered">
                        <span class="icon has-text-link" style="font-size:75px;"><i class="fa fa-users"></i></span>
                    </div>
                    <div class="card-content has-text-centered">
                        <div class="content" style="font-size:20px">
                            <?php echo $num_users['COUNT(*)']; ?> <br>
                            Members
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>