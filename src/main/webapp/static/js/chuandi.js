function sub(ID, addrs) {
    $.ajax({
        cache: true,
        type: "POST",
        url: addrs,
        data: $("#" + ID).serialize(),// ���formid
        async: false,
        error: function (request) {
            alert("Connection error:" + request.error);
        },
    });
}