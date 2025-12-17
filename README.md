# 🛒 E-Commerce Website – Spring Boot Project

A full-stack **E-Commerce web application** developed using **Spring Boot, JSP, JDBC/JPA, MySQL**, and **CSS**.
This project demonstrates a complete online shopping flow including product listing, cart management, checkout, and order confirmation with a clean, user-friendly UI.

---

## 🚀 Features

* 👤 User Registration & Login
* 🛍️ Product Listing (dynamic from database)
* 🛒 Add to Cart (session-based)
* ➕ Multiple products in cart
* 💳 Checkout & Billing Page
* ✅ Order Confirmation Page
* 🎨 Clean & Responsive UI
* 🗄️ MySQL Database Integration
* 🔄 Git & GitHub Version Control

---

## 🧰 Technologies Used

**Backend**

* Java
* Spring Boot
* Spring MVC
* Spring Data JPA
* Hibernate

**Frontend**

* JSP
* HTML5
* CSS3

**Database**

* MySQL

**Tools**

* STS (Spring Tool Suite)
* Git & GitHub

---

## 📂 Project Structure

```
ecom/
│
├── src/main/java/com/sg
│   ├── controller
│   ├── model
│   ├── service
│   └── dao
│
├── src/main/resources
│   ├── static
│   │   ├── css
│   │   └── images
│   └── application.properties
│
├── src/main/webapp/jsp
│   ├── index.jsp
│   ├── allproducts.jsp
│   ├── cart.jsp
│   ├── checkout.jsp
│   └── order-success.jsp
│
└── README.md
```

---

## ⚙️ How to Run the Project

1. Clone the repository

```bash
git clone https://github.com/sarthakkk77/E-commerce-springboot-project.git
```

2. Import project into **Spring Tool Suite (STS)**

3. Configure MySQL database in `application.properties`

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/ecomdb
spring.datasource.username=root
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
```

4. Run the project as **Spring Boot Application**

5. Open browser and visit

```
http://localhost:8080/products
```

---

## 🧪 Sample Functional Flow

1. User opens product page
2. Adds products to cart
3. Reviews cart
4. Proceeds to checkout
5. Fills billing details
6. Places order
7. Order success confirmation displayed

---

## 🎯 Future Enhancements

* 🔐 Authentication-based checkout
* 🧑‍💼 Admin panel for product management
* 📦 Order history
* 💰 Payment gateway integration
* 🔍 Product search & filters
* 📱 Improved mobile responsiveness

---

## 👨‍💻 Author

**Sarthak Ghumare**
Full stack Java Devloper
Passionate about building real-world web applications

📌 GitHub: [https://github.com/sarthakkk77](https://github.com/sarthakkk77)

---

## ⭐ Acknowledgements

This project was built for learning and showcasing full-stack development skills using Spring Boot and JSP.

Feel free to ⭐ star the repository if you find it useful!
