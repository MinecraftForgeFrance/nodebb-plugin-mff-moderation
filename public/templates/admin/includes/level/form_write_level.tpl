<form id="form-level-warning" role="form" class="mff-moderation">
    <div class="form-group">
        <label for="levelSanctionWarning">Pourcentage maximum de points d'avertissement</label><br/>
        <small>Veuiller entrer une valeur numérique entre 1 et 100</small>
        <input id="levelSanctionWarning" type="number" class="form-control" value="1" min="1" max="100">
    </div>
    <div class="form-group">
        <label>Mesure à prendre</label><br/>
        <small>Sélectionnez la mesure que vous voulez prendre quand des utilisateurs ont atteint le
            niveau ci-dessus.
        </small>
        <div class="radio">
            <dl>
                <dt>
                    <label>
                        <input id="radioBanUser" type="radio" class="form-group" name="sanctionRadio">
                        Bannir l’utilisateur
                    </label>
                </dt>
                <dd id="banUser" hidden data-group="sanctionRadio">
                    <table cellpadding="2">
                        <tbody>
                        <tr>
                            <td>
                                <label for="timeBan">Durée du bannissement : </label>
                            </td>
                            <td>
                                <div class="row">
                                    <div class="col-xs-6 col-md-8">
                                        <input id="timeBanUser" type="number" class="form-control"
                                               value="1" min="0">
                                    </div>
                                    <div class="col-xs-6 col-md-4">
                                        <select id="selectTimeBanUser" class="form-group">
                                            <option value="hour">Heure(s)</option>
                                            <option value="day">Jour(s)</option>
                                            <option value="week">Semaine(s)</option>
                                            <option value="month">Mois</option>
                                            <option value="never">Permanent</option>
                                        </select>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </dd>
                <dt>
                    <label>
                        <input id="radioSuspenseMessage" type="radio" class="form-group"
                               name="sanctionRadio">
                        Suspendre les privilèges de messages
                    </label>
                </dt>
                <dd id="suspenseMessage" hidden data-group="sanctionRadio">
                    <label for="timeSuspenseMessage">Durée de la suspension : </label>
                    <div class="row">
                        <div class="col-xs-6 col-md-8">
                            <input id="timeSuspenseMessage" type="number" class="form-control"
                                   value="1" min="0">
                        </div>
                        <div class="col-xs-6 col-md-4">
                            <select id="selectTimeSuspenseMessage" class="form-group">
                                <option value="hour">Heure(s)</option>
                                <option value="day">Jour(s)</option>
                                <option value="week">Semaine(s)</option>
                                <option value="month">Mois</option>
                                <option value="never">Permanent</option>
                            </select>
                        </div>
                    </div>
                </dd>
                <dt>
                    <label>
                        <input id="radioModerateMessage" type="radio" class="form-group"
                               name="sanctionRadio">
                        Modérer les messages
                    </label>
                </dt>
                <dd id="moderateMessage" hidden data-group="sanctionRadio">
                    <label for="timeModerateMessage">Durée de modération : </label>
                    <div class="row">
                        <div class="col-xs-6 col-md-8">
                            <input id="timeModerateMessage" type="number" class="form-control"
                                   value="1" min="0">
                        </div>
                        <div class="col-xs-6 col-md-4">
                            <select id="selectTimeModerateMessage" class="form-group">
                                <option value="hour">Heure(s)</option>
                                <option value="day">Jour(s)</option>
                                <option value="week">Semaine(s)</option>
                                <option value="month">Mois</option>
                                <option value="never">Permanent</option>
                            </select>
                        </div>
                    </div>
                </dd>
            </dl>
        </div>
    </div>
    <button type="button" id="add-level-warning"
            class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored"
            disabled>
        <i class="material-icons">add</i>
    </button>
</form>