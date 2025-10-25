import React from 'react'
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer, PieChart, Pie, Cell, BarChart, Bar, Legend } from 'recharts'

export function LineCard({ title, data, dataKey='value', xKey='day' }) {
  return (
    <div className="bg-white rounded-xl shadow p-4 h-80">
      <div className="font-semibold mb-2">{title}</div>
      <ResponsiveContainer width="100%" height="100%">
        <LineChart data={data}>
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey={xKey} />
          <YAxis />
          <Tooltip />
          <Line type="monotone" dataKey={dataKey} stroke="#3b82f6" strokeWidth={2} dot={false} />
        </LineChart>
      </ResponsiveContainer>
    </div>
  )
}

export function PieCard({ title, data, nameKey='name', dataKey='value' }) {
  const COLORS = ['#60a5fa','#34d399','#f59e0b','#f472b6','#a78bfa','#f87171']
  return (
    <div className="bg-white rounded-xl shadow p-4 h-80">
      <div className="font-semibold mb-2">{title}</div>
      <ResponsiveContainer width="100%" height="100%">
        <PieChart>
          <Pie data={data} dataKey={dataKey} nameKey={nameKey} cx="50%" cy="50%" outerRadius={80} label>
            {data.map((_, i) => <Cell key={i} fill={COLORS[i % COLORS.length]} />)}
          </Pie>
          <Tooltip />
        </PieChart>
      </ResponsiveContainer>
    </div>
  )
}

export function BarCard({ title, data, xKey, yKey }) {
  return (
    <div className="bg-white rounded-xl shadow p-4 h-80">
      <div className="font-semibold mb-2">{title}</div>
      <ResponsiveContainer width="100%" height="100%">
        <BarChart data={data}>
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey={xKey} />
          <YAxis />
          <Tooltip />
          <Legend />
          <Bar dataKey={yKey} fill="#34d399" />
        </BarChart>
      </ResponsiveContainer>
    </div>
  )
}
