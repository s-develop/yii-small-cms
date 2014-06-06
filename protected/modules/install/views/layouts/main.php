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

    <!-- Loading Editor CSS -->
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/themes/control/assets/CLEditor/jquery.cleditor.css" rel="stylesheet">

    <!-- Load JS =============================-->

    <?php
    //При вызове Jquery.ui автоматом вызывается Jquery, но для наглядности можно и так
    Yii::app()->clientScript->registerCoreScript('jquery');
    Yii::app()->clientScript->registerCoreScript('jquery.ui');
    ?>
    <script src="/themes/control/assets/CLEditor/jquery.cleditor.min.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/bootstrap.min.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/bootstrap-select.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/bootstrap-switch.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/flatui-checkbox.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/flatui-radio.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/jquery.tagsinput.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/jquery.placeholder.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/jquery.stacktable.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/js/application.js"></script>


    <script type="text/javascript">
        $(document).ready(function () { $("#Content_content").cleditor(); });
    </script>

    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/flat-ui/css/control_module.css" />

</head>
<body>
<div id="content" style="width:700px;margin:20px auto;padding:10px 0 10px 60px;background-color: floralwhite; border-radius: 10px">
	<?php echo $content; ?>
</div>
</body>


