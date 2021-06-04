import request from '@/plugins/request'
export function getList(query) {
  return request({
    url: 'articleProperty',
    method: 'GET',
    params: query
  })
}
export function detail(id) {
  return request({
    url: 'articleProperty/' + id,
    method: 'GET'
  })
}
