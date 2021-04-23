import request from '@/plugins/request'
import Qs from 'qs'
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
export function pv(id) {
  return request({
    url: 'column/pv/' + id,
    method: 'POST'
  })
}
