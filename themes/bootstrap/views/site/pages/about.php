<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name . ' - About';
$this->breadcrumbs=array(
	'About',
);


?>
<div>
	<h1 style="color:black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Legislative Information System</h1>
		<p style="color:white; margin-left:2%;">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Welcome to the Website of Legislative Information System of the Provincial Government of La Union!
         This system helps to lessen the manpower of the Sangguniang Panlalawigan secretariats on maintaining, tracking, monitoring, and archiving of resolutions and ordinances.
         Under the Legislative Enactments Module, you can view and search for resolutions and ordinances. You can also view the Developer's personal information under the About module. 
         If you have questions about this website, you can contact the Administrator under the Contact Module. Inside the Forum Module, you can create a topic and the Administrator will
         receive a notification regarding the topic you have been created, you can also reply to the other topics that has been posted.
</p>
<table style="color:white;width:65%; margin-left:1%;">
	<tr>
		<th colspan="4" style="color:white; width:100%; text-align:center;"><h2>Developers Personal Information</h2></th>
	</tr>
	<tr style="border-top-style:solid;">
		<td colspan="4">Ellen F. Mangaoang, MIT</td>
	</tr>
	<tr>
		<td rowspan="4"></td>
		<td >Gender :</td>
		<td>Female</td>
	</tr>
	<tr>
		<td >Address :</td>
		<td>Catbangen, San Fernando City, La Union</td>
	</tr>
	<tr>
		<td >Email Address :</td>
		<td>ellen@lorma.edu</td>
	</tr>
	<tr>
		<td >Motto :</td>
		<td>“Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no hope at all.”</td>
	</tr>
	<tr style="border-top-style:solid;">
		<td colspan="4">Mariz V. Dacanay</td>
	</tr>
	<tr>
		<td rowspan="5" style="width:10%;"></td>
		<td style="margin-left:10%; width:30%;">Date of Birth :</td>
		<td>March 12, 1994</td>
	</tr>
	<tr>
		<td >Gender :</td>
		<td>Female</td>
	</tr>
	<tr>
		<td >Address :</td>
		<td>Raois, Bacnotan, La Union</td>
	</tr>
	<tr>
		<td >Email Address :</td>
		<td>Marizdacanay03@gmail.com</td>
	</tr>
	<tr>
		<td >Motto :</td>
		<td>“Success is to be measured not so much by the position that one has reached in life as by the obstacles which he has overcome.”</td>
	</tr>
	<tr style="border-top-style:solid;">
		<td colspan="4">John Billy D. Marbella</td>
	</tr>
	<tr>
		<td rowspan="5"></td>
		<td style="margin-left:10%; width:10%;">Date of Birth :</td>
		<td>September 07, 1994</td>
	</tr>
	<tr>
		<td >Gender :</td>
		<td>Male</td>
	</tr>
	<tr>
		<td >Address :</td>
		<td>Mabanengbeng II, Bacnotan, La Union</td>
	</tr>
	<tr>
		<td >Email Address :</td>
		<td>johnbillymarbella@gmail.com</td>
	</tr>
	<tr>
		<td >Motto :</td>
		<td >“Try not to become a man of success. Rather become a man of value.” </td>
	</tr>
	<tr style="border-top-style:solid;">
		<td colspan="4">Alexander Jerome L. Obejas</td>
	</tr>
	<tr>
		<td rowspan="5"></td>
		<td style="margin-left:10%; width:10%;">Date of Birth :</td>
		<td>March 10, 1994</td>
	</tr>
	<tr>
		<td >Gender :</td>
		<td>Male</td>
	</tr>
	<tr>
		<td >Address :</td>
		<td>Balaoan, La Union</td>
	</tr>
	<tr>
		<td >Email Address :</td>
		<td>jex310@gmail.com</td>
	</tr>
	<tr>
		<td >Motto :</td>
		<td>“Our most significant opportunities will be found in times of greatest difficulty.”</td>
	</tr>
	<tr style="border-top-style:solid;">
		<td colspan="4">Charmaine Mae P. Soria</td>
	</tr>
	<tr>
		<td rowspan="5"></td>
		<td style="margin-left:10%; width:10%;">Date of Birth :</td>
		<td>May 08, 1994</td>
	</tr>
	<tr>
		<td >Gender :</td>
		<td>Female</td>
	</tr>
	<tr>
		<td >Address :</td>
		<td>Langcuas, San Fernando City, La Union</td>
	</tr>
	<tr>
		<td >Email Address :</td>
		<td>charrysoria@gmail.com</td>
	</tr>
	<tr>
		<td >Motto :</td>
		<td>“Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no hope at all.”</td>
	</tr>
</table>
        
       
</div>
<script type="text/javascript">
$(function() {

    var $sidebar   = $("#chouse"), 
        $window    = $(window),
        offset     = $sidebar.offset(),
        topPadding = 15;

    $window.scroll(function() {
        if ($window.scrollTop() > offset.top) {
            $sidebar.stop().animate({
                marginTop: $window.scrollTop() - offset.top + topPadding
            });
        } else {
            $sidebar.stop().animate({
                marginTop: 0
            });
        }
    });
    
});
    </script>