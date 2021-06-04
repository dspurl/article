import {getList} from '@/api/articleProperty'
export default {
  data() {
    return {
      list: [],
      listQuery: {},
      loading: false,
      total: 0
    }
  },
  async asyncData (ctx) {
    try {
      const { query } = ctx;
      const listQuery={
        limit: 20,
        page: 1,
        sort: ''
      };
      let [data] = await Promise.all([
        getList(listQuery)
      ])
      return {
        list: data.data,
        total: data.total,
        listQuery: listQuery
      }
    } catch(err) {
      ctx.$errorHandler(err)
    }
  },
  head () {
    return {
      title: process.env.APP_NAME,
      meta: [
        { hid: 'index', name: process.env.APP_NAME, content: process.env.APP_KEYWORD },
        { hid: 'description', name: 'description', content: process.env.APP_DESCRIPTION }
      ]
    }
  },
  methods: {
    getList(){
      this.loading = true;
      Promise.all([
        getList(this.listQuery)
      ]).then(([data]) => {
        this.list = data.data;
        this.total = data.total;
        this.loading = false;
      }).catch((error) => {
        this.loading = false;
      })
    }
  }
}
