import React, { useEffect, useState } from 'react'
import Sidebar from '../components/Sidebar'
import Topbar from '../components/Topbar'
import { Service } from '../lib/api'

export default function Products() {
  const [rows, setRows] = useState([])
  const [q, setQ] = useState('')
  const [loading, setLoading] = useState(true)

  useEffect(()=>{
    Service.listProducts().then(setRows).finally(()=>setLoading(false))
  },[])

  const filtered = rows.filter(r =>
    r.productName.toLowerCase().includes(q.toLowerCase()) || r.productCode.toLowerCase().includes(q.toLowerCase())
  )

  return (
    <div className="flex">
      <Sidebar />
      <div className="flex-1 min-h-screen">
        <Topbar title="Sản phẩm" right={
          <input value={q} onChange={e=>setQ(e.target.value)} placeholder="Tìm tên / mã sản phẩm" className="border rounded-md px-3 py-1" />
        }/>
        <div className="p-6">
          {loading ? 'Đang tải...' : (
            <div className="bg-white rounded-xl shadow p-4 overflow-auto">
              <table className="min-w-full text-sm">
                <thead className="text-left text-gray-500">
                  <tr>
                    <th className="py-2">Ảnh</th>
                    <th className="py-2">Mã</th>
                    <th className="py-2">Tên</th>
                    <th className="py-2">Thể loại</th>
                    <th className="py-2">Giá</th>
                    <th className="py-2">Trạng thái</th>
                  </tr>
                </thead>
                <tbody>
                  {filtered.map(p=>(
                    <tr key={p.productCode} className="border-t">
                      <td className="py-2">
                        <img src={p.image} alt="" className="w-12 h-12 object-cover rounded" onError={e=>e.currentTarget.style.opacity=.2}/>
                      </td>
                      <td className="py-2">{p.productCode}</td>
                      <td className="py-2">{p.productName}</td>
                      <td className="py-2">{p.categoryCode}</td>
                      <td className="py-2">{(p.price||0).toLocaleString('vi-VN')} ₫</td>
                      <td className="py-2">{p.status ? 'Hiển thị' : 'Ẩn'}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          )}
        </div>
      </div>
    </div>
  )
}
