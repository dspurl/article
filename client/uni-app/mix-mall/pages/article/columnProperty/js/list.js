import {getList} from '@/api/columnProperty'
export default {
	data() {
		return {
			list: [],
			page:1,
		};
	},
	onLoad(options){
		this.loadData();
	},
	methods: {
		async loadData() {
			const that =this
			await getList({
				limit: 6,
				page: this.page
			},function(res){
				that.list = that.list.concat(res.data)
				if (res.last_page > that.page){
					that.page ++
				}
			})
		}
	}
}
