/* global $, socket*/

$(() => {
    readTypeDataFromServer();
    checkRadioButton();
    checkInputTypeWarning();
});

checkRadioButton = () => {
    let radioButton = $(":radio");
    radioButton.prop("checked", false);
    radioButton.click(function () {
        let tId = $(this).attr("id").replace("radio", "");
        let dd = tId.charAt(0).toLowerCase() + tId.substring(1);
        $('[data-group="sanctionRadio"]').attr("hidden", true);
        $(`#${dd}`).attr("hidden", false);
    });
};

sendTypeWarning = (listInput) => {
    const titleTypeJson = ["title", "level", "timeNumber", "selectUnitTime"];
    const typeJson = {
        title: "",
        level: 0,
        timeNumber: 0,
        selectUnitTime: ""
    };
    console.log(listInput);
    let i = 0;
    for(const input of listInput) {
        console.log(input.value);
        typeJson[titleTypeJson[i++]] = input.value;
    }

    console.log(typeJson);
    $("#add-type-warning").click(() => {
        socket.emit("modules.typeWarning", typeJson, (err, result) => {
            alert(result);
            $("#form-type-warning :reset");
        });
    });
};

checkInputTypeWarning = () => {
    $("#form-type-warning input").focusout(function () {
        if ($("#form-type-warning input:invalid").length === 0) {
            toggleButton(false);
        } else {
            toggleButton(true);
        }
    });
};

toggleButton = (state) => {
    let button = $("button");
    button.attr("disabled", state);
    if (!state) {
        let listInput = $("#form-type-warning :input").not("button");
        sendTypeWarning(listInput);
    }
};

readTypeDataFromServer = () => {
    const typeJson = {
        title: "",
        level: 0,
        timeNumber: 0,
        selectUnitTime: ""
    };
    socket.emit("modules.readTypeWarning", typeJson, (err, result) => {
        console.log(result);
    });
};
