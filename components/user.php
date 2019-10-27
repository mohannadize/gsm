<?php 

$user_data = $db->query("SELECT username,email from users WHERE id='$_SESSION[id]'");
$user_data = $db->fetch_array($user_data);

?>

<section class="section">
    <div class="container">
        <div class="tabs is-boxed">
            <ul>
                <li class="is-active">
                    <a onclick='tabchange(this)' data-target="account-settings">
                        <span class="icon is-small"><i class="fas fa-user" aria-hidden="true"></i></span>
                        <span>Account settings</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <br>
    <div class="container tab is-active" id="account-settings">
        <form action="action.php" method="post">
            <input type="hidden" name="action" value='modify_user'>
            <div class="columns">
                <div class="column is-6-tablet">

                    <div class="field">
                        <label class="label">Username</label>
                        <div class="control">
                            <input required class="input" name='username' type="text" value="<?php echo $_SESSION['username']; ?>">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Email</label>
                        <div class="control has-icons-left has-icons-right">
                            <input required name="email" class="input" type="email" value="<?php echo $user_data['email']; ?>">
                            <span class="icon is-small is-left">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">New Password</label>
                        <div class="control">
                            <input class="input" id='password' name='password' type="password">
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">Confirm Password</label>
                        <div class="control">
                            <input class="input" onkeyup="verifypass(this)" name='cpassword' type="password">
                        </div>
                        <p class="help is-danger" id='passhelper'></p>

                    </div>

                    <div class="field is-grouped">
                        <div class="control">
                            <button type='submit' class="button is-danger">Submit</button>
                        </div>
                    </div>
                </div>
        </form>
    </div>
</section>