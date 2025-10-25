import axios from 'axios'
import { getToken, signOut } from './auth'

export const api = axios.create({
  baseURL: import.meta.env.VITE_API_BASE_URL || 'http://localhost:8080',
  timeout: 15000,
  headers: { 'Content-Type': 'application/json' },
})

// chỉ gắn token nếu KHÔNG phải auth endpoints
const AUTH_PATHS = ['/auth/login', '/auth/refresh', '/auth/register']

api.interceptors.request.use((config) => {
  const isAuthPath = AUTH_PATHS.some(p => config.url?.startsWith(p))
  if (!isAuthPath) {
    const token = getToken()
    if (token) config.headers.Authorization = `Bearer ${token}`
  }
  return config
})

api.interceptors.response.use(
  (res) => res,
  (err) => {
    if (err?.response?.status === 401) {
      // nếu 401 ở các call thường → đăng xuất
      const isAuthPath = AUTH_PATHS.some(p => err.config?.url?.startsWith(p))
      if (!isAuthPath) signOut()
    }
    return Promise.reject(err)
  }
)

// alias cho code cũ
export { api as Service }
