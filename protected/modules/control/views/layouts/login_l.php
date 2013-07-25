<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
   	<title><?php echo CHtml::encode($this->pageTitle); ?></title>

	   <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Loading Bootstrap -->
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/css/flat-ui.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/html5shiv.js"></script>
    <![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />
	<style type="text/css">
	.container{
		background-color: #fff;
	}
	</style>

</head>

<body>

<div class="container">
	<div class="row">
	<?php //Вывод основного контента
	echo $content; ?>
	
	</div>
	<div class="clearfix"></div>
	
	<div class="row">
            <div class="span3"></div>
			<div id="footer" class="span6">
				<p class="copy">Copyright &copy; 2013 by <a href="http://q-seo.ru">q-seo.ru</a></p>
			</div><?php //<!-- footer -->?>
            <div class="span3"></div>
	</div>
</div><?php //<!-- page --> ?>
 
    <!-- Load JS here for greater good =============================-->
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/jquery.ui.touch-punch.min.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/bootstrap.min.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/bootstrap-select.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/bootstrap-switch.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/flatui-checkbox.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/flatui-radio.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/jquery.tagsinput.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/jquery.placeholder.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/jquery.stacktable.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/http://vjs.zencdn.net/c/video.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/application.js"></script>
</body>
</html>
