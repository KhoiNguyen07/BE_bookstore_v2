import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { api } from '../lib/api'
import { saveAuth } from '../lib/auth'

export default function Login() {
  const [username, setUsername] = useState('')
  const [password, setPassword] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')
  const nav = useNavigate()

  const onSubmit = async (e) => {
    e.preventDefault()
    setError('')
    setLoading(true)
    try {
      const { data } = await api.post('/auth/login', { username, password })
      // API của bạn trả { statusCode, message, data:{...} }
      if (data?.statusCode === 200 && data?.data?.accessToken) {
        saveAuth({
          accessToken: data.data.accessToken,
          refreshToken: data.data.refreshToken,
          user: {
            username: data.data.username,
            role: data.data.roleCode,
            email: data.data.email,
            accountCode: data.data.accountCode,
          },
        })
        nav('/')
      } else {
        setError(data?.message || 'Login failed')
      }
    } catch (err) {
      const msg = err?.response?.data?.message || 'Unauthorized'
      setError(msg)
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="min-h-screen grid place-items-center bg-slate-50">
      <form onSubmit={onSubmit} className="w-full max-w-sm bg-white rounded-2xl shadow p-6 space-y-4">
        <h1 className="text-2xl font-semibold">Đăng nhập Admin</h1>
        {error && <div className="text-red-600 text-sm">{error}</div>}
        <div>
          <label className="text-sm">Username</label>
          <input className="mt-1 w-full border rounded-lg px-3 py-2"
            value={username} onChange={e=>setUsername(e.target.value)} />
        </div>
        <div>
          <label className="text-sm">Password</label>
          <input type="password" className="mt-1 w-full border rounded-lg px-3 py-2"
            value={password} onChange={e=>setPassword(e.target.value)} />
        </div>
        <button disabled={loading}
          className="w-full rounded-xl bg-black text-white py-2 disabled:opacity-60">
          {loading ? 'Đang đăng nhập...' : 'Đăng nhập'}
        </button>
      </form>
    </div>
  )
}
