<?php $this->widget(
    'bootstrap.widgets.TbMenu',
    array(
        'type' => 'list',
        'items' => array(
            array(
                'label' => 'List header',
                'itemOptions' => array('class' => 'nav-header')
            ),
            array(
                'label' => 'Home',
                'url' => '#',
                'itemOptions' => array('class' => 'active')
            ),
            array('label' => 'Library', 'url' => '#'),
            array('label' => 'Applications', 'url' => '#'),
            array(
                'label' => 'Another list header',
                'itemOptions' => array('class' => 'nav-header')
            ),
            array('label' => 'Profile', 'url' => '#'),
            array('label' => 'Settings', 'url' => '#'),
            '',
            array('label' => 'Help', 'url' => '#'),
        )
    )
); ?>