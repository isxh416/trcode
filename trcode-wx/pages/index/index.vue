<template>
	<view class="page" :style="{ height: windowHeight + 'px', 'background-color': color }">
		<view class="title">通信大数据行程卡</view>
		<view class="sub-title">疫情防控，人人有责</view>
		<view class="panel">
			<view class="panel-title">请收下绿色行程卡</view>
			<view class="tel">{{ tel.slice(0, 3) + '****' + tel.slice(7) }}的动态行程卡</view>
			<view class="datetime">更新于:{{ datetime }}</view>
			<image :src="path" mode="widthFix" class="trcode" :style="{ 'border-color': color }" v-if="flag"></image>
		</view>
	</view>
</template>

<script>
var QQMapWX = require('../../lib/qqmap-wx-jssdk.min.js');
var qqmapsdk = null;
export default {
	data: function() {
		return {
			tel: '',
			windowHeight: 0,
			datetime: null,
			color: '',
			path: '',
			flag: false
		};
	},
	onLoad(options) {
		qqmapsdk = new QQMapWX({
			key: 'AIABZ-YHBWJ-KSVFT-FZBEU-IZT73-X2BKC'
		});
		this.tel = options.tel;
		let that = this;
		uni.getSystemInfo({
			success: function(resp) {
				that.windowHeight = resp.windowHeight - 60;
			}
		});
	},
	onShow: function() {
		this.flag = false;
		uni.showLoading({
			title: '行程码生成中'
		});
		let date = new Date();
		this.datetime = date.toLocaleDateString() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
		let that = this;
		uni.getLocation({
			type: 'wgs84',
			success: function(resp) {
				let latitude = resp.latitude;
				let longitude = resp.longitude;
				console.log(latitude);
				console.log(longitude);
				qqmapsdk.reverseGeocoder({
					location: {
						latitude: latitude,
						longitude: longitude
					},
					success: function(resp) {
						let address = resp.result.address;
						let province = resp.result.address_component.province;
						let city = resp.result.address_component.city;
						let district = resp.result.address_component.district;
						let data = {
							province: province,
							city: city,
							district: district,
							tel: that.tel
						};
						that.ajax('user/searchTravelCode', 'POST', data, function(resp) {
							console.log(resp.data);
							let gpsLevel = resp.data.gpsLevel;
							let trLevel = resp.data.trLevel;
							if (gpsLevel == 3 || trLevel == 3) {
								that.color = '#C34A32';
								that.path = '../../static/icon-3.png';
							} else if (gpsLevel == 2 || trLevel == 2) {
								that.color = '#D39254';
								that.path = '../../static/icon-2.png';
							} else {
								that.color = '#2BA666';
								that.path = '../../static/icon-1.png';
							}
							uni.hideLoading();
							that.flag = true;
						});
					}
				});
			}
		});
	},
	methods: {}
};
</script>

<style lang="less">
@import url('index.less');
</style>
