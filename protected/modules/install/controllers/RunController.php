<?php

class RunController extends CController{


	public function init(){
		$this->layout='/layouts/main';
	}

	public function actionIndex(){

		//First need to check has_install or not ?
        $path_to_root_dir = dirname(dirname(dirname(dirname(dirname(__FILE__)))));

        if(file_exists($path_to_root_dir.DIRECTORY_SEPARATOR.'.locked')){
			echo 'Website installed! Please remove .locked file in common folder';
		} else {
			$model=new InstallForm;
			$model->app_name='Новый сайт';
			$model->site_title='Заголовок нового сайта';
			$model->site_description='Описание нового сайта';
			$model->db_host='localhost';
			$path=Yii::app()->getbaseUrl(true);
			$model->url_path=$path;
			$model->admin_email='admin@localhost.com';

			if(isset($_POST['InstallForm'])){

				$model->attributes=$_POST['InstallForm'];
				$string_connection='mysql:host='.$model->db_host.';dbname='.$model->db_name;
				$connection=new CDbConnection($string_connection,$model->db_username,$model->db_password);

				// Get SQL Script
				$sql = file_get_contents($path_to_root_dir.DIRECTORY_SEPARATOR.'_DATABASE'.DIRECTORY_SEPARATOR.'cms.sql', true);

				if($sql){

					//Replace some default attributes
					$command=$connection->createCommand($sql);

					if($command->execute()!==false){


						//Modify Settings Values
//						$command=$connection->createCommand("UPDATE gxc_settings SET `value` = :v where `category` = :c and `key` = :k ");
//                        $command->bindValue(':c','general',PDO::PARAM_STR);
//                        $command->bindValue(':k','site_name',PDO::PARAM_STR);
//                        $command->bindValue(':v',b64_serialize($model->app_name),PDO::PARAM_STR);
//                        $command->execute();




						// Modify Environments
//						$apps=GxcHelpers::getAllApps(true);

						//foreach($apps as $app){
							$env=file_get_contents($path_to_root_dir.DIRECTORY_SEPARATOR.'protected'.DIRECTORY_SEPARATOR.'config'.DIRECTORY_SEPARATOR.'main.php');

							$env=str_replace('{{db_connect_string}}',$string_connection,$env);
							$env=str_replace('{{db_username}}',$model->db_username,$env);
							$env=str_replace('{{db_password}}',$model->db_password,$env);

							file_put_contents($path_to_root_dir.DIRECTORY_SEPARATOR.'protected'.DIRECTORY_SEPARATOR.'config'.DIRECTORY_SEPARATOR.'main.php',$env);
						}

						//Create lock file in COMMON folder
						if(!file_put_contents($path_to_root_dir.DIRECTORY_SEPARATOR.'.locked', 'installed')){
							echo "Error while creating locking install file!";
						} else {
							$this->redirect($path);
						}

					} else {
						echo "Error while installing! Please check config file and try again";
					}
				}

			$this->render('index',array('model'=>$model));
	}
		Yii::app()->end();

	}

}
