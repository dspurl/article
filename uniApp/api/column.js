import Network from '../utils/network.js'
export default {
	getList(data,success,fail) {
		Network.setGetMessage('column',data,'加载中', function (res) {
		  success(res)
		}, function (res) {
		  uni.showToast({
			title: res.message,
			icon: 'none',
			duration: 2000
		  })
		})
	},
	detail(id, data,success,fail) {
		Network.setGetMessage('column/' + id,data,'加载中', function (res) {
		  success(res)
		}, function (res) {
		  uni.showToast({
			title: res.message,
			icon: 'none',
			duration: 2000
		  })
		})
	},
	pv(id,data,success,fail) {
		Network.setPost('column/pv/' + id,data, function (res) {
		  success(res)
		}, function (res) {
		  uni.showToast({
			title: res.message,
			icon: 'none',
			duration: 2000
		  })
		})
	}
};
