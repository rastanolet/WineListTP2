<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Grape[]|\Cake\Collection\CollectionInterface $grapes
 */
?>
<div class="grapes index large-9 medium-8 columns content">
    <h3><?= __('Simon Nolet') ?></h3>
    <h3><?= __('4205B7MO Applications Internet') ?></h3>
    <h3><?= __('Automne 2020, Collège Montmorency') ?></h3>
    
    <ol>
    <li>Description sommaires des étapes d'utilisation typiques permettant de vérifier le bon fonctionnement de cette application web:
        <ol>
            <li><a href="https://cmontmorency.moodle.decclic.qc.ca/mod/page/view.php?id=190010">Utilisation du Framework CakePHP pour concevoir un site web sécurisé </a>;</li>
            <li><a href="https://cmontmorency.moodle.decclic.qc.ca/mod/page/view.php?id=190015">Construire un prototype d'application web multilingue </a>;</li>
        </ol>
    </li>
    <li>&nbsp;En vous inspirant de l'exemple vu au cours, ajoutez la fonctionnalité de téléversement d'images à votre application CakePHP:
        <ol>
            <li>Ajoutez une table qui contiendra les fichiers d'images;</li>
            <li>Liez cette table à au moins une autre table de votre application avec une relation 1-n ou m-n afin d'en illustrer le contenu;</li>
            <li>Les images liées doivent être affichées pour les actions de visualisation des enregistrements auxquels elles sont liées, c'est-à-dire "index" et "view".</li>
        </ol>
    </li>
    <li>Permettez l'inscription d'un nouvel utilisateur (de niveau "super-utilisateur") en effectuant le traitement suivant:
        <ol>
            <li>Envoyez un courriel comprenant un lien&nbsp;de confirmation&nbsp;à l'adresse courriel donnée lors de l'inscription. Ce lien doit invoquer l'action d'un contrôleur permettant d'enregistrer la confirmation du courriel de l'utilisateur dans la
                BD.
            </li>
            <ol>
                <li>Utilisez <a href="http://book.cakephp.org/3.0/fr/core-libraries/text.html#generer-des-uuids">la méthode "uuid" de la classe "text" de CakePHP</a>&nbsp;afin de générer un code de confirmation.</li>
            </ol>
            <li>Tant que son courriel n'est pas confirmé, un nouvel utilisateur n'aura pas les mêmes droits qu'il aurait en le confirmant.
                <ol>
                    <li>À chaque fois qu'un utilisateur démarre une session, vous devez vérifier si son courriel est confirmé. S'il ne l'est pas, vous devez afficher un message indiquant clairement les restrictions qui s'appliquent. Vous devez aussi offrir
                        de renvoyer le courriel de confirmation.</li>
                    <li>Vous êtes libres de déterminer quelles sont les restrictions applicables aux nouveaux utilisateurs selon votre type d'application.</li>
                </ol>
            </li>
        </ol>
    </li>
    
    <li>Vous devez ajouter une page d'informations "à propos" de votre application web. Cette page d'information doit être disponible à partir du menu principal et contenir:

    <ol>
        <li>Votre nom.</li>
        <li>Le titre du cours:
            <ol>
                <li>420-5b7 MO Applications internet.</li>
                <li>Automne 2018, Collège Montmorency.</li>
            </ol>
        </li>
        <li>Une description sommaires des étapes d'utilisation typiques permettant de vérifier le bon fonctionnement de votre application web:
            <ol>
                <li>Vous devez indiquer clairement comment et avec quels éléments de vos pages interagir:</li>
                <li>Vous devez aussi indiquer le résultat qui est attendu et éventuellement si cela ne fonctionne pas complètement.</li>
                <li>Ces étapes doivent permettre de vérifier les exigences du TP1 (Grille d'évaluation).</li>
            </ol>
        </li>
        <li>Le diagramme de la base de données actuelle utilisée par votre application;</li>
        <li>Un lien vers l'emplacement d'où provient le diagramme original.</li>
    </ol>
    </li>
</ol>
    
    
    
    
    
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>
