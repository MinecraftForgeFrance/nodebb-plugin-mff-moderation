"use strict";

/* global $, socket*/

$(function () {
    readTypeDataFromServer();
    checkRadioButton();
    checkInputTypeWarning();
});

checkRadioButton = function checkRadioButton() {
    var radioButton = $(":radio");
    radioButton.prop("checked", false);
    radioButton.click(function () {
        var tId = $(this).attr("id").replace("radio", "");
        var dd = tId.charAt(0).toLowerCase() + tId.substring(1);
        $('[data-group="sanctionRadio"]').attr("hidden", true);
        $("#" + dd).attr("hidden", false);
    });
};

sendTypeWarning = function sendTypeWarning(listInput) {
    var titleTypeJson = ["title", "level", "timeNumber", "selectUnitTime"];
    var typeJson = {
        title: "",
        level: 0,
        timeNumber: 0,
        selectUnitTime: ""
    };
    console.log(listInput);
    var i = 0;
    var _iteratorNormalCompletion = true;
    var _didIteratorError = false;
    var _iteratorError = undefined;

    try {
        for (var _iterator = listInput[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
            var input = _step.value;

            console.log(input.value);
            typeJson[titleTypeJson[i++]] = input.value;
        }
    } catch (err) {
        _didIteratorError = true;
        _iteratorError = err;
    } finally {
        try {
            if (!_iteratorNormalCompletion && _iterator.return) {
                _iterator.return();
            }
        } finally {
            if (_didIteratorError) {
                throw _iteratorError;
            }
        }
    }

    console.log(typeJson);
    $("#add-type-warning").click(function () {
        socket.emit("modules.typeWarning", typeJson, function (err, result) {
            alert(result);
            $("#form-type-warning :reset");
        });
    });
};

checkInputTypeWarning = function checkInputTypeWarning() {
    $("#form-type-warning input").focusout(function () {
        if ($("#form-type-warning input:invalid").length === 0) {
            toggleButton(false);
        } else {
            toggleButton(true);
        }
    });
};

toggleButton = function toggleButton(state) {
    var button = $("button");
    button.attr("disabled", state);
    if (!state) {
        var listInput = $("#form-type-warning :input").not("button");
        sendTypeWarning(listInput);
    }
};

readTypeDataFromServer = function readTypeDataFromServer() {
    var typeJson = {
        title: "",
        level: 0,
        timeNumber: 0,
        selectUnitTime: ""
    };
    socket.emit("modules.readTypeWarning", typeJson, function (err, result) {
        console.log(result);
    });
};
//# sourceMappingURL=admin.js.map