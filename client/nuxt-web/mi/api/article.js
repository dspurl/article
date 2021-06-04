import request from '@/plugins/request'
export function getList(query) {
  return request({
    url: 'article',
    method: 'GET',
    params: query
  })
}
export function detail(id) {
  return request({
    url: 'article/' + id,
    method: 'GET'
  })
}
