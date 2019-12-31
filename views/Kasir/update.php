<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Kasir */

$this->title = 'Update Kasir: ' . $model->Id_kasir;
$this->params['breadcrumbs'][] = ['label' => 'Kasirs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Id_kasir, 'url' => ['view', 'id' => $model->Id_kasir]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kasir-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
