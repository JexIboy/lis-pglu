<!--UPLOAD PHOTO-->
<?php $this->beginWidget(
    'bootstrap.widgets.TbModal',
    array('id' => 'myModal')
); ?>
 
    <div class="modal-header">
        <a class="close" data-dismiss="modal">&times;</a>
        <h4>Upload Photo</h4>
    </div>
 
    <div class="modal-body">
       
        
    </div>
 
    <div class="modal-footer">
        <?php $this->widget(
            'bootstrap.widgets.TbButton',
            array(
                'type' => 'primary',
                'label' => 'Save changes',
                'url' => '#',
                'htmlOptions' => array('data-dismiss' => 'modal','id'=>'savePhoto'),
            )
        ); ?>
    </div>
<?php $this->endWidget(); ?>

<!--Delete PHOTO-->
<?php $this->beginWidget(
    'bootstrap.widgets.TbModal',
    array('id' => 'myModal2')
); ?>
 
    <div class="modal-header">
        <a class="close" data-dismiss="modal">&times;</a>
        <h4>Delete Photos</h4>
    </div>
 
    <div class="modal-body">
        <form action="upload_file.php" method="post"
enctype="multipart/form-data">
<label for="file">Filename:</label>
<input type="file" name="file" id="file"><br>
<input type="submit" name="submit" value="Submit">
</form>
    </div>
 
    <div class="modal-footer">
        <?php $this->widget(
            'bootstrap.widgets.TbButton',
            array(
                'type' => 'primary',
                'label' => 'Save changes',
                'url' => '#',
                'htmlOptions' => array('data-dismiss' => 'modal'),
            )
        ); ?>
        <?php $this->widget(
            'bootstrap.widgets.TbButton',
            array(
                'label' => 'Close',
                'url' => '#',
                'htmlOptions' => array('data-dismiss' => 'modal'),
            )
        ); ?>
    </div>
<?php $this->endWidget(); ?>

<!--Change Banner PHOTO-->
<?php $this->beginWidget(
    'bootstrap.widgets.TbModal',
    array('id' => 'myModal3')
); ?>
 
    <div class="modal-header">
        <a class="close" data-dismiss="modal">&times;</a>
        <h4>Change Banner Photo</h4>
    </div>
 
    <div class="modal-body">
       <form action="UploadContent.php" method="POST" enctype="multipart/form-data">
File:
<input type="file" name="image"> <input type="submit" value="Upload">
</form>
    </div>
 
    <div class="modal-footer">
        <?php $this->widget(
            'bootstrap.widgets.TbButton',
            array(
                'type' => 'primary',
                'label' => 'Save changes',
                'url' => '#',
                'htmlOptions' => array('data-dismiss' => 'modal'),
            )
        ); ?>
        <?php $this->widget(
            'bootstrap.widgets.TbButton',
            array(
                'label' => 'Close',
                'url' => '#',
                'htmlOptions' => array('data-dismiss' => 'modal'),
            )
        ); ?>
    </div>
<?php $this->endWidget(); ?>

<?php
$this->widget(
    'bootstrap.widgets.TbMenu',
    array(
        'htmlOptions'=>array('style'=>'margin:0%; padding:0%;'),
        'type' => 'list',
        'items' => array(
            array(
                'label' => 'Admin Gallery Module',
                'itemOptions' => array('class' => 'nav-header') ,
            ),
            array(
                'label' => 'Upload Pictures',
                'url' => '#',
                'type' => 'primary',
                'itemOptions' => array(
                'data-toggle' => 'modal',
                'data-target' => '#myModal',
        ),
            ),
            array('label' => 'Delete Photos', 
                'url' => '#',
                 'type' => 'primary',
                'itemOptions' => array(
                'data-toggle' => 'modal',
                'data-target' => '#myModal2',
                ),
                ),
            array('label' => 'Change Banner Photo', 'url' => '#', 'itemOptions' => array(
                'data-toggle' => 'modal',
                'data-target' => '#myModal3',
        ),
            ),
             array(
                'label' => 'Gallery',
                'itemOptions' => array('class' => 'nav-header') ,
            ),
              array(
                'label' => 'View Photos',
                'url' =>array('/site/viewphotosPage'),
                'type' => 'primary',
                'itemOptions' => array(
               
        ),
            ),
           
            '',  
        )
    )
); 

?>
