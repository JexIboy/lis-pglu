
<?php
/* @var $this ResolutionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
    'Resolutions',
);


$this->menu=array(
        array('label'=>'Resolution History Report', 'url'=>array('/reportsResolution/historyResolution')),
        array('label'=>'Monthly Resolution Report', 'url'=>array('/reportsResolution/monthlyResolution')),
        array('label'=>'Fiscal Resolution Report', 'url'=>array('/reportsResolution/yearlyResolution')),
        array('label'=>'Authored Resolutions', 'url'=>array('/reportsResolution/authoredYearlyResolution')),
);
?>


<?php
$this->widget('zii.widgets.jui.CJuiTabs', array(
    'tabs'=>array(
        'Resolution Report'=>$this->renderPartial('monthlyReso',array('months'=>$months,'months_data'=>$months_data,'years'=>$years,'years_data'=>$years_data),true),
        // panel 3 contains the content rendered by a partial view
        'Board Member Report'=>$this->renderPartial('BMResolutionReport',array('months'=>$months),true)
    ),
    'htmlOptions'=>array(
        'style'=>'width:119.7%;'
    ),
    // additional javascript options for the tabs plugin
    'options'=>array(
        'collapsible'=>true,
    ),
));


?>
