(window.webpackJsonp=window.webpackJsonp||[]).push([[16],{1004:function(t,e,o){"use strict";o.d(e,"a",(function(){return c}));var n=o(30),r=o(39);function c(t){var e=t.platform,o=n.f[e];window.localStorage.setItem("OAUTH_LOGIN_URL",window.location.href);var c=window.open(o,"_blank",n.j);if(!Object(r.c)())var l=window.setInterval((function(){c&&!c.closed||(window.clearInterval(l),window.sessionStorage.setItem("AFTER-LOGIN-SUCCESS","1"),window.location.reload())}),300)}},1761:function(t,e,o){"use strict";o.d(e,"a",(function(){return d}));var n=o(193),r=o.n(n),c=o(30),l=new r.a({aid:c.i});function d(t){var e=t.platform;return l.oauthUnbind({platform_app_id:c.k[e],platform:e})}},2081:function(t,e,o){var content=o(2917);"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,o(86).default)("007fd92e",content,!0,{sourceMap:!1})},2259:function(t,e,o){"use strict";o(121),o(57),o(4);var n=o(187),r=o(689),c=o(488),l=(o(1761),o(1)),d=o(44),f=o(1004),m=o(39),h=o(721),v=o(66),w=o(30),C={"login-with-phone":"phone_sms","login-with-account":"password"},x={props:{type:{type:String,default:"login-with-phone"},to:String,closeable:{type:Boolean,default:!0},newuserTicket:Boolean},components:{InputDropdown:h.a},data:function(){return{registerVcodeUrl:"",ticket:"",form:{account:"",password:"",mobile:"",smsCode:"",districtCode:"86"},isRegisterPanelVisible:!1,isAccountLoginPanelVisible:!1,vcodeCountdown:0,validating:!1,requesting:!1,panfishState:"normal",visibleCaptcha:!1,visibleOauth:!1,loginType:"CAPTCHA",passwordResetType:"phone",modalType:"login-with-phone",callbackFunc:"",dropList:w.b,districtCodeList:w.b,focus:!1,visibleDropdownInput:!0}},computed:{isPhoneNumberFormatValid:function(){var t=this.form.mobile.trim();return"phone"===Object(r.a)(t)},smsCodeBtnTittle:function(){return this.vcodeCountdown?"".concat(this.vcodeCountdown," 秒后重新发送"):"获取验证码"},isAccountLogin:function(){return"login-with-account"===this.modalType},visibleResetPanel:function(){return"reset-password"===this.modalType},isResetWithEmail:function(){return"reset-password"===this.modalType&&"email"===this.passwordResetType}},watch:{modalType:{handler:function(t){this.$TEA("uc_login_notify",{enter_from:Object(n.a)(this.$route.path),login_suggest_method:C[t]||t})},immediate:!0},type:{handler:function(t){this.modalType=t,this.resetCountdown()},immediate:!0},"form.register.phone":function(){this.form.smsCode=""},"form.account":function(t,e){this.visibleDropdownInput=v.e.test(t)},isRegisterPanelVisible:function(){this.autoSelect()}},methods:{storageObtainNewUserTicket:function(){this.newuserTicket&&window.sessionStorage.setItem("LOGIN_OBTAIN_NEWUSER_TICKET","getting")},loginWithWeibo:function(){return this.$TEA("uc_login_submit",{enter_from:Object(n.a)(this.$route.path),login_method:"weibo"}),Object(f.a)({platform:"weibo"})},loginWithWechat:function(){return this.$TEA("uc_login_submit",{enter_from:Object(n.a)(this.$route.path),login_method:"weixin"}),Object(f.a)({platform:Object(m.c)()?"wechatInApp":"weixin"})},loginWithGithub:function(){return this.$TEA("uc_login_submit",{enter_from:Object(n.a)(this.$route.path),login_method:"github"}),Object(f.a)({platform:"github"})},showResetPasswordPanel:function(){this.resetCountdown(),this.resetFormField(),this.modalType="reset-password",this.passwordResetType="phone"},showLoginPanel:function(t){this.resetCountdown(),this.resetFormField(),this.modalType=t},showEmailResetPanel:function(){this.passwordResetType="email",this.resetFormField()},resetCountdown:function(){this.vcodeCountdown&&this.token&&(window.clearInterval(this.token),this.vcodeCountdown=0)},resetFormField:function(){this.form={account:"",password:"",mobile:"",smsCode:"",districtCode:"86"}},login:function(){var t=this;this.$TEA("uc_login_submit",{enter_from:Object(n.a)(this.$route.path),login_method:C[this.modalType]||this.modalType}),this.callbackFunc="login",this.requesting=!0,this.checkLogin().then((function(e){return t.doLogin(e)})).then((function(e){return t.storageObtainNewUserTicket(),t.requesting=!1,t.done(),t.close(),e})).then((function(e){window.sessionStorage.setItem("AFTER-LOGIN-SUCCESS","1");var o=t.$getBean("eventBus");o.emit(o.eventType.AUTHORIZED);var r=e.data.new_user;1===r?setTimeout((function(){window.location.href=t.to||"/getting-started"}),1e3):o.emit(o.eventType[t.to?"REQUEST_REDIRECT":"REQUEST_RELOAD"],t.to),t.$TEA("uc_login_result",{enter_from:Object(n.a)(t.$route.path),login_method:C[t.modalType]||t.modalType,status:"success",is_register:r})})).catch((function(e){t.$alertMsg(e),t.requesting=!1,t.$TEA("uc_login_result",{enter_from:Object(n.a)(t.$route.path),login_method:C[t.modalType]||t.modalType,status:"fail",fail_info:e})}))},checkLogin:function(){return this.isAccountLogin?this.checkAccountLogin():this.checkPhoneNumberLogin()},checkPhoneNumberLogin:function(){var t=this,code=this.form.smsCode.trim(),e=this.form.mobile.trim(),o=this.form.districtCode,n=this.to;return Promise.resolve().then((function(){if(!e)return t.$refs.loginPhoneNumberInput.select(),Promise.reject("请填写手机号")})).then((function(){return Object(r.c)(e).catch((function(e){return t.$refs.loginPhoneNumberInput.select(),Promise.reject(e)}))})).then((function(){if(!code)return t.$refs.loginSmsCodeInput.select(),Promise.reject("请输入验证码")})).then((function(){return{mobile:"+".concat(o).concat(e),code:code,to:n}}))},checkAccountLogin:function(){var t=this,e=this.form.account.trim(),o=this.form.password.trim(),n=this.to;return Promise.resolve().then((function(){if(!e)return t.$refs.loginPhoneOrEmailInput.select(),Promise.reject("请填写手机号或邮箱")})).then((function(){if(!o)return t.$refs.loginPasswordInput.select(),Promise.reject("请输入密码")})).then((function(){return Object(r.d)(e).catch((function(e){return t.$refs.loginPhoneOrEmailInput.select(),Promise.reject(e)}))})).then((function(){return Object(r.b)(o).catch((function(e){return t.$refs.loginPasswordInput.select(),Promise.reject(e)}))})).then((function(){return{account:e,password:o,to:n}}))},doLogin:function(t){var e=this,o=t.mobile,n=void 0===o?"":o,r=t.code,code=void 0===r?"":r,c=t.account,d=void 0===c?"":c,f=t.password,m=void 0===f?"":f,h=t.to,v=this.isAccountLogin?"ACCOUNT":"CAPTCHA";return this.$store.dispatch(l.LOGIN,{mobile:n,code:code,account:d,password:m,to:h,type:v}).catch((function(t){return e.checkIsNeedVerify(t)})).catch((function(t){return e.handleErrorCodeMessage(t)}))},doResetPassword:function(t){var e=this,o=t.account,n=void 0===o?"":o,r=t.code,code=void 0===r?"":r,c=t.password,d=void 0===c?"":c;return this.$store.dispatch(l.RESET_PASSWORD,{account:n,code:code,password:d}).catch((function(t){return e.checkIsNeedVerify(t)})).catch((function(t){return e.handleErrorCodeMessage(t)}))},resetPassword:function(t,e){var o=this;this.callbackFunc="resetPassword",this.requesting=!0,this.checkResetPassword().then((function(t){return o.doResetPassword(t)})).then((function(){o.$alertMsg("密码重置成功"),o.modalType="login-with-account",o.requesting=!1,o.done()})).catch((function(t){o.$alertMsg(t),o.requesting=!1}))},checkResetPassword:function(){var t=this,code=this.form.smsCode.trim(),e=this.form.account.trim(),o=this.form.password.trim();return Promise.resolve().then((function(){if(!e)return t.$refs.loginPhoneOrEmailInput.select(),Promise.reject("请填写手机号或邮箱")})).then((function(){if(!code)return t.$refs.resetSmsCodeInput.select(),Promise.reject("请输入验证码")})).then((function(){return Object(r.b)(o).catch((function(e){return t.$refs.loginPasswordInput.select(),Promise.reject(e)}))})).then((function(){return{account:"+".concat(t.form.districtCode).concat(e),password:o,code:code}}))},sendSmsCode:function(){var t=this;this.callbackFunc="sendSmsCode";var e=this.form.mobile.trim(),o="MCT_QUICK_LOGIN";return this.visibleResetPanel&&(o="".concat("phone"===this.passwordResetType?"MCT":"ECT","_FORGET_PASSWORD"),e=this.form.account.trim()),this.isResetWithEmail&&!Object(c.e)(e)?this.$alertMsg("请输入正确的邮箱"):e?(this.isResetWithEmail?this.$getBean("passportService").getEmailCode(e,o):this.$getBean("passportService").sendSmsCode("+".concat(this.form.districtCode).concat(e),o)).then((function(e){return t.handleSmsMessage(e)})).then((function(e){t.updateVcodeCountdown(),t.$TEA("uc_send_sms",{enter_from:Object(n.a)(t.$route.path),status:"success"})})).catch((function(e){return t.checkIsNeedVerify(e)})).catch((function(e){return e&&t.handleErrorCodeMessage(e)})).catch((function(e){e&&t.$alertMsg(e),t.requesting=!1,t.$TEA("uc_send_sms",{enter_from:Object(n.a)(t.$route.path),fail_info:e,status:"fail"})})):void 0},handleSmsMessage:function(t){var e=t.mobile,o=t.message,n=t.status,r=t.email,c="fail"===n;return c&&o?Promise.reject(o):!c&&e?(this.$alertMsg("验证码已发送至".concat(e)),Promise.resolve(t)):!c&&r?(this.$alertMsg("验证邮件已发送到你的邮箱"),Promise.resolve(t)):void 0},handleErrorCodeMessage:function(t){var e=t.error_code,o=t.message;if(e)switch(e){case 4:return Promise.reject("账号输入格式错误");case 1011:return Promise.reject("账号不存在");case 1202:return Promise.reject("验证码错误");case 1104:case 1105:return Promise.reject("请完成验证后继续");case 1003:return Promise.reject("账号格式错误");default:return Promise.reject(o||"请求出现错误")}},checkIsNeedVerify:function(t){var e=t.status,o=t.error_code,n="fail"===e;return n&&[1105,1104].includes(o)?(this.$requestCaptchaVerify(!0,{1105:"SLIDE",1104:"TEXT"}[o],this.callbackFunc),Promise.reject(t)):n?Promise.reject(t):Promise.resolve(t)},updateVcodeCountdown:function(){var t=this,e=Date.now()+6e4;this.vcodeCountdown=60,this.token=window.setInterval((function(){var o=Math.max(Math.ceil((e-Date.now())/1e3),0);t.vcodeCountdown=o,o<=0&&window.clearInterval(t.token)}),100)},register:function(){var t=this;this.requesting=!0,this.checkRegister().then((function(e){return t.doRegister(e)})).then((function(){t.storageObtainNewUserTicket(),t.requesting=!1,t.done()})).catch((function(e){t.$alertMsg(e),t.requesting=!1}))},doRegister:function(t){var e=this,o=l.REGISTER_WITH_PHONE;return this.$store.dispatch(o,t).catch((function(t){switch(t.status){case 10014:return e.$refs.registerPhoneNumberInput.select(),Promise.reject("该手机号已注册");case 10017:return e.$refs.loginPasswordInput.select(),Promise.reject("验证码错误");default:return Promise.reject("注册时出现错误")}}))},autoSelect:function(){var t=this;this.$nextTick((function(){var e,o;t.isAccountLoginPanelVisible?null===(e=t.$refs.loginPhoneOrEmailInput)||void 0===e||e.select():null===(o=t.$refs.loginPhoneNumberInput)||void 0===o||o.select()}))},close:function(){this.$emit("close")},done:function(){this.$emit("done")},onFilterDroplist:function(t){if("reset"===t)return this.dropList=this.districtCodeList;var e=this.districtCodeList.filter((function(e){return e.code.startsWith(t)}));this.dropList=e.length?e:[{name:"无匹配数据",code:""}]},onFocus:function(){this.focus=!0},onOuterClick:function(){this.focus=!1},onSelect:function(code){this.form.districtCode=code}},mounted:function(){var t=this;this.autoSelect(),this.removeCloseListener=Object(d.h)(document,"keyup",(function(e){27===e.keyCode&&t.close()}));var e=this.$getBean("eventBus");e.emit(e.eventType.LOCK_ROOT_CONTAINER_SCROLL),e.onVmLife(this,e.eventType.CAPTCHA_VERIFIED,(function(e){e in t&&t[e]()}))},beforeDestroy:function(){this.removeCloseListener();var t=this.$getBean("eventBus");t.emit(t.eventType.UNLOCK_ROOT_CONTAINER_SCROLL)}},_=(o(2916),o(28)),component=Object(_.a)(x,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"auth-modal-box"},[n("form",{staticClass:"auth-form",on:{submit:function(t){t.preventDefault()}}},[n("div",{staticClass:"panfish"},[n("img",{directives:[{name:"show",rawName:"v-show",value:"normal"===t.panfishState,expression:"panfishState === 'normal'"}],staticClass:"normal",attrs:{src:o(2910)}}),t._v(" "),n("img",{directives:[{name:"show",rawName:"v-show",value:"greeting"===t.panfishState,expression:"panfishState === 'greeting'"}],staticClass:"greeting",attrs:{src:o(2911)}}),t._v(" "),n("img",{directives:[{name:"show",rawName:"v-show",value:"blindfold"===t.panfishState,expression:"panfishState === 'blindfold'"}],staticClass:"blindfold",attrs:{src:o(2912)}})]),t._v(" "),t.closeable?n("i",{staticClass:"close-btn ion-close-round",attrs:{title:"关闭"},on:{click:t.close}}):t._e(),t._v(" "),"login-with-phone"===t.modalType?n("div",{staticClass:"panel"},[n("h1",{staticClass:"title"},[t._v("手机登录")]),t._v(" "),t.newuserTicket?n("div",{staticClass:"insert-book-ticket-txt"},[t._v("\n        完成登录后，将向你的账户存入 45 元礼券\n      ")]):t._e(),t._v(" "),n("div",{staticClass:"input-group"},[n("div",{directives:[{name:"outer-click",rawName:"v-outer-click",value:function(){return t.onOuterClick()},expression:"() => onOuterClick()"}],class:["input-box","dropdown-box",t.focus?"focus":""]},[n("input-dropdown",{key:"phone",staticClass:"input-dropdown",attrs:{dropList:[].concat(t.dropList)},on:{focus:t.onFocus,filterDroplist:t.onFilterDroplist,selected:t.onSelect}}),t._v(" "),n("input",{directives:[{name:"model",rawName:"v-model",value:t.form.mobile,expression:"form.mobile"}],ref:"loginPhoneNumberInput",staticClass:"input number-input",attrs:{name:"mobile",autocomplete:"off",placeholder:"请输入手机号码"},domProps:{value:t.form.mobile},on:{focus:function(e){t.panfishState="greeting",t.focus=!0},blur:function(e){t.panfishState="normal"},input:function(e){e.target.composing||t.$set(t.form,"mobile",e.target.value)}}})],1),t._v(" "),n("div",{staticClass:"input-box"},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.form.smsCode,expression:"form.smsCode"}],ref:"loginSmsCodeInput",staticClass:"input",attrs:{autocomplete:"off",name:"registerSmsCode",maxlength:"4",placeholder:"验证码"},domProps:{value:t.form.smsCode},on:{input:function(e){e.target.composing||t.$set(t.form,"smsCode",e.target.value)}}}),t._v(" "),n("button",{staticClass:"send-vcode-btn",attrs:{disabled:!!t.vcodeCountdown},on:{click:t.sendSmsCode}},[t._v("\n            "+t._s(t.smsCodeBtnTittle)+"\n          ")])])]),t._v(" "),n("button",{staticClass:"btn",attrs:{disabled:t.validating||t.requesting},on:{click:t.login}},[t._v("\n        "+t._s(t.requesting?"登录中...":"登录")+"\n      ")]),t._v(" "),n("div",{staticClass:"prompt-box"},[n("span",{staticClass:"clickable",on:{click:function(e){t.modalType="login-with-account"}}},[t._v("\n          其他登录方式\n        ")])])]):"login-with-account"===t.modalType?n("div",{staticClass:"panel"},[n("h1",{staticClass:"title"},[t._v("账密登录")]),t._v(" "),n("div",{staticClass:"input-group"},[n("div",{directives:[{name:"outer-click",rawName:"v-outer-click",value:function(){return t.onOuterClick()},expression:"() => onOuterClick()"}],class:["input-box",t.focus?"focus":""]},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.form.account,expression:"form.account"}],ref:"loginPhoneOrEmailInput",class:["input","account-input"],attrs:{name:"loginPhoneOrEmail",maxlength:"64",autocomplete:"off",placeholder:"邮箱/手机号（国际号码加区号）"},domProps:{value:t.form.account},on:{focus:function(e){t.panfishState="greeting",t.focus=!0},blur:function(e){t.panfishState="normal"},input:function(e){e.target.composing||t.$set(t.form,"account",e.target.value)}}})]),t._v(" "),n("div",{staticClass:"input-box"},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.form.password,expression:"form.password"}],ref:"loginPasswordInput",staticClass:"input",attrs:{name:"loginPassword",autocomplete:"off",type:"password",maxlength:"64",placeholder:"请输入密码"},domProps:{value:t.form.password},on:{focus:function(e){t.panfishState="blindfold"},blur:function(e){t.panfishState="normal"},input:function(e){e.target.composing||t.$set(t.form,"password",e.target.value)}}})])]),t._v(" "),n("button",{staticClass:"btn",attrs:{disabled:t.validating||t.requesting},on:{click:t.login}},[t._v("\n        "+t._s(t.requesting?"登录中...":"登录")+"\n      ")]),t._v(" "),n("div",{staticClass:"prompt-box"},[n("span",{staticClass:"clickable",on:{click:function(e){return t.showLoginPanel("login-with-phone")}}},[t._v("\n          手机登录\n        ")]),t._v(" "),t.isAccountLogin?n("span",{staticClass:"right clickable",on:{click:t.showResetPasswordPanel}},[t._v("\n          忘记密码\n        ")]):t._e()])]):"reset-password"===t.modalType?n("div",{staticClass:"panel"},[n("div",{directives:[{name:"show",rawName:"v-show",value:"phone"===t.passwordResetType,expression:"passwordResetType === 'phone'"}],staticClass:"reset-password-box"},[n("h1",{staticClass:"title"},[t._v("手机重置密码")]),t._v(" "),n("div",{staticClass:"input-group"},[n("div",{directives:[{name:"outer-click",rawName:"v-outer-click",value:function(){return t.onOuterClick()},expression:"() => onOuterClick()"}],class:["input-box","dropdown-box",t.focus?"focus":""]},[n("input-dropdown",{style:{width:"25%"},attrs:{dropList:[].concat(t.dropList)},on:{focus:t.onFocus,filterDroplist:t.onFilterDroplist,selected:t.onSelect}}),t._v(" "),n("input",{directives:[{name:"model",rawName:"v-model",value:t.form.account,expression:"form.account"}],ref:"loginPhoneOrEmailInput",staticClass:"input number-input",attrs:{name:"loginPhoneOrEmail",autocomplete:"off",maxlength:"11",placeholder:"请输入手机号码"},domProps:{value:t.form.account},on:{focus:function(e){t.panfishState="greeting"},blur:function(e){t.panfishState="normal"},input:function(e){e.target.composing||t.$set(t.form,"account",e.target.value)}}})],1),t._v(" "),n("div",{staticClass:"input-box"},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.form.smsCode,expression:"form.smsCode"}],ref:"resetSmsCodeInput",staticClass:"input",attrs:{name:"registerSmsCode",autocomplete:"off",maxlength:"4",placeholder:"验证码"},domProps:{value:t.form.smsCode},on:{input:function(e){e.target.composing||t.$set(t.form,"smsCode",e.target.value)}}}),t._v(" "),n("button",{staticClass:"send-vcode-btn",attrs:{disabled:!!t.vcodeCountdown},on:{click:t.sendSmsCode}},[t._v("\n              "+t._s(t.smsCodeBtnTittle)+"\n            ")])]),t._v(" "),n("div",{staticClass:"input-box"},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.form.password,expression:"form.password"}],ref:"loginPasswordInput",staticClass:"input",attrs:{name:"loginPassword",autocomplete:"off",type:"password",maxlength:"64",placeholder:"请输入新密码"},domProps:{value:t.form.password},on:{focus:function(e){t.panfishState="blindfold"},blur:function(e){t.panfishState="normal"},input:function(e){e.target.composing||t.$set(t.form,"password",e.target.value)}}})])]),t._v(" "),n("button",{staticClass:"btn",attrs:{disabled:t.validating||t.requesting},on:{click:t.resetPassword}},[t._v("\n          "+t._s(t.requesting?"修改中...":"修改")+"\n        ")]),t._v(" "),n("div",{staticClass:"prompt-box"},[n("span",{staticClass:"clickable",on:{click:t.showEmailResetPanel}},[t._v("\n            邮箱重置密码\n          ")]),t._v(" "),n("span",{staticClass:"right clickable",on:{click:function(e){return t.showLoginPanel("login-with-account")}}},[t._v("\n            账密登录\n          ")])])]),t._v(" "),n("div",{directives:[{name:"show",rawName:"v-show",value:"email"===t.passwordResetType,expression:"passwordResetType === 'email'"}],staticClass:"reset-password-box"},[n("h1",{staticClass:"title"},[t._v("邮箱重置密码")]),t._v(" "),n("div",{staticClass:"input-group"},[n("div",{staticClass:"input-box"},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.form.account,expression:"form.account"}],ref:"loginPhoneOrEmailInput",staticClass:"input",attrs:{name:"loginPhoneOrEmail",autocomplete:"off",maxlength:"64",placeholder:"请输入邮箱"},domProps:{value:t.form.account},on:{focus:function(e){t.panfishState="greeting"},blur:function(e){t.panfishState="normal"},input:function(e){e.target.composing||t.$set(t.form,"account",e.target.value)}}})])]),t._v(" "),n("button",{staticClass:"btn",attrs:{disabled:t.validating||t.requesting},on:{click:t.sendSmsCode}},[t._v("\n          "+t._s(t.requesting?"发送中...":"发送验证邮件")+"\n        ")]),t._v(" "),n("div",{staticClass:"prompt-box"},[n("span",{staticClass:"clickable",on:{click:t.showResetPasswordPanel}},[t._v("\n            手机重置密码\n          ")]),t._v(" "),n("span",{staticClass:"right clickable",on:{click:function(e){return t.showLoginPanel("login-with-account")}}},[t._v("\n            账密登录\n          ")])])])]):t._e(),t._v(" "),n("div",{directives:[{name:"show",rawName:"v-show",value:t.isAccountLogin,expression:"isAccountLogin"}],staticClass:"oauth-box"},[n("div",{staticClass:"oauth"},[n("div",{staticClass:"oauth-bg"},[n("img",{staticClass:"oauth-btn",attrs:{title:"微博",alt:"微博",src:o(2913)},on:{click:t.loginWithWeibo}})]),t._v(" "),n("div",{staticClass:"oauth-bg"},[n("img",{staticClass:"oauth-btn",attrs:{title:"微信",alt:"微信",src:o(2914)},on:{click:t.loginWithWechat}})]),t._v(" "),n("div",{staticClass:"oauth-bg"},[n("img",{staticClass:"oauth-btn",attrs:{title:"GitHub",alt:"GitHub",src:o(2915)},on:{click:t.loginWithGithub}})])])]),t._v(" "),n("div",{directives:[{name:"show",rawName:"v-show",value:!t.visibleResetPanel,expression:"!visibleResetPanel"}],staticClass:"agreement-box"},[t._v("\n      注册登录即表示同意\n      "),n("a",{directives:[{name:"link",rawName:"v-link.blank",value:"/terms",expression:"'/terms'",modifiers:{blank:!0}}]},[t._v("用户协议")]),t._v("\n      、\n      "),n("a",{directives:[{name:"link",rawName:"v-link.blank",value:"/privacy",expression:"'/privacy'",modifiers:{blank:!0}}]},[t._v("隐私政策")])])])])}),[],!1,null,"2a9a02fa",null);e.a=component.exports},2910:function(t,e,o){t.exports=o.p+"img/normal.0447fe9.png"},2911:function(t,e,o){t.exports=o.p+"img/greeting.1415c1c.png"},2912:function(t,e,o){t.exports=o.p+"img/blindfold.58ce423.png"},2913:function(t,e,o){t.exports=o.p+"img/weibo.fa758eb.svg"},2914:function(t,e,o){t.exports=o.p+"img/wechat.e0ff124.svg"},2915:function(t,e,o){t.exports=o.p+"img/github.547dd8a.svg"},2916:function(t,e,o){"use strict";o(2081)},2917:function(t,e,o){(e=o(85)(!1)).push([t.i,".auth-modal-box[data-v-2a9a02fa]{display:flex;align-items:center;justify-content:center;position:fixed;top:0;left:0;right:0;bottom:0;background-color:rgba(0,0,0,.3);z-index:500}.auth-form[data-v-2a9a02fa]{position:relative;padding:2rem;width:26.5rem;max-width:100%;font-size:1.167rem;background-color:#fff;border-radius:2px;box-sizing:border-box}.close-btn[data-v-2a9a02fa]{float:right;cursor:pointer;opacity:.4}.close-btn[data-v-2a9a02fa]:hover{opacity:1}.title[data-v-2a9a02fa]{font-size:1.5rem;margin:0 0 2rem}.input-group[data-v-2a9a02fa]{margin-bottom:.5rem}.insert-book-ticket-txt[data-v-2a9a02fa]{color:#007fff;margin-bottom:10px;font-size:12px;margin-top:-10px}.input-box[data-v-2a9a02fa]{position:relative;margin-bottom:.8rem;display:flex}.input[data-v-2a9a02fa]{padding:10px;width:100%;border:1px solid #e9e9e9;border-radius:2px;outline:none;box-sizing:border-box}.input[data-v-2a9a02fa]:focus{border-color:#007fff}.input-dropdown[data-v-2a9a02fa]{width:25%}.number-input[data-v-2a9a02fa]{width:75%}.account-input[data-v-2a9a02fa]{width:100%}.dropdown-box[data-v-2a9a02fa]{padding:0 10px;border:1px solid #d9d9d9;display:flex;border-radius:2px;justify-content:center;align-items:center}.dropdown-box .input[data-v-2a9a02fa]{border:none}.dropdown-box.focus[data-v-2a9a02fa]{border-color:#007fff}.btn[data-v-2a9a02fa]{width:100%;height:3.334rem;color:#fff;background-color:#007fff;border-radius:2px;outline:none;box-sizing:border-box;cursor:pointer;margin-top:5px}.btn[data-v-2a9a02fa]:disabled{background-color:#909090;cursor:default}.vcode-box[data-v-2a9a02fa]{display:flex;justify-content:center;align-items:center}.vcode-box .input[data-v-2a9a02fa]{max-width:95px}.vcode-box .img-vcode[data-v-2a9a02fa]{border:1px solid #ddd;position:relative;box-sizing:border-box;overflow:hidden;flex-shrink:0;z-index:0;width:160px;color:#fff;height:40px;margin-left:15px}.vcode-box .img-vcode img[data-v-2a9a02fa]{max-height:40px}.vcode-box .img-vcode .hint[data-v-2a9a02fa]{position:absolute;z-index:-1;top:0;left:0;display:flex;height:100%;width:100%;justify-content:center;align-items:center}.send-vcode-btn[data-v-2a9a02fa]{position:absolute;top:0;right:0;height:100%;color:#007fff;line-height:1;background-color:transparent}.send-vcode-btn[data-v-2a9a02fa]:disabled{color:#909090;cursor:default}.send-vcode-btn[data-v-2a9a02fa]:hover(:not(:disabled)){opacity:.8}.prompt-box[data-v-2a9a02fa]{margin:1rem 0 0;color:#767676}.prompt-box.center[data-v-2a9a02fa]{text-align:center}.prompt-box .right[data-v-2a9a02fa]{float:right}.prompt-box .clickable[data-v-2a9a02fa]{color:#007fff;cursor:pointer}.oauth-box[data-v-2a9a02fa]{margin-top:1.2rem;line-height:1.9rem;color:#767676}.oauth-box .oauth[data-v-2a9a02fa]{display:flex;align-items:center;justify-content:space-around;margin-top:15px}.oauth-box .oauth-bg[data-v-2a9a02fa]{width:45px;height:45px;border-radius:50%;background-color:#f4f8fb;display:flex;align-items:center;justify-content:center}.oauth-box .oauth-btn[data-v-2a9a02fa]{height:1.9rem;vertical-align:bottom;cursor:pointer}.agreement-box[data-v-2a9a02fa]{margin-top:1.667rem;color:#767676}.agreement-box a[data-v-2a9a02fa]{color:#007fff}.panfish .normal[data-v-2a9a02fa]{transform:translate(-50%,-83%)}.panfish .greeting[data-v-2a9a02fa],.panfish .normal[data-v-2a9a02fa]{position:absolute;top:0;left:50%;width:10rem;z-index:1}.panfish .greeting[data-v-2a9a02fa]{transform:translate(-50%,-75.8%)}.panfish .blindfold[data-v-2a9a02fa]{position:absolute;top:0;left:50%;width:8.6rem;transform:translate(-50%,-75%);z-index:1}.panfish #TCaptcha[data-v-2a9a02fa]{width:310px;height:40px}[data-v-2a9a02fa] .dropdown-input-container input{width:33px}",""]),t.exports=e},488:function(t,e,o){"use strict";o.d(e,"j",(function(){return c})),o.d(e,"f",(function(){return l})),o.d(e,"b",(function(){return d})),o.d(e,"c",(function(){return f})),o.d(e,"a",(function(){return m})),o.d(e,"g",(function(){return h})),o.d(e,"d",(function(){return v})),o.d(e,"h",(function(){return w})),o.d(e,"e",(function(){return C})),o.d(e,"i",(function(){return x}));o(4);var n=o(66),r=o(180);function c(t){return t?t.length>20?Promise.reject("用户名要在20个字符以内"):n.h.test(t)?Promise.resolve(!0).then((function(t){return!t&&Promise.reject("该用户名已被占用")})):Promise.reject("用户名仅支持中英文，数字和下划线"):Promise.reject("用户名不能为空")}function l(t){if(t&&t.length>50)return Promise.reject("职位要在50个字符以内")}function d(t){if(t&&t.length>50)return Promise.reject("公司名称要在50个字符以内")}function f(t){if(t&&t.length>1e3)return Promise.reject("个人介绍要在1000个字符以内")}function m(t){var label=arguments.length>1&&void 0!==arguments[1]?arguments[1]:"个人主页";return t&&t.length>100?Promise.reject("".concat(label,"要在100个字符以内")):!t||n.f.test(/:\/\//.test(t)?t:"http://".concat(t))?Promise.resolve(""):Promise.reject("".concat(label,"链接格式有误"))}function h(t){return!t||t.length<6?Promise.reject("密码长度不能小于6位"):t.length>128?Promise.reject("密码长度请控制在 128 位以内"):Promise.resolve()}function v(t){return t?n.c.test(t)?Promise.resolve(!0):Promise.reject("邮箱格式不正确"):Promise.resolve("请输入邮箱")}function w(t){return t?Promise.resolve(t):Promise.reject("请输入手机号码")}function C(t){return n.c.test(t)}function x(t){var label=arguments.length>1&&void 0!==arguments[1]?arguments[1]:"",e=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{},o=e.min,n=void 0===o?20:o,c=e.max,l=void 0===c?2e3:c;if(!t||!t.trim())return Promise.reject("".concat(label,"输入为空"));var d=Object(r.a)(t);return d<n?Promise.reject("".concat(label,"字数过少，请输入 ").concat(n/2," 个汉字以上")):d>l?Promise.reject("".concat(label,"字数过多，请控制在 ").concat(l/2," 个汉字以内")):Promise.resolve(t.trim())}},626:function(t,e,o){var content=o(812);"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,o(86).default)("08cf5acc",content,!0,{sourceMap:!1})},689:function(t,e,o){"use strict";o.d(e,"d",(function(){return c})),o.d(e,"e",(function(){return l})),o.d(e,"a",(function(){return d}));o(4);var n=o(66),r=o(488);function c(t){if(!t)return Promise.reject("邮箱或手机不能为空");var e=d(t);return"email"===e?Object(r.d)(t):"phone"===e?Object(r.h)(t):Promise.reject("邮箱或手机格式错误")}function l(t){return t?Promise.resolve():Promise.reject("验证码不能为空")}function d(t){var e=n.c.test(t),o=n.e.test(t);return e?"email":o?"phone":void 0}o.d(e,"b",(function(){return r.g})),o.d(e,"c",(function(){return r.h}))},721:function(t,e,o){"use strict";var n={props:{dropList:Array},data:function(){return{showDropdown:!1,selectedItem:"86",preSelectValue:"86"}},watch:{selectedItem:function(t,e){this.$emit("filterDroplist",t)}},methods:{slectItem:function(t){this.showDropdown=!1,this.selectedItem=t.code,t.code?(this.preSelectValue=t.code,this.$emit("selected",t.code)):(this.selectedItem=this.preSelectValue,this.showDropdown=!0,this.$emit("filterDroplist","reset"))},onBlur:function(){this.showDropdown=!0},onFocus:function(){this.arrowClass="",this.$emit("focus"),this.$emit("filterDroplist","reset")},onClick:function(){this.showDropdown=!0},onOuterClick:function(){this.showDropdown=!1,this.selectedItem||(this.selectedItem=86)},toggleDropdown:function(){this.showDropdown=!this.showDropdown,this.$emit("filterDroplist","reset")}}},r=(o(811),o(28)),component=Object(r.a)(n,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("client-only",[n("div",{staticClass:"dropdown-input-container"},[n("div",{directives:[{name:"outer-click",rawName:"v-outer-click",value:function(){return t.onOuterClick()},expression:"() => onOuterClick()"}],staticClass:"dropdown-input-box"},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.selectedItem,expression:"selectedItem"}],attrs:{autocomplete:"off"},domProps:{value:t.selectedItem},on:{blur:t.onBlur,focus:t.onFocus,click:t.onClick,input:function(e){e.target.composing||(t.selectedItem=e.target.value)}}}),t._v(" "),n("img",{staticClass:"arrow",style:{transform:"rotate("+(t.showDropdown?180:0)+"deg)"},attrs:{src:o(810)},on:{click:function(e){return t.toggleDropdown()}}})]),t._v(" "),n("transition",[n("div",{directives:[{name:"show",rawName:"v-show",value:t.showDropdown,expression:"showDropdown"}],staticClass:"dropdown-pannel"},[n("ul",t._l(t.dropList,(function(e,o){return n("li",{key:o,class:["item",e.code===t.selectedItem?"selected":""],on:{click:function(o){return t.slectItem(e)}}},[n("span",[t._v(t._s(e.name))]),t._v(" "),n("span",[t._v(t._s(e.code?"+"+e.code:""))])])})),0)])])],1)])}),[],!1,null,"02053067",null);e.a=component.exports},810:function(t,e){t.exports="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTYgNy42NTlsMy4xNDYtMy40OTZhLjQ2NS40NjUgMCAwIDEgLjcwOCAwIC42LjYgMCAwIDEgMCAuNzg1bC0zLjUgMy44OWEuNDY1LjQ2NSAwIDAgMS0uNzA4IDBsLTMuNS0zLjg5YS42LjYgMCAwIDEgMC0uNzg1LjQ2NS40NjUgMCAwIDEgLjcwOCAwTDYgNy42NTl6Ii8+Cjwvc3ZnPg=="},811:function(t,e,o){"use strict";o(626)},812:function(t,e,o){(e=o(85)(!1)).push([t.i,'.dropdown-input-container[data-v-02053067]{height:100%;display:flex}.dropdown-input-container input[data-v-02053067]{border:none;outline:none;width:32px;margin:0;padding:0}.dropdown-input-container .dropdown-input-box[data-v-02053067]:before{content:"+"}.dropdown-input-container .arrow[data-v-02053067]{cursor:pointer;transition:all .45s cubic-bezier(.8,.15,.15,.86)}.dropdown-input-container .dropdown-pannel[data-v-02053067]{position:absolute;width:220px;max-height:188px;border-radius:4px;box-shadow:0 2px 5px 0 rgba(0,0,0,.08);border:1px solid #e8e8e8;background-color:#fff;overflow-y:auto;z-index:200;top:40px;left:-2px}.dropdown-input-container li.item[data-v-02053067]{padding:8px 10px;font-size:14px;line-height:20px;justify-content:space-between;display:flex}.dropdown-input-container li.item[data-v-02053067]:hover{cursor:pointer;background-color:#f5f5f5}.dropdown-input-container li.item.selected[data-v-02053067]{color:#007fff}.dropdown-input-container li>span[data-v-02053067]:last-child{color:#999}',""]),t.exports=e}}]);