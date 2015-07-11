
<?php
/* @var $this ResolutionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
    'Resolutions',
);

$this->menu=array(
    array('label'=>'Create Resolution', 'url'=>array('create')),
    array('label'=>'Manage Resolution', 'url'=>array('admin')),
);
?>
<?php
$this->menu=array(
        array('label'=>'Ordinance History Report', 'url'=>array('reportsOrdinance/historyOrdinance')),
        //array('label'=>'Monthly Ordinance Report', 'url'=>array('reportsOrdinance/monthlyOrdinance')),
        array('label'=>'Ordinance Report', 'url'=>array('reportsOrdinance/yearlyOrdinance')),
        array('label'=>'Authored Ordinance Report', 'url'=>array('reportsOrdinance/authoredYearlyOrdinance')),
);
$this->widget('zii.widgets.jui.CJuiTabs', array(
    'tabs'=>array(
        'Ordinance Report'=>$this->renderPartial('monthlyOrd',array('months'=>$months,'months_data'=>$months_data,'years'=>$years,'years_data'=>$years_data),true),
        //'Board Member Report'=>array('content'=>$this->renderPartial('/reports/monthlyReso',array('months'=>$months,'months_data'=>$months_data,'years'=>$years,'years_data'=>$years_data),true),'id'=>'Board Member Report'),
        // panel 3 contains the content rendered by a partial view
        'Board Member Report'=>$this->renderPartial('BMOrdinanceReport',array('months'=>$months),true)
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
