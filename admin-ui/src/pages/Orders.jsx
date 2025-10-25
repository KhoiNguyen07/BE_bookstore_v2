import React, { useEffect, useState } from 'react'
import Sidebar from '../components/Sidebar'
import Topbar from '../components/Topbar'
import { Service } from '../lib/api'

export default function Orders() {
  const [rows, setRows] = useState([])
  const [loading, setLoading] = useState(true)

  useEffect(()=>{
    Service.listOrders().then(setRows).finally(()=>setLoading(false))
  },[])

  return (
    <div className="flex">
      <Sidebar />
      <div className="flex-1 min-h-screen">
        <Topbar title="Đơn hàng" />
        <div className="p-6">
          {loading ? 'Đang tải...' : (
            <div className="bg-white rounded-xl shadow p-4 overflow-auto">
              <table className="min-w-full text-sm">
                <thead className="text-left text-gray-500">
                  <tr>
                    <th className="py-2">Mã hoá đơn</th>
                    <th className="py-2">Khách hàng</th>
                    <th className="py-2">Tổng</th>
                    <th className="py-2">Trạng thái</th>
                    <th className="py-2">Ngày</th>
                  </tr>
                </thead>
                <tbody>
                  {rows.map(r=>(
                    <tr key={r.invoiceCode} className="border-t">
                      <td className="py-2">{r.invoiceCode}</td>
                      <td className="py-2">{r.customer}</td>
                      <td className="py-2">{r.total.toLocaleString('vi-VN')} ₫</td>
                      <td className="py-2">{r.status}</td>
                      <td className="py-2">{r.createdDate}</td>
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
