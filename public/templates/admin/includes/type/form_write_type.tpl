<form id="form-type-warning" role="form" class="mff-moderation">
    <div class="form-group">
        <label for="titleWarning">Titre</label>
        <input id="titleWarning" type="text" class="form-control" placeholder="Titre" required>
    </div>
    <div class="form-group">
        <label for="levelWarning">Points à ajouter</label><br/>
        <small>Le nombre de points à ajouter au niveau d’avertissement des utilisateurs.</small>
        <input id="levelWarning" type="number" class="form-control" value="2" min="0" max="10" required>
    </div>
    <div class="form-group">
        <label for="timeWarning">Expiration de l'avertissement</label><br/>
        <small>Une fois que l’avertissement a été délivré, après combien de temps voulez-vous qu’il
            expire ?
        </small>
        <div class="row">
            <div class="col-xs-6 col-md-8">
                <input id="timeWarning" type="number" class="form-control" value="1" min="0">
            </div>
            <div class="col-xs-6 col-md-4">
                <select id="selectTimeWarning" class="form-group">
                    <option value="hour">Heure(s)</option>
                    <option value="day" selected>Jour(s)</option>
                    <option value="week">Semaine(s)</option>
                    <option value="month">Mois</option>
                    <option value="never">Jamais</option>
                </select>
            </div>
        </div>
    </div>
    <button type="button" id="add-type-warning"
            class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored"
            disabled>
        <i class="material-icons">add</i>
    </button>
</form>