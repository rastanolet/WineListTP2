<?php $this->extend('../../Layout/TwitterBootstrap/dashboard'); ?>

<?php $this->start('tb_actions'); ?>
<li><?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $vineyard->id], ['confirm' => __('Are you sure you want to delete # {0}?', $vineyard->id), 'class' => 'nav-link']) ?></li>
<li><?= $this->Html->link(__('List Vineyards'), ['action' => 'index'], ['class' => 'nav-link']) ?></li>
<li><?= $this->Html->link(__('List Wines'), ['controller' => 'Wines', 'action' => 'index'], ['class' => 'nav-link']) ?></li>
<li><?= $this->Html->link(__('New Wine'), ['controller' => 'Wines', 'action' => 'add'], ['class' => 'nav-link']) ?></li>
<?php $this->end(); ?>
<?php $this->assign('tb_sidebar', $this->fetch('tb_actions')); ?>

<div class="vineyards form content">
    <?= $this->Form->create($vineyard) ?>
    <fieldset>
        <legend><?= __('Edit Vineyard') ?></legend>
        <?php
            echo $this->Form->control('name');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
