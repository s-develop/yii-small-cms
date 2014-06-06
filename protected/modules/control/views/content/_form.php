<?php
/* @var $this ContentController */
/* @var $model Content */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'content-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note"> <span class="required">*</span> Поля обязательные для заполнения</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>120,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

    <div class="row">
        <?php echo $form->labelEx($model,'window_title'); ?>
        <?php echo $form->textField($model,'window_title',array('size'=>120,'maxlength'=>255)); ?>
        <?php echo $form->error($model,'window_title'); ?>
    </div>

	<div class="row">
		<?php echo $form->labelEx($model,'introtext'); ?>
		<?php echo $form->textArea($model,'introtext',array('size'=>120,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'introtext'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'content'); ?>
		<?php echo $form->textArea($model,'content',array('rows'=>25, 'cols'=>60)); ?>
		<?php echo $form->error($model,'content'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'alias'); ?>
		<?php echo $form->textField($model,'alias',array('size'=>120,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'alias'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'uri'); ?>
		<?php echo $form->textField($model,'uri',array('size'=>120,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'uri'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textArea($model,'description',array('size'=>120,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'keywords'); ?>
		<?php echo $form->textField($model,'keywords',array('size'=>120,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'keywords'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->dropDownList($model,'status', array(0 => "Не опубликована", 1 => "Опубликована")); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>



	<div class="row">
		<?php echo $form->labelEx($model,'category_id'); ?>
		<?php echo $form->dropDownList($model,'category_id', Category::getAllCategories()); ?>
		<?php echo $form->error($model,'category_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'created'); ?>
        <?php
        $this->widget('zii.widgets.jui.CJuiDatePicker',array(

            'attribute' => 'created',
            'name'=>'Content[created]',
            'value' => $model->created?date('j-m-Y H:i',$model->created):date('j-m-Y H:i',time()),
            // additional javascript options for the date picker plugin
            'options'=>array(
                'showAnim'=>'fold',
                'dateFormat' => 'dd-mm-yy',
                'showButtonPanel' => true,
            ),

        ));?>

		<?php echo $form->error($model,'created'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Создать' : 'Сохранить', array('class' => 'btn btn-inverse')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->