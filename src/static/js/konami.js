var sequence = [38, 38, 40, 40, 37, 39, 37, 39, 66, 65]

var position = 0;
document.addEventListener("keydown", function(e) {
    if (sequence[position] == e.keyCode) {
        position++;
        if (position == sequence.length) {
            window.location.href = "/turbo-cool";
        }
    } else {
        position = 0;
    }
});