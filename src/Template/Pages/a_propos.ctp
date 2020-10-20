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

    <li>Remise du lien GitHub et page À propos:
        <ol>
            <li><a href="https://github.com/rastanolet/WineListTP1.git">Pour le lien GitHub WineList</a></li>
            <li>.../pages/a_propos</li>
        </ol>
    </li>
    <li>Exigences du TP1:
        <ol>
            <li>BD avec hasMany (1-n) et belongsToMany (n-n): 
                    <ol>
                        <li>Les tables colors, countries, regions, vineyards et years on hasMany(1-n) avec la table wines  </li>
                        <li>Les tables files et grapes on belongsToMany(n-n) avec la table wines</li>
                    </ol>
            </li>
            <li>Cake bake pour 9 tables: 
                    <ol>
                        <li>Les cinq tables sont Users, Colors, Countries, Files, Grapes, Regions, Vineyards, Wines et Years</li>
                    </ol>
            </li>
            <li>Actions et infos en menu pour trois types d'utilisateurs: 
                    <ol>
                        <li>Les Adimistrateurs ont accès à toutes les fonctionnalité.
                            <ol>
                                <li>Exemple d'administrateur: simon@admin.com   mot de passe : secret</li>
                            </ol>
                        </li>
                        <li>Les Vendeurs peuvent ajouter des fichiers, ajouter des raisins, mais n'ont accès qu'aux vins qu'ils ont eux-même créés.
                            <ol>
                                <li>Exemple de vendeur: rastanolet@gmail.com   mot de passe : secret</li>
                            </ol>
                        </li>
                        
                        <li>Les Visiteurs ne peuvent rien modifier.
                            <ol>
                                <li>Exemple de vendeur: felixmaille@gmail.com   mot de passe : secret</li>
                            </ol>
                        </li>
                        
                    </ol>
            </li>
            
            <li>Traduction i18n en français et 3ième langue.
                <ol>
                    <li>Une partie de l'interface et du contenu de l'application est offert en francais, en anglais et en espagnol.</li>
                    <li>Le language peut être changé dans la bare de navigation.</li>
                </ol>
            </li>
            
            <li>Gestion multilingue du contenu de la BD:
                <ol>
                    <li>Quand le language est changer, la table i18n gère de changer la description du vin dans la langue sélectionner</li>
                </ol>
            </li>
            
            <li>Téléversement et affichage d'images liées:
                <ol>
                    <li>Il est possible d'ajouter un fichier (image) et le lier a un vin</li>
                </ol>
            </li>
            
            <li>Envoi d'un courriel de confirmation avec UUID:
                <ol>
                    <li>Quand un nouveau utilisateur est créé, il faut donner un courriel valide à laquelle vous pouvez accèder.</li>
                    <li>Aller cliquer sur le lien du message reçu.</li>
                    <li>Votre courriel sera donc confirmer.</li>
                </ol>
            </li>
        </ol>
    </li>
    <li><a href="http://127.0.0.1/myadmin/db_designer.php?db=wine_list">Cliquez ici pour observer le diagrame original</a></li>
    <li>Diagramme de la base de données actuelle utilisée par l'application:
        <img src="src\Template\Pages\diagrame_bd.JPG" alt="Diagrame BD">
    
    </li>
    
</ol>
    

</div>
