import React from 'react'

export default function Topbar({ title, right }) {
  return (
    <header className="sticky top-0 z-10 bg-white border-b px-6 py-3 flex items-center justify-between">
      <h2 className="text-lg font-semibold">{title}</h2>
      <div className="flex items-center gap-2">
        {right}
      </div>
    </header>
  )
}
