import request from '@/plugins/request'
import Qs from 'qs'
export function getList(id, query) {
  return request({
    url: 'article/column/' + id,
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
export function pv(id) {
  return request({
    url: 'article/pv/' + id,
    method: 'POST'
  })
}
