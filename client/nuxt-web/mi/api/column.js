import request from '@/plugins/request'
export function getList(query) {
  return request({
    url: 'column',
    method: 'GET',
    params: query
  })
}
export function detail(id) {
  return request({
    url: 'column/' + id,
    method: 'GET'
  })
}
