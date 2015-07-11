<?php
$this->widget(
    'bootstrap.widgets.TbMenu',
    array(
        'type' => 'list',
        'items' => array(
            array(
                'label' => 'Forum',
                'itemOptions' => array('class' => 'nav-header')
            ),
            array(
                'label' => 'Discussion Forum',
                'url' =>array('/site/main_forum'),
            ),
           
           
           array(
                'label' => 'Admin Forum Module',
                'itemOptions' => array('class' => 'nav-header')
            ),
            array('label' => 'Manage Discussion Forum', 'url' => '#'),
          
            '',
           
        )
    )
); ?>