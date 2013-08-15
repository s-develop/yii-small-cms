<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */
?>

<h5><span class="fui-lock"></span>&nbsp;&nbsp;Вход в панель управления</h5>

<div class="form">
    <?php $form=$this->beginWidget('CActiveForm', array(
        'id'=>'login-form',
        'enableClientValidation'=>true,
        'clientOptions'=>array(
            'validateOnSubmit'=>true,
        ),
    )); ?>
    <div>
        <?php echo $form->labelEx($model,'Пользователь'); ?>
        <?php echo $form->textField($model,'username'); ?>
        <?php echo $form->error($model,'username'); ?>
    </div>

    <div>
        <?php echo $form->labelEx($model,'Пароль'); ?>
        <?php echo $form->passwordField($model,'password'); ?>
        <?php echo $form->error($model,'password'); ?>
    </div>

    <div class="rememberMe">
        <?php echo $form->checkBox($model,'rememberMe'); ?>
        <?php echo $form->label($model,'Запомнить меня'); ?>
        <?php echo $form->error($model,'rememberMe'); ?>
    </div>
    <div class="clearfix" />
    <div class="buttons">
        <?php echo CHtml::submitButton('Войти', array('class' => 'btn btn-inverse')); ?>
    </div>

    <?php $this->endWidget(); ?>
</div><!-- form -->
