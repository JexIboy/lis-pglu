
<?php   function yourfirstfunction ($arg_1, $arg_2) {
    echo "Example function.\n";
    $retval = $arg_1 . " " . $arg2;
    return $retval;

} ?>
<?php
function showheader($title) {
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
<head>
<title> <?php echo $title ?> </title>
</head>

<body BGCOLOR="#FFFFFF">
<?php
}

function showfooter() {
?>

<?php
}
function viewpost ($topicID) {
	$topic_query = mysql_query("SELECT TopicName FROM topics WHERE (ID=$topicID)");
	$topic = mysql_fetch_array($topic_query);
	?>
	<TABLE BORDER=0 WIDTH=100% CELLSPACING=3 CELLPADDING=5>
    <TR>
        <TD>
        <FONT COLOR="#000000" FACE="Arial,Verdana,Helvetica" size=-1>
        <b>Topic: </b>
        <BR><?php echo $topic['TopicName'] ?>
        <P>
        <a href="http://www.yoursite.com/index.php3"><FONT COLOR="#000000">Return Back to Topic Listing</a>
        <P>
        <a href="http://www.yoursite.com/add-post.php3?topicID=<?php echo $topicID ?>"><FONT COLOR="#000000">Make a Post</a>
        </TD>
    </TR>
</TABLE>
<P>
<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 WIDTH=100%>
    <TR VALIGN=TOP ALIGN=LEFT>
        <TD WIDTH=100%>
            <TABLE BORDER=0 BGCOLOR="#000000" CELLSPACING=1 CELLPADDING=1 WIDTH=100%>
                <TR>
                    <TD COLSPAN=3 BGCOLOR="#C0C0C0" WIDTH=100%>
                        <TABLE BORDER=0 CELLSPACING=0 CELLPADDING=5 WIDTH=100%>
                            <TR>
                                <TD>
                                <P><B><FONT COLOR="#000000" FACE="Trebuchet MS,Arial,Helvetica">Topic Posts</FONT></B>
                                </TD>
                            </TR>
                        </TABLE>
                    </TD>
                </TR>
<?php
$post_query = mysql_query("SELECT * FROM posts WHERE (TopicID='$topicID') ORDER BY TimeStamp");
while ($post = mysql_fetch_array($post_query)) {
	?>
    <TR>
    <TD WIDTH=82% BGCOLOR="#FFFFFF" HEIGHT=28 VALIGN=TOP>
        <TABLE BORDER=0 CELLSPACING=0 CELLPADDING=5 WIDTH=100%>
            <TR>
                <TD>
                <P><FONT SIZE="-1" FACE="Trebuchet MS,Arial,Helvetica"><?php echo $post['Post'] ?></FONT>
                </TD>
            </TR>
        </TABLE>
    </TD>
    <TD WIDTH=18% BGCOLOR="#C0C0C0" VALIGN=TOP>
        <TABLE BORDER=0 CELLSPACING=0 CELLPADDING=5 WIDTH=100% >
            <TR>
                <TD>
                <P ALIGN=center><FONT SIZE="-1" FACE="Trebuchet MS,Arial,Helvetica" color=#000000>Posted By: <A HREF="mailto:<?php echo $post['Email'] ?>"> <FONT COLOR=#000000><?php echo $post['Name'] ?></A>
                 <BR><BR>
                <A HREF="http://www.yoursite.com/edit-post.php3?postID=<?php echo $post['ID'] ?>"><FONT COLOR=#000000>Edit Your Post</FONT>
                 <BR><BR>
                <A HREF="http://www.yoursite.com/delete-post.php3?postID=<?php echo $post['ID'] ?>"><FONT COLOR=#000000>Delete Your Post</FONT>
                  </TD>
            </TR>
        </TABLE>
    </TD>
</TR>
<?php
}
if (mysql_num_rows($post_query) < 1) {
?>
<TR height=300>
    <TD WIDTH=100% BGCOLOR="#FFFFFF" HEIGHT=28 VALIGN=TOP colspan=2>
    <CENTER><FONT SIZE="-1" FACE="Trebuchet MS,Arial,Helvetica">
    <BR><B>There Are No Posts Currently For This Topic</B><BR><BR></CENTER>
    </TD>
</TR>
<?php } ?>
</TABLE>
</TD></TR>
</TABLE>
<?php
}
?>
</html>