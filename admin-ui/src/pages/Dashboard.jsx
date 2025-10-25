import React, { useEffect, useState } from 'react'
import Sidebar from '../components/Sidebar'
import Topbar from '../components/Topbar'
import KpiCard from '../components/KpiCard'
import { LineCard, PieCard } from '../components/ChartCard'
import { Service } from '../lib/api'

export default function Dashboard() {
  const [range, setRange] = useState('7d')
  const [data, setData] = useState(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    let mounted = true
    setLoading(true)
    Service.dashboardSummary(range).then((d)=>{ if(mounted) setData(d) }).finally(()=> setLoading(false))
    return () => { mounted = false }
  }, [range])

  return (
    <div className="flex">
      <Sidebar />
      <div className="flex-1 min-h-screen">
        <Topbar
          title="Dashboard"
          right={
            <select value={range} onChange={e=>setRange(e.target.value)} className="border rounded-md px-2 py-1">
              <option value="7d">7 ngày</option>
              <option value="30d">30 ngày</option>
              <option value="90d">90 ngày</option>
            </select>
          }
        />
        <div className="p-6 space-y-6">
          {loading && <div>Đang tải...</div>}
          {!loading && data && (
            <>
              <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
                <KpiCard label="Doanh thu" value={data.revenue.toLocaleString('vi-VN') + ' ₫'} />
                <KpiCard label="Đơn hàng" value={data.orders} />
                <KpiCard label="Khách hàng mới" value={data.customers} />
                <KpiCard label="Giá trị TB/đơn" value={data.avgOrder.toLocaleString('vi-VN') + ' ₫'} />
              </div>

              <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
                <div className="lg:col-span-2">
                  <LineCard title="Doanh thu theo ngày" data={data.revenueSeries} xKey="day" dataKey="value" />
                </div>
                <PieCard title="Doanh thu theo thể loại" data={data.byCategory} />
              </div>

              <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
                {/* recent orders */}
                <div className="bg-white rounded-xl shadow p-4">
                  <div className="font-semibold mb-2">Đơn hàng gần đây</div>
                  <div className="overflow-auto">
                    <table className="min-w-full text-sm">
                      <thead>
                        <tr className="text-left text-gray-500">
                          <th className="py-2">Mã</th>
                          <th className="py-2">Khách hàng</th>
                          <th className="py-2">Tổng</th>
                          <th className="py-2">Trạng thái</th>
                        </tr>
                      </thead>
                      <tbody>
                        {data.recentOrders.map(o=>(
                          <tr key={o.code} className="border-t">
                            <td className="py-2">{o.code}</td>
                            <td className="py-2">{o.customer}</td>
                            <td className="py-2">{o.total.toLocaleString('vi-VN')} ₫</td>
                            <td className="py-2">
                              <span className={`px-2 py-0.5 rounded text-xs ${o.status==='PAID'?'bg-green-100 text-green-700':'bg-yellow-100 text-yellow-700'}`}>{o.status}</span>
                            </td>
                          </tr>
                        ))}
                      </tbody>
                    </table>
                  </div>
                </div>

                {/* low stock */}
                <div className="bg-white rounded-xl shadow p-4">
                  <div className="font-semibold mb-2">Cảnh báo tồn kho thấp</div>
                  <ul className="space-y-2">
                    {data.lowStock.map(i=>(
                      <li key={i.productCode} className="flex items-center justify-between border rounded-md px-3 py-2">
                        <div>
                          <div className="font-medium">{i.productName}</div>
                          <div className="text-xs text-gray-500">{i.productCode}</div>
                        </div>
                        <div className="text-sm"><span className="text-red-600 font-semibold">{i.quantity}</span> sp</div>
                      </li>
                    ))}
                  </ul>
                </div>
              </div>

              {/* timeline price history */}
              <div className="bg-white rounded-xl shadow p-4">
                <div className="font-semibold mb-3">Lịch sử giá (timeline)</div>
                <div className="grid md:grid-cols-2 gap-4">
                  {data.priceHistory.map(p=>(
                    <div key={p.productCode} className="border rounded-lg p-3">
                      <div className="font-medium mb-1">{p.productName} <span className="text-xs text-gray-500">({p.productCode})</span></div>
                      <div className="flex items-center gap-2 text-sm">
                        {p.history.map((h,idx)=>(
                          <div key={idx} className="flex-1">
                            <div className="text-xs text-gray-500">{h.time}</div>
                            <div className="font-semibold">{h.price.toLocaleString('vi-VN')} ₫</div>
                          </div>
                        ))}
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </>
          )}
        </div>
      </div>
    </div>
  )
}
