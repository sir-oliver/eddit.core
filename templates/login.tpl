<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7 lt-ie10"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8 lt-ie10"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9 lt-ie10"> <![endif]-->
<!--[if IE 9]>         <html class="no-js lt-ie10"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>click+edit</title>
    <meta name="description" content="Page Description">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs-3.3.7/dt-1.10.13/r-2.1.1/se-1.2.0/datatables.min.css"/>
    <link rel="stylesheet" href="/eddit/min.css">
    <link rel="stylesheet" href="/eddit/css/proton.css?time={$smarty.now}">
    <link rel="stylesheet" href="/eddit/css/standard.css?time={$smarty.now}">
</head>
<body class="login-page">

    <form class="form" role="form" action="/eddit/" method="POST">
        <section class="wrapper scrollable animated fadeIn">
            <section class="panel panel-default">
                <div class="panel-heading">
                    <div>
                        <h1>
                            <span class="title">
                                click<sup> + </sup>edit
                            </span>
                            <span class="subtitle">
                                CONTENT MANAGEMENT SYSTEM
                            </span>
                        </h1>
                    </div>
                </div>
                <div class="panel-body">
                        <p class="login-text">
                            {EDDIT::i18n($msg,'login')}
                        </p>
                        <div class="form-group">
                            <label for="user">User</label>
                            <input type="text" class="form-control input-lg" name="login" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control input-lg" name="pass" placeholder="Password">
                        </div>
                </div>
                <div class="panel-footer">
                    <button type="submit" class="btn btn-lg btn-success">{EDDIT::i18n('button','login')}</button>
                    {* <br>
                    <a class="forgot" href="javascript:;">{EDDIT::i18n('forgot','login')}</a> *}
                </div>
            </section>
        </section>
    </form>

</body>
</html>
