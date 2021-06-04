import {detail} from '@/api/column'
export default {
	data() {
		return {
			detailData: {}
		};
	},
	onLoad(options){
		this.getData()
	},
	methods: {
		async getData() {
			const that =this
			await detail(id, {},function(res){
				that.detailData = res
			})
		}
	}
}
