<h3 class="title">Subscription packages</h3>

<div class="columns is-vcentered">
    <div class="column is-3">
        <div class="card">
            <div class="card-image">
                <div class="hero is-link" id='plan1color'>
                    <div class="hero-body">
                        <div class="container">
                            <h1 id='plan1title' class="title">
                            </h1>
                            <h2 id='plan1desc' class="subtitle">
                            </h2>
                        </div>
                    </div>
                </div>
            </div>  
            <div class="card-content">
                <div class="field">
                    <p class="control has-icons-left">
                        <input class="input" onkeyup="document.getElementById('plan1title').textContent = this.value;" type="text" placeholder="Name">
                        <span class="icon is-small is-left">
                            <i class="fas fa-dice-d6"></i>
                        </span>
                    </p>
                </div>
                <div class="field">
                    <p class="control has-icons-left">
                        <input class="input" onkeyup="document.getElementById('plan1desc').textContent = this.value;" type="text" placeholder="Description">
                        <span class="icon is-small is-left">
                            <i class="fas fa-angle-double-right"></i>
                        </span>
                    </p>
                </div>
                <div class="field">
                    <p class="control has-icons-left">
                        <input class="input" onkeyup="document.getElementById('plan1color').style.backgroundColor = this.value;" type="text" placeholder="Color (name or hex)">
                        <span class="icon is-small is-left">
                            <i class="fas fa-tint"></i>
                        </span>
                    </p>
                </div>
                <div class="field">
                    <p class="control has-icons-left">
                        <input class="input" type="text" placeholder="Duration">
                        <span class="icon is-small is-left">
                            <i class="fas fa-stopwatch"></i>
                        </span>
                    </p>
                </div>
                <div class="field">
                    <p class="control has-icons-left">
                        <input class="input" type="text" placeholder="Download capacity">
                        <span class="icon is-small is-left">
                            <i class="fas fa-tachometer-alt"></i>
                        </span>
                    </p>
                </div>
                <div class="field">
                    <p class="control has-icons-left">
                        <input class="input" type="text" placeholder="Price">
                        <span class="icon is-small is-left">
                            <i class="fas fa-money-bill-wave"></i>
                        </span>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="column is-3" id='addplan'>
        <a href="#">
            <div class="card">
                <div class="card-image has-text-centered" style="padding-top: 75px;">
                    <span class="icon has-text-primary" style="font-size:75px;"><i class="fa fa-plus"></i></span>
                </div>  
                <div class="card-content has-text-centered">
                    <div class="content">Add new plan</div>
                </div>
            </div>
        </a>
    </div>
</div>