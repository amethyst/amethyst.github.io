
function regex_quote(str) {
    return str.replace(new RegExp("([\\.\\\\\\+\\*\\?\\[\\^\\]\\$\\(\\)\\{\\}\\=\\!\\<\\>\\|\\:\\-])", "g"), "\\$1");
}

function filter() {
    var search = document.getElementById("news_search").value;
    var quoted = regex_quote(search);
    var posts = document.getElementById("news_posts");
    var children = posts.children;
    for (var i = 0; i < children.length; i++) {
        var post = posts.children[i];
        if (post.innerText.match(new RegExp(".*" + quoted + ".*", "gi"))) {
            post.style.display = '';
        } else {
            post.style.display = 'none';
        }
    }
}

