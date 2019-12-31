<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Minuman */

$this->title = 'Create Minuman';
$this->params['breadcrumbs'][] = ['label' => 'Minumen', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="minuman-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
