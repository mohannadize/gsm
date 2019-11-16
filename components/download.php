<?php

$id = isset($_GET['id']) && is_numeric($_GET['id']) ? $_GET['id'] : 227;
$file_info = $db->query("SELECT * FROM files where id='$id'");
$file_info = $db->fetch_array($file_info);
?>

<section class="section">
    <div class="container">

        <div class="columns">
            <div class="column">
                <nav class="breadcrumb" aria-label="breadcrumbs">
                    <ul>
                        <li><a href="roms?s=<?php echo $file_info['model']; ?>"><?php echo $file_info['model']; ?></a></li>
                        <li><a href="roms?s=<?php echo $file_info['model']." ".$file_info['country']; ?>"><?php echo $file_info['country']; ?></a></li>
                        <li class="is-active"><a href="javascript:void(0)" aria-current="page"><?php echo $file_info['build_v']; ?></a></li>
                    </ul>
                </nav>
                <div class="card">
                    <div class="card-content">
                        <h2 class="title is-4"><?php echo "$file_info[model]/$file_info[build_v] <small style='font-weight:400;'>$file_info[android_v]</small>"; ?></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <?php var_dump($file_info); ?> -->
</section>