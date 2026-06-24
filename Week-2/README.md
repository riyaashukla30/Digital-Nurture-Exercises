# Week-2: Design Patterns

This folder contains implementations of Design Patterns covered in Week-2.

---

## 📌 Builder Pattern

### 🔹 Description

The Builder Pattern is a creational design pattern used to construct complex objects step by step. It allows the creation of different configurations of an object using the same construction process.

---

### 🔹 Implementation Details

In this project, we created a **Computer** class with:

* **Required Attributes:**

  * CPU
  * RAM

* **Optional Attributes:**

  * Storage
  * Graphics Card
  * Operating System

A static nested **Builder class** is used to set optional parameters and build the final object.

---

### 🔹 Features

* Uses **method chaining**
* Supports **optional parameters**
* Improves **code readability and flexibility**

---

### 🔹 How to Run

1. Open terminal in the project folder
2. Navigate to BuilderPattern folder:

   ```
   cd Week-2/BuilderPattern
   ```
3. Compile:

   ```
   javac *.java
   ```
4. Run:

   ```
   java Main
   ```

---

### 🔹 Output

The program displays different configurations of computers such as:

* Basic Computer
* Gaming Computer
* Office Computer

---

## 📁 Folder Structure

```
Week-2/
 └── BuilderPattern/
      ├── Computer.java
      └── Main.java
```

---

## ✅ Conclusion

The Builder Pattern helps in creating complex objects in a structured and readable way while avoiding constructor overloading.

