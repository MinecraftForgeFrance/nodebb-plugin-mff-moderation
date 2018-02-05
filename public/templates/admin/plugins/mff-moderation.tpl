<form role="form" class="mff-moderation">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="col-md-6 col-xs-6">
                    Ajouter un type d'avertissement
                </div>
                <div class="col-md-6 col-xs-6">
                    Ajouter un niveau d'avertissement
                </div>
            </div>
            <div class="panel-body">
                <div class="col-md-6 col-xs-6">
                    <div class="form-group">
                        <label for="titleWarning">Titre</label>
                        <input id="titleWarning" type="text" class="form-control" placeholder="Titre">
                    </div>
                    <div class="form-group">
                        <label for="levelWarning">Points à ajouter</label><br/>
                        <small>Le nombre de points à ajouter au niveau d’avertissement des utilisateurs.</small>
                        <input id="levelWarning" type="number" class="form-control" placeholder="1">
                    </div>
                    <div class="form-group">
                        <label for="timeWarning">Expiration de l'avertissement</label><br/>
                        <small>Une fois que l’avertissement a été délivré, après combien de temps voulez-vous qu’il
                            expire ?
                        </small>
                        <div class="row">
                            <div class="col-xs-6 col-md-8">
                                <input id="timeWarning" type="number" class="form-control" placeholder="1">
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
                </div>
                <div class="col-md-6 col-xs-6">
                    <div class="form-group">
                        <label for="levelWarning">Pourcentage maximum de points d'avertissement</label><br/>
                        <small>Veuiller entrer une valeur numérique entre 1 et 100</small>
                        <input id="levelWarning" type="number" class="form-control" placeholder="1">
                    </div>
                    <div class="form-group">
                        <label for="timeWarning">Mesure à prendre</label><br/>
                        <small>Sélectionnez la mesure que vous voulez prendre quand des utilisateurs ont atteint le
                            niveau ci-dessus.
                        </small>
                        <div class="radio">
                            <dl>
                                <dt>
                                    <label>
                                        <input id="radioBanUser" type="radio" class="form-group" value="">
                                        Bannir l’utilisateur
                                    </label>
                                </dt>
                                <dd hidden>
                                    <label for="timeBan">Durée du bannissement : </label>
                                    <div class="row">
                                        <div class="col-xs-6 col-md-8">
                                            <input id="timeBanUser" type="number" class="form-control" placeholder="1">
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
                                </dd>
                                <dt>
                                    <label>
                                        <input id="radioSuspenseMessage" type="radio" class="form-group" value="">
                                        Suspendre les privilèges de messages
                                    </label>
                                </dt>
                                <dd hidden>
                                    <label for="timeSuspenseMessage">Durée de la suspension : </label>
                                    <div class="row">
                                        <div class="col-xs-6 col-md-8">
                                            <input id="timeSuspenseMessage" type="number" class="form-control"
                                                   placeholder="1">
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
                                        <input id="radioModerateMessage" type="radio" class="form-group" value="">
                                        Modérer les messages
                                    </label>
                                </dt>
                                <dd hidden>
                                    <label for="timeModerateMessage">Durée de modération : </label>
                                    <div class="row">
                                        <div class="col-xs-6 col-md-8">
                                            <input id="timeModerateMessage" type="number" class="form-control"
                                                   placeholder="1">
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
                </div>
            </div>
        </div>
    </div>
</form>

<button id="save"
        class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
    <i class="material-icons">save</i>
</button>