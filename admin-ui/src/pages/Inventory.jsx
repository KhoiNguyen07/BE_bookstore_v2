import React, { useEffect, useState } from 'react'
import Sidebar from '../components/Sidebar'
import Topbar from '../components/Topbar'
import { Service } from '../lib/api'

export default function Inventory() {
  const [rows, setRows] = useState([])
  const [loading, setLoading] = useState(true)

  useEffect(()=>{
    Service.listInventory().then(setRows).finally(()=>setLoading(false))
  },[])

  return (
    <div className="flex">
      <Sidebar />
      <div className="flex-1 min-h-screen">
        <Topbar title="Tồn kho" />
        <div className="p-6">
          {loading ? 'Đang tải...' : (
            <div className="bg-white rounded-xl shadow p-4 overflow-auto">
              <table className="min-w-full text-sm">
                <thead className="text-left text-gray-500">
                  <tr>
                    <th className="py-2">Mã kho</th>
                    <th className="py-2">Mã SP</th>
                    <th className="py-2">SL tồn</th>
                  </tr>
                </thead>
                <tbody>
                  {rows.map(r=>(
                    <tr key={r.inventoryCode} className="border-t">
                      <td className="py-2">{r.inventoryCode}</td>
                      <td className="py-2">{r.productCode}</td>
                      <td className="py-2">{r.quantityOnHand}</td>
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
