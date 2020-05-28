<?php

$id = isset($_GET['id']) && is_numeric($_GET['id']) ? $_GET['id'] : 227;
$file_info = $db->query("SELECT * FROM files where id='$id'");
if ($db->num_rows($file_info) == 0) {
    include 'components/404.php';
    return;
}
$file_info = $db->fetch_array($file_info);
?>

<section class="section">
    <div class="container">

        <div class="columns">
            <div class="column">
                <nav class="breadcrumb" aria-label="breadcrumbs">
                    <ul>
                        <li><a href="roms?s=<?php echo $file_info['model']; ?>||"><?php echo $file_info['model']; ?></a></li>
                        <li><a href="roms?s=<?php echo $file_info['model'] . "|" . $file_info['country']; ?>|"><?php echo $file_info['country']; ?></a></li>
                        <li class="is-active"><a href="javascript:void(0)" aria-current="page"><?php echo $file_info['build_v']; ?></a></li>
                    </ul>
                </nav>
                <div class="card">
                    <div class="rtl card-content columns is-vcentered">
                        <div class="column is-5-tablet">

                            <h2 class="title is-4"><?php echo "$file_info[model] / $file_info[build_v] <small style='font-weight:400;'>$file_info[android_v]</small>"; ?></h2>
                            <p class="content rtl">
                                البلد: <span class="has-text-link"><?php echo $file_info['country']; ?></span>
                            </p>
                            <p class="content rtl">
                                موديل الجهاز: <span class="has-text-link"><?php echo $file_info['model']; ?></span>
                            </p>
                            <p class="content rtl">
                                رقم الاصدار: <span class="has-text-link"><?php echo $file_info['build_v']; ?></span>
                            </p>
                            <p class="content rtl">
                                اصدار اندرويد: <span class="has-text-link"><?php echo $file_info['android_v']; ?></span>
                            </p>
                            <p class="content rtl">
                                تم الرفع: <span class="has-text-link"><?php echo $file_info['created']; ?></span>
                            </p>
                            <p class="content rtl">
                                الحجم: <span class="has-text-link"><?php echo bytes_to_human($file_info['size']); ?></span>
                            </p>
                        </div>
                        <div class="ltr column is-4-tablet">
                            <a href='download?id=<?php echo $file_info["id"]; ?>' target="_blank" class="button is-primary is-large">
                                <span class="icon"><i class="fa fa-download"></i></span>
                                <span>تنزيل</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <?php var_dump($file_info); ?> -->
</section>