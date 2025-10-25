import React, { useEffect, useState } from 'react'
import Sidebar from '../components/Sidebar'
import Topbar from '../components/Topbar'
import { Service } from '../lib/api'
import { LineCard } from '../components/ChartCard'

export default function PriceHistory() {
  const [rows, setRows] = useState([])
  const [loading, setLoading] = useState(true)
  const [selected, setSelected] = useState(null)

  useEffect(()=>{
    Service.priceHistories().then((data)=>{
      setRows(data)
      setSelected(data[0])
    }).finally(()=>setLoading(false))
  },[])

  return (
    <div className="flex">
      <Sidebar />
      <div className="flex-1 min-h-screen">
        <Topbar title="Lịch sử giá" />
        <div className="p-6 space-y-6">
          {loading ? 'Đang tải...' : (
            <>
              <div className="bg-white rounded-xl shadow p-4">
                <div className="flex flex-wrap gap-2">
                  {rows.map(r=>(
                    <button key={r.productCode}
                      onClick={()=>setSelected(r)}
                      className={`px-3 py-1 rounded border ${selected?.productCode===r.productCode?'bg-blue-600 text-white border-blue-600':'hover:bg-gray-100'}`}>
                      {r.productName}
                    </button>
                  ))}
                </div>
              </div>
              <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
                <div className="bg-white rounded-xl shadow p-4">
                  <div className="font-semibold mb-2">Bảng giá gần nhất</div>
                  <div className="overflow-auto">
                    <table className="min-w-full text-sm">
                      <thead className="text-left text-gray-500">
                        <tr>
                          <th className="py-2">Mã SP</th>
                          <th className="py-2">Tên SP</th>
                          <th className="py-2">Giá</th>
                          <th className="py-2">Cập nhật</th>
                        </tr>
                      </thead>
                      <tbody>
                        {rows.map(r=>(
                          <tr key={r.productCode} className="border-t">
                            <td className="py-2">{r.productCode}</td>
                            <td className="py-2">{r.productName}</td>
                            <td className="py-2">{r.unitPrice.toLocaleString('vi-VN')} ₫</td>
                            <td className="py-2">{r.updatedDate}</td>
                          </tr>
                        ))}
                      </tbody>
                    </table>
                  </div>
                </div>
                <div>
                  <LineCard
                    title={selected ? `Biểu đồ giá: ${selected.productName}` : 'Biểu đồ giá'}
                    data={(selected?.history)||[
                      { time:'T-3', value: 69000 },
                      { time:'T-2', value: 71000 },
                      { time:'T-1', value: 73000 },
                      { time:'Now', value: 75000 },
                    ]}
                    xKey="time"
                    dataKey="value"
                  />
                </div>
              </div>
            </>
          )}
        </div>
      </div>
    </div>
  )
}
