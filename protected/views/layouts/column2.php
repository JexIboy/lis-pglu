<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>
<div class="row">
   
    <div class="span3">
        <div id="sidebar">
            
            <?php if(isset($this->breadcrumbs)):?>
        <?php $this->widget('bootstrap.widgets.TbBreadcrumbs', array(
            'links'=>$this->breadcrumbs,
            'htmlOptions'=>array(
                'style'=>''),
                        
        )); ?><!-- breadcrumbs -->
	<?php endif?>
                
            <?php

                $box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Operation' ,
		'headerIcon' => 'icon-th-list',
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                'style'=>''
		)               
            ) );
            ?>
        <?php
            $this->widget('bootstrap.widgets.TbTabs', array(
            'type'=>'pills',
            'stacked'=>true,
            'tabs'=>$this->menu,
            ));
            
        ?>
            <?php $this->endWidget(); ?> 
                  
        </div><!-- sidebar -->
        
    </div>
     <div class="span9">
        <div id="content">
            <?php echo $content; ?>
            
        </div><!-- content -->
    </div>
</div>
<?php $this->endContent(); ?>

<script type="text/javascript">
$(function() {

    var $sidebar   = $("#sidebar"), 
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