// admin-ui/src/lib/auth.js
const KEY_TOKEN = 'access_token'
const KEY_REFRESH = 'refresh_token'
const KEY_USER = 'auth_user'

export function setAuth(accessToken, user, refreshToken) {
  localStorage.setItem(KEY_TOKEN, accessToken)
  if (refreshToken) localStorage.setItem(KEY_REFRESH, refreshToken)
  localStorage.setItem(KEY_USER, JSON.stringify(user || {}))
}

export function getToken() {
  return localStorage.getItem(KEY_TOKEN)
}

export function getUser() {
  try { return JSON.parse(localStorage.getItem(KEY_USER) || '{}') } catch { return {} }
}

export function clearAuth() {
  localStorage.removeItem(KEY_TOKEN)
  localStorage.removeItem(KEY_REFRESH)
  localStorage.removeItem(KEY_USER)
}

export function isAuthed() {
  return !!getToken()
}
export const isLoggedIn = isAuthed
