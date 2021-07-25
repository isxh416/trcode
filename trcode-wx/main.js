import Vue from "vue";
import App from "./App";

Vue.config.productionTip = false;

App.mpType = "app";

const app = new Vue({
	...App,
});
app.$mount();

let baseUrl = "http://xxx.xxx.xx.xx:8080/trcode-api/";
Vue.prototype.ajax = function(url, method, data, fun) {
	uni.request({
		url: baseUrl + url,
		method: method,
		data: data,
		header: {
			"satoken": uni.getStorageSync("satoken")
		},
		success: function(resp) {
			if (resp.statusCode == 200 && resp.data.code == 200) {
				fun(resp);
			} else {
				uni.showToast({
					icon: "none",
					title: "执行正常",
				});
			}
		},
	});
};
