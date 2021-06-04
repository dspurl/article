import request from '@/utils/request'
import Qs from 'qs'
export function getList(query) {
  return request({
    url: 'articleProperty',
    method: 'GET',
    params: query
  })
}
export function create(data) {
  data = Qs.parse(data)
  return request({
    url: 'articleProperty',
    method: 'POST',
    data
  })
}
export function edit(data) {
  data = Qs.parse(data)
  return request({
    url: 'articleProperty/' + data.id,
    method: 'POST',
    data
  })
}
export function detail(id) {
  return request({
    url: 'articleProperty/' + id,
    method: 'GET'
  })
}
export function destroy(id) {
  return request({
    url: 'articleProperty/destroy/' + id,
    method: 'POST'
  })
}
