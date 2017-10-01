(function(w, d, $) {
    function Validate (options) {
        this.options = $.extend({},options);
        this.valid  = false;
        this.autoLogin = false;
        this.checkServe = false;
        this._initDom()._bindonFocus()._bindonBlur();
        if(this.$loginForm.length > 0){
            console.log(this.$loginForm.length)
            this._bindSubmit();
        } else if(this.$regForm.length > 0){

            this._bindReg();
        }

    }

    Validate.prototype = {
        _initDom :function () {
            var self = this;
            self.$phoneNum = $(self.options.phoneNumSelector);
            self.$password =  $(self.options.passwordSelector);
            self.$secPsw =  $(self.options.secPswSelector);
            self.$checkAutoLogin =  $(self.options.checkAutoLoginSelector);
            self.$checkValidate =  $(self.options.checkValidateSelector);
            self.$loginBtn = $(self.options.loginBtnSelector);
            self.$loginForm = $(self.options.loginFormSelector);
            self.$regForm = $(self.options.regFormSelector);
            self.$address = $(self.options.addressSelector);
            self.$trueName = $(self.options.trueNameSelector);
            return self;
        },
        _cleanInvalid:function ($warn,$target) {
            $warn.html("");
            $target.removeClass('j-error');
        },
        _checkPhoneNum:function ($warn,num) {
            var self = this;
            if (!/^1\d{10}$/.test(num)){
                self._showMessage($warn,"请输入正确的11位手机号")
                self.$phoneNum.addClass('j-error')
            }else {
                self.valid = true;
            }
        },
        _checkPassword:function ($warn, pswd) {
            var self = this;
            if (pswd.length >16 || pswd.length < 6){
                self.valid = false;
                self._showMessage($warn,"请确认您的密码的长度是否符合要求")
            }else if (!/\d/.test(pswd) || !/[a-z]/i.test(pswd)){
                self._showMessage($warn,"请确认您的密码包含了数字和字母")
                self.valid = false;
            }else {
                self.valid = true;
            }
        },
        _checkSecPassword:function ($warn, $pwd,$secpwd) {
            var self = this;
            if($pwd.val() !== $secpwd.val()){
                self.valid = false;
                self._showMessage($warn,"请确认您的第二次输入的密码是否与第一次一致")
            } else {
                self.valid = true;
            }
        },
        _showMessage:function ($warn,message) {
            $warn.html(message);
        },
        _bindonFocus:function () {
            var self  = this;
            self.$phoneNum.on('focus',function (event) {
                event = event || window.event;
                var target = event.target||event.srcElement;
                self._cleanInvalid($(target).prev(),self.$phoneNum);
            })
            self.$password.on('focus',function (event) {
                event = event || window.event;
                var target = event.target||event.srcElement;
                self._cleanInvalid($(target).prev(),self.$password);
            })
            if(self.$secPsw){
                self.$secPsw.on('focus',function (event) {
                    event = event || window.event;
                    var target = event.target||event.srcElement;
                    self._cleanInvalid($(target).prev(),self.$secPsw);
                });
            }
            return self;
        },
        _bindonBlur:function () {
            var self  = this;
            self.$phoneNum.on('blur',function (event) {
                event = event || window.event;
                var target = event.target||event.srcElement;
                self._checkPhoneNum($(target).prev(),target.value);
            });
            self.$password.on('blur',function (event) {
                event = event || window.event;
                var target = event.target||event.srcElement;
                self._checkPassword($(target).prev(),target.value);
            });
            if(self.$secPsw){
                self.$secPsw.on('blur',function (event) {
                    event = event || window.event;
                    var target = event.target||event.srcElement;
                    self._checkSecPassword($(target).prev(),self.$password, self.$secPsw);
                });
            }
            return self;
        },
        _bindSubmit:function () {
            var self = this;
            self.$loginForm.on('submit',function (event) {
                event.preventDefault();
                self.autoLogin = self.$checkAutoLogin.is(':checked');
                if(self.valid){
                    console.log("v");
                    var user = {
                        phoneNumber : self.$phoneNum.val(),
                        password:md5(self.$password.val())
                    };
                    // $.post();
                    $.ajax({
                        url:'/biyaoweb/checklogin',
                        type:'POST',
                        data:user,
                        success:function (data) {
                            if(data.result) {
                                console.log(data.result);
                                //加 cookie
                                util.setCookie("userId",data.user.id);
                                //跳转到index
                                location.href = "/biyaoweb/index";
                            } else {
                                window.notice('手机号或密码不正确');
                            }
                        }
                    });

                } else {
                    // 输入的信息格式不正确
                    console.log("inv");
                    return;
                }
            })
            return self;
        },
        _bindReg:function () {
            var self = this;
            console.log(self.checkServe);
            self.$regForm.on('submit',function (event) {
                event.preventDefault();
                // self.checkServe = self.$checkAutoLogin.is(':checked');
                // console.log(self.checkServe);
                // if(!self.checkServe){
                //     return
                // }

                if(self.valid){
                    // $.post();
                    var o = {};
                    o.password = md5(self.$password.val());
                    o.phoneNumber = self.$phoneNum.val();
                    o.trueName = self.$trueName.val();
                    o.address = self.$address.val();
                    console.log(o.trueName);
                    $.ajax({
                        url:'/biyaoweb/adduser',
                        data:o,
                        type:'POST',
                        success:function (data) {
                            if(data.result === 1) {
                                window.notice('你已经注册成功 即将跳转到登录页面');
                                setTimeout(function () {
                                    location.href = '/biyaoweb/login';
                                },2000);
                            }
                        }
                    });

                } else {
                    console.log("inv");
                    return;
                }
            });
            return self;
        }

    };
    $.extend({
        validate:function (options) {
            new Validate(options);
        }
    })

})(window,document,jQuery)