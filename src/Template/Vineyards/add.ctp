<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Vineyard $vineyard
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Vineyards'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Wines'), ['controller' => 'Wines', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Wine'), ['controller' => 'Wines', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="vineyards form large-9 medium-8 columns content">
    <?= $this->Form->create($vineyard) ?>
    <fieldset>
        <legend><?= __('Add Vineyard') ?></legend>
        <?php
            echo $this->Form->control('name');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
