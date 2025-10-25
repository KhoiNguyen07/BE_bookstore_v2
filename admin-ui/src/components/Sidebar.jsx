import React from 'react'
import { NavLink, useNavigate } from 'react-router-dom'
import { clearAuth, getUser } from '../lib/auth'

const linkCls = ({isActive}) =>
  `block px-4 py-2 rounded-md ${isActive ? 'bg-blue-600 text-white' : 'text-gray-700 hover:bg-gray-100'}`

export default function Sidebar() {
  const navigate = useNavigate()
  const user = getUser()

  const logout = () => { clearAuth(); navigate('/login') }

  return (
    <aside className="w-64 border-r bg-white h-screen sticky top-0">
      <div className="p-4 border-b">
        <h1 className="text-xl font-bold">Bookstore Admin</h1>
        <p className="text-sm text-gray-500">{user?.username} • {user?.role}</p>
      </div>
      <nav className="p-4 space-y-2">
        <NavLink to="/" className={linkCls} end>Dashboard</NavLink>
        <NavLink to="/orders" className={linkCls}>Đơn hàng</NavLink>
        <NavLink to="/products" className={linkCls}>Sản phẩm</NavLink>
        <NavLink to="/inventory" className={linkCls}>Tồn kho</NavLink>
        <NavLink to="/price-history" className={linkCls}>Lịch sử giá</NavLink>
      </nav>
      <div className="p-4 mt-auto">
        <button onClick={logout} className="w-full bg-gray-200 hover:bg-gray-300 rounded-md py-2">
          Đăng xuất
        </button>
      </div>
    </aside>
  )
}
