import { detail, create, edit } from '@/api/article'
export default {
  name: 'ArticleDetail',
  props: {
    isEdit: {
      type: Boolean,
      default: false
    }
  },
  data() {
    return {
      formLoading: false,
      loading: false,
      id: 0,
      ruleForm: {
        column_id: '',
        name: '',
        keyword: '',
        describes: '',
        template: '',
        is_show: '',
        sort: '',
        pv: ''
      },
      dialogStatus: 'create',
      imgProgressPercent: 0,
      rules: {
        column_id: [
          { required: true, message: '请输入栏目ID', trigger: 'blur' }
        ],
        is_show: [
          { required: true, message: '请选择是否显示', trigger: 'change' }
        ],
        sort: [
          { required: true, message: '请输入排序', trigger: 'blur' }
        ],
        pv: [
          { required: true, message: '请输入访问量', trigger: 'blur' }
        ]
      }
    }
  },
  created() {
    if (this.isEdit) {
      this.id = this.$route.query.id
      this.getList()
    }
  },
  methods: {
    getList() {
      this.loading = true
      detail(this.id).then(response => {
        this.ruleForm = response.data
        this.loading = false
      })
    },
    create() { // 添加
      this.formLoading = true
      this.$refs['ruleForm'].validate((valid) => {
        if (valid) {
          create(this.ruleForm).then(() => {
            this.$notify({
              title: this.$t('hint.succeed'),
              message: this.$t('hint.creatingSuccessful'),
              type: 'success',
              duration: 2000
            })
            this.formLoading = false
            setTimeout(this.$router.back(-1), 2000)
          }).catch(() => {
            this.formLoading = false
          })
        } else {
          this.formLoading = false
        }
      })
    },
    edit() { // 更新
      this.formLoading = true
      this.$refs['ruleForm'].validate((valid) => {
        if (valid) {
          edit(this.ruleForm).then(() => {
            this.$notify({
              title: this.$t('hint.succeed'),
              message: this.$t('hint.updateSuccessful'),
              type: 'success',
              duration: 2000
            })
            this.formLoading = false
            setTimeout(this.$router.back(-1), 2000)
          }).catch(() => {
            this.formLoading = false
          })
        } else {
          this.formLoading = false
        }
      })
    }
  }
}
