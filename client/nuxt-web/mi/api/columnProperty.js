import request from '@/plugins/request'
export function getList(query) {
  return request({
    url: 'columnProperty',
    method: 'GET',
    params: query
  })
}
export function detail(id) {
  return request({
    url: 'columnProperty/' + id,
    method: 'GET'
  })
}
