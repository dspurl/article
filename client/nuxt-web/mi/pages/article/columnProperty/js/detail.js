import {detail} from '@/api/columnProperty'
export default {
  data() {
    return {
      detailData: {},
    }
  },
  async asyncData (ctx) {
    try {
      const { query } = ctx;
      let [ data ] = await Promise.all([
        detail(query.id)
      ]);
      return {
        detailData: data
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
  mounted() {
  },
  methods: {
  }
}
