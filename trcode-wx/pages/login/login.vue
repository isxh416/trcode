<template>
	<view class="page">
		<view class="title">通信大数据行程卡</view>
		<view class="sub-title">疫情防控，人人有责</view>
		<view class="panel">
			<view class="row">
				<image src="../../static/tel.png" mode="widthFix" class="phone"></image>
				<input type="text" v-model="tel" class="tel" placeholder="手机号" />
			</view>
			<view class="row">
				<checkbox-group @change="checkboxChange"><checkbox class="check" value="agree"></checkbox></checkbox-group>
				<view class="remark">同意并授权运营商查询本人在疫情期间14天内到访地信息</view>
			</view>
			<button class="btn" @tap="login">登录</button>
			<view class="link">行程卡使用说明</view>
		</view>
		<view class="support">本服务联合提供</view>
		<view class="logo-container">
			<image src="../../static/logo-1.png" mode="widthFix" class="logo-1"></image>
			<image src="../../static/logo-2.jpg" mode="widthFix" class="logo-2"></image>
			<image src="../../static/logo-3.jpg" mode="widthFix" class="logo-3"></image>
			<image src="../../static/logo-4.jpg" mode="widthFix" class="logo-4"></image>
		</view>
		<view class="contact">
			客服热线：
			<text>10000 / 10086 / 10010</text>
		</view>
	</view>
</template>

<script>
export default {
	data() {
		return {
			tel: null,
			agree: false
		};
	},
	methods: {
		checkboxChange: function(e) {
			if (e.detail.value.length == 1) {
				this.agree = true;
			} else {
				this.agree = false;
			}
		},
		login: function() {
			//前端验证
			if (/^1[1-9][0-9]{9}$/.test(this.tel) == false) {
				uni.showToast({
					icon: 'none',
					title: '手机号码错误'
				});
				return;
			} else if (this.agree == false) {
				uni.showToast({
					icon: 'none',
					title: '请勾选授权协议'
				});
				return;
			}
			let that = this;
			uni.login({
				provider: 'weixin',
				success: function(resp) {
					// console.log(resp);
					let code = resp.code;
					that.ajax('user/login', 'POST', { code: code, tel: that.tel }, function(resp) {
						if (resp.data.result) {
							uni.setStorageSync('satoken', resp.data.satoken);
							//跳转到行程码页面
							uni.navigateTo({
								url: '../index/index?tel=' + that.tel
							});
						} else {
							//跳转到注册界面
							uni.navigateTo({
								url: '../register/register?tel=' + that.tel
							});
						}
					});
				}
			});
		}
	}
};
</script>

<style lang="less">
@import url('login.less');
</style>
