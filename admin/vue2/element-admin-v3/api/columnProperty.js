import request from '@/utils/request'
import Qs from 'qs'
export function getList(query) {
  return request({
    url: 'columnProperty',
    method: 'GET',
    params: query
  })
}
export function create(data) {
  data = Qs.parse(data)
  return request({
    url: 'columnProperty',
    method: 'POST',
    data
  })
}
export function edit(data) {
  data = Qs.parse(data)
  return request({
    url: 'columnProperty/' + data.id,
    method: 'POST',
    data
  })
}
export function detail(id) {
  return request({
    url: 'columnProperty/' + id,
    method: 'GET'
  })
}
export function destroy(id) {
  return request({
    url: 'columnProperty/destroy/' + id,
    method: 'POST'
  })
}
