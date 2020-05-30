<footer class="footer">
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

    <footer class="footer">
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
                                التنزيلات
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card" style="margin-top:25px">
                        <div class="card-image has-text-centered">
                            <span class="icon has-text-warning" style="font-size:75px;"><i class="fa fa-hdd"></i></span>
                        </div>
                        <div class="card-content has-text-centered rtl">
                            <div class="content" style="font-size:20px">
                                <?php echo bytes_to_human($storage['SUM(size)']); ?> <br>
                                المساحة المستخدمة
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
                                عدد الرومات
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
                                الاعضاء
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="content has-text-centered">
            <strong><?php echo $settings['site-name']; ?></strong>. &copy;2019
            <nav class="breadcrumb" aria-label="breadcrumbs">
                <ul style='justify-content:center'>
                    <li><a href="privacy">سياسة الخصوصية</a></li>
                    <li><a href="contact_us">اتصل بنا</a></li>
                    <li><a href="request">طلب اضافة روم</a></li>
                </ul>
            </nav>
        </div>
    </footer>