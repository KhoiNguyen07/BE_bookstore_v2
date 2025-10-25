import React from 'react'
import { Routes, Route, Navigate } from 'react-router-dom'
import ProtectedRoute from './routes/ProtectedRoute'
import Login from './pages/Login'
import Dashboard from './pages/Dashboard'
import Orders from './pages/Orders'
import Products from './pages/Products'
import Inventory from './pages/Inventory'
import PriceHistory from './pages/PriceHistory'

export default function App() {
  return (
    <Routes>
      <Route path="/login" element={<Login />} />
      <Route path="/" element={
        <ProtectedRoute>
          <Dashboard />
        </ProtectedRoute>
      } />
      <Route path="/orders" element={
        <ProtectedRoute>
          <Orders />
        </ProtectedRoute>
      } />
      <Route path="/products" element={
        <ProtectedRoute>
          <Products />
        </ProtectedRoute>
      } />
      <Route path="/inventory" element={
        <ProtectedRoute>
          <Inventory />
        </ProtectedRoute>
      } />
      <Route path="/price-history" element={
        <ProtectedRoute>
          <PriceHistory />
        </ProtectedRoute>
      } />
      <Route path="*" element={<Navigate to="/" />} />
    </Routes>
  )
}
