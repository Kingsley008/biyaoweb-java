(function () {
    var template = '    <div class="m-notice">\n' +
        '        <img src="imgs/icon/information.png"><br>\n' +
        '        <p class="message">更新成功</p>\n' +
        '    </div>'

    function text2html(template) {
        var div = document.createElement('div');
        div.innerHTML = template;
        return div.childNodes[1];
    }

    function Notice(message, duration) {
        this.notice = this._layer.cloneNode(true);
        this.notice.querySelector('.message').innerText = message;
        this.duration = duration || 1000; // 默认停留一秒
        this.showNotice();
        this.hideNotice();

    }

    Notice.prototype = {
        _layer: text2html(template),
        showNotice: function () {
            document.body.appendChild(this.notice);

        },
        hideNotice: function () {
            var self = this;
            setTimeout(function () {
                document.body.removeChild(self.notice);
            },self.duration)
        }
    };
    window.notice = function (message, duration) {
        new Notice(message, duration);
    }
})();