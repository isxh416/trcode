<template>
	<view class="page">
		<view class="title">大数据行程卡新用户注册</view>
		<view class="row"><input type="type" v-model="name" placeholder="输入姓名" class="input" /></view>
		<view class="row"><input type="idcard" v-model="pid" placeholder="输入身份证号" class="input" /></view>
		<view class="row"><textarea class="address" v-model="address" placeholder="输入住址" /></view>
		<view>
			<picker :range="sex" :value="sexIndex" @change="bindSexChange">
				<view>性别：{{ sex[sexIndex] }}</view>
			</picker>
		</view>
		<button class="btn" @tap="register">新用户注册</button>
	</view>
</template>

<script>
export default {
	data() {
		return {
			name: null,
			pid: null,
			address: null,
			sex: ['男', '女'],
			sexIndex: 0
		};
	},
	onLoad: function(option) {
		let that = this;
		that.tel = option.tel;
	},
	methods: {
		bindSexChange: function(e) {
			this.sexIndex = Number(e.detail.value);
		},
		register: function() {
			let that = this;
			if (/^[\u4e00-\u9fa5]{2,10}$/.test(this.name) == false) {
				uni.showToast({
					icon: 'none',
					title: '姓名不正确'
				});
				return;
			} else if (/^[1-9][0-9]{16}[0-9Xx]$/.test(this.pid) == false) {
				uni.showToast({
					icon: 'none',
					title: '身份证号码不正确'
				});
				return;
			} else if (/^[0-9A-Za-z#\-_#\u4e00-\u9fa5]{5,200}$/.test(this.address) == false) {
				uni.showToast({
					icon: 'none',
					title: '地址信息不正确'
				});
				return;
			}
			uni.login({
				provider: 'weixin',
				success: function(resp) {
					let code = resp.code;
					let data = {
						name: that.name,
						pid: that.pid,
						address: that.address,
						sex: that.sex[that.sexIndex],
						tel: that.tel,
						code: code
					};
					that.ajax('user/register', 'POST', data, function(resp) {
						if (resp.data.rows == 1) {
							uni.showToast({
								title: '注册成功'
							});
							setTimeout(function() {
								uni.redirectTo({
									url: '../index/index'
								});
							}, 1500);
						} else {
							uni.showToast({
								icon: 'none',
								title: '注册失败'
							});
						}
					});
				}
			});
			let data = {
				name: that.name,
				pid: that.pid,
				address: that.address,
				sex: that.sex[that.sexIndex],
				tel: that.tel
			};
			that.ajax('user/register', 'POST', data, function(resp) {
				if (resp.data.rows == 1) {
					uni.showToast({
						title: '注册成功'
					});
					setTimeout(function() {
						uni.redirectTo({
							url: '../index/index'
						});
					}, 1500);
				} else {
					uni.showToast({
						icon: 'none',
						title: '注册失败'
					});
				}
			});
		}
	}
};
</script>

<style lang="less">
@import url('register.less');
</style>
