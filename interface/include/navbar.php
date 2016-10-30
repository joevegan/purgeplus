<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
    <div id="navContainer" class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="main.php">Purge Plus</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li id="tickets" class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Tickets <span class="caret"></span></a>
                    <ul class="dropdown-menu ">
                        <li><a href="./tickets.php?ticketId=mine">My Tickets</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="./tickets.php?ticketId=all">All</a></li>
                        <li><a href="./tickets.php?ticketId=open">Open</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="./tickets.php?ticketId=woc">Waiting on Client</a></li>
                        <li><a href="./tickets.php?ticketId=woa">Waiting on Agent</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="./tickets.php?ticketId=closed">Closed</a></li>
                    </ul>
                </li>
                <li id="reports"><a href="reports.php">Reports</a></li>
                <li id="system" class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">System <span class="caret"></span></a>
                    <ul class="dropdown-menu ">
                    	<li><a href="./system.php?maintenace=categories">Categories</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="./system.php?maintenace=users">Users</a></li>
                        <li><a href="./system.php?maintenace=groups">Groups</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="./system.php?maintenace=system">System</a></li>
                    </ul>
                </li>
            </ul>
            <p class="navbar-text">User: <?php echo ''. $_SESSION['username']; ?><a href="./include/logout.php"> log out?</a></p>
            <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div> <!-- /.navbar-collapse -->
    </div> <!-- /. nav -->
</nav>
