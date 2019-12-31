<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Minuman */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="minuman-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Id_minuman')->textInput() ?>

    <?= $form->field($model, 'Nm_minuman')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Jenis')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Harga')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
