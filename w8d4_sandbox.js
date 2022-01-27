hammertime = function () {
    alert('HAMMERTIME');
}

window.setTimeout(hammertime, 5000);

hammertime = function (time) {
    window.setTimeout(function() {
        alert(`${time} is hammertime!`);
    });
}

