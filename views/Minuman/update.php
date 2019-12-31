<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Minuman */

$this->title = 'Update Minuman: ' . $model->Id_minuman;
$this->params['breadcrumbs'][] = ['label' => 'Minumen', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Id_minuman, 'url' => ['view', 'id' => $model->Id_minuman]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="minuman-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
