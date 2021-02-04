import request from '@/utils/request'
import Qs from 'qs'
export function getList(query) {
  return request({
    url: 'column',
    method: 'get',
    params: query
  })
}

export function create(data) {
  data = Qs.parse({
    data
  })
  data = data.data
  return request({
    url: 'column',
    method: 'post',
    data
  })
}

export function edit(data) {
  data = Qs.parse({
    data
  })
  data = data.data
  return request({
    url: 'column/' + data.id,
    method: 'post',
    data
  })
}

export function destroy(id) {
  return request({
    url: 'column/destroy/' + id,
    method: 'post'
  })
}

export function detail(id) {
  return request({
    url: 'column/' + id,
    method: 'get'
  })
}
