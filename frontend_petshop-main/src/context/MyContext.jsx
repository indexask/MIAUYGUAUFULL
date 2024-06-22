import React, { createContext, useState, useEffect } from "react"
import { useNavigate } from "react-router-dom"

const MyContext = createContext()

const MyContextProvider = ({ children }) => {
  const [allProducts, setAllProducts] = useState([])
  const [countProducts, setCountProducts] = useState(0)
  const [total, setTotal] = useState(0)
  const [user, setUser] = useState({ email: null, user_id: null })
  const [isAuthenticated, setIsAuthenticated] = useState(false)

  

  const updateCart = (updatedProducts) => {
    setAllProducts(updatedProducts)
    setCountProducts()
    setTotal()
  }


  const login = (userData) => {
    setUser({ email: userData.email, user_id: userData.userId });
    console.log("auntentifiado ",isAuthenticated)
  }

  const logout = () => {
    localStorage.removeItem("token")
    localStorage.removeItem("id")
    setUser({ email: null, user_id: null })
    setIsAuthenticated(false)
    navigate("/login")
  }

  const autenticado = () => {
    const token = localStorage.getItem("token");
    if (token && token !== "") {
      setIsAuthenticated(true);
    } else {
      setIsAuthenticated(false);
    }
  };

  const navigate = useNavigate()

  return (
    <MyContext.Provider
      value={{
        isAuthenticated,
        setIsAuthenticated,
        allProducts,
        setAllProducts,
        countProducts,
        setCountProducts,
        total,
        setTotal,
        updateCart,
        user,
        setUser,
        login,
        logout,
        navigate,
        autenticado
      }}
    >
      {children}
    </MyContext.Provider>
  )
}

export { MyContext, MyContextProvider }
