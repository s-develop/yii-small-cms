<?php
/* @var $this ContentController */
/* @var $model Content */


$this->menu=array(
	array('label'=>'Создать страницу', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form input[type=submit]').addClass('btn btn-info').attr('value', 'Поиск');
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#category-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>


<h4>Управление страницами</h4>

<p class="success">
<?php if(Yii::app()->user->hasFlash('success')):
        echo Yii::app()->user->getFlash('success'); 
endif; ?>
</p>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'content-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'title'=>array(
			"name" => "title",
			"value" => 'htmlspecialchars($data->title)',
			),
		'content' =>array(
			"name" => "content",
			"value" => 'mb_substr(strip_tags($data->content), 0, 20, "UTF-8")',
			),
		'status' =>  array(
			"name" => "status",
			"value" => '($data->status == 1)?"Опубликована":"Не опубликована"',
			"filter" => array(0 => "Не опубликована", 1 => "Опубликована")
		),
		'category_id' => array(
			"name" => "category_id",
			"value" => '$data->category->title',
			"filter" => Category::getAllCategories()
			),
		'created'  => array(
			"name" => "created",
			"value" => 'date("j-m-Y H:i", $data->created)',
			"filter" => false
			),
		array(
            'class'=>'CButtonColumn',
            'viewButtonUrl'=>'Yii::app()->createUrl($data["uri"])',
            'viewButtonOptions' => array('class' => 'fui-eye'),
            'deleteButtonOptions' => array('class' => 'fui-cross'),
            'updateButtonOptions' => array('class' => 'fui-new'),
		),
	),
)); ?>

<?php echo CHtml::link('Расширенный поиск','#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->
