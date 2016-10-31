<?php
include_once 'include/navbar.php';
include_once 'include/dbConnect.php';

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

function getPurges() {
  $mysqli = dbConnect();
  $sql = "select
  p.dir,
  group_concat(pf.fileName separator ',') as files,
  group_concat(pe.fileName separator ',') as exceptions,
  retentionDays as days,
  enabled
  from purges p
    left join purgeFiles pf on pf.purgeId = p.id
    left join purgeExceptions pe on pe.purgeId = p.id
      where systemId = 1
        group by p.id";
  $result = $mysqli->query($sql);
  echo '<table class="table"><th>Path</th><th>Files to Purge</th><th>Exceptions</th><th>Retention</th><th>Enabled</th>';
  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      echo '<tr><td>' . $row['dir'] . '</td><td>' . $row['files'] . '</td><td>' . $row['exceptions'] . '</td><td>' .$row['days']. '</td><td>' . $row['enabled'] . '</td><tr>';
    }
    echo '</table>';
  }
}

?>
 <link href="styles/style.css" rel="stylesheet">

<div style="margin:100px 20px;" class="panel panel-default">
  <div class="panel-heading">Purges</div>
  <div class="panel-body">
    <?php getPurges();?>

  </div>
