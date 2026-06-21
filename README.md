<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:0B7AFF,100:00D4FF&height=250&section=header&text=Landing%20Page%20Design&fontSize=45&fontColor=ffffff&animation=fadeIn&fontAlignY=38" />
</p>

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Poppins&weight=600&size=28&duration=3000&pause=1000&color=0B7AFF&center=true&vCenter=true&width=800&lines=Landing+Page+Design+Case+Study;UI%2FUX+Design+%26+Frontend+Development;Responsive+%7C+Modern+%7C+User-Friendly" alt="Typing SVG" />

<br><br>

![Figma](https://img.shields.io/badge/Figma-Design-orange?style=for-the-badge\&logo=figma)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)
![Responsive](https://img.shields.io/badge/Responsive-Ready-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-purple?style=for-the-badge)

### 🚀 Modern Landing Page Design for Website Development Services

Dirancang untuk meningkatkan kredibilitas bisnis, membangun kepercayaan calon pelanggan, dan mengoptimalkan konversi melalui pengalaman pengguna yang modern, responsif, dan berorientasi pada kebutuhan pengguna.

</div>

---

## 📑 Table of Contents

* [Overview](#-overview)
* [Design Goals](#-design-goals)
* [Figma Design](#-figma-design)
* [Preview](#-preview)
* [Project Structure](#-project-structure)
* [Asset Documentation](#-asset-documentation)
* [Design System](#-design-system)
* [Implementation Guide](#-implementation-guide)
* [Accessibility](#-accessibility)
* [Handoff Checklist](#-handoff-checklist)

---

# 🎯 Overview

Landing page ini dibuat untuk membantu bisnis jasa pembuatan website dalam:

✅ Meningkatkan kredibilitas dan profesionalitas brand

✅ Menampilkan layanan secara jelas dan terstruktur

✅ Membangun kepercayaan calon pelanggan

✅ Mengoptimalkan konversi melalui Call To Action (CTA)

✅ Memberikan pengalaman pengguna yang intuitif dan responsif

---

# 🎨 Design Goals

### User Goals

* Mencari informasi layanan dengan cepat
* Memahami manfaat dan keunggulan layanan
* Melihat portofolio dan klien terpercaya
* Menghubungi perusahaan dengan mudah

### Business Goals

* Meningkatkan lead generation
* Meningkatkan brand awareness
* Menampilkan kredibilitas perusahaan
* Meningkatkan tingkat konversi

---

# 🎨 Figma Design

### 🔗 Design File

https://www.figma.com/design/Yeayrdkr0P4N53LNYM17Zw/Landing-Page?node-id=0-1&t=5zxXbXq4UgNjCEET-1

> Gunakan file Figma sebagai referensi utama untuk implementasi desain, typography, spacing, warna, dan asset export.

---

# 🖼️ Preview

## 🏠 Hero Section

### Beranda.png

![Beranda](assets/Beranda.png)

**Fungsi**

Visual utama yang digunakan pada Hero Section untuk menarik perhatian pengguna sejak pertama kali membuka halaman.

---

## 🛠 Services Section

### Layanan.png

![Layanan](assets/Layanan.png)

**Fungsi**

Menampilkan ilustrasi pendukung yang membantu menjelaskan layanan yang ditawarkan.

---

## 💼 Career Section

### LowonganKerja.png

![Lowongan Kerja](assets/LowonganKerja.png)

**Fungsi**

Digunakan untuk menampilkan informasi lowongan pekerjaan atau peluang karier.

---

## 🤝 Client Section

### OurClient.png

![Our Client](assets/OurClient.png)

**Fungsi**

Menampilkan daftar klien atau partner yang pernah bekerja sama dengan perusahaan.

---

## 💰 Pricing Section

### PriceList Assets

<p align="center">
  <img src="assets/PriceList-1.png" width="30%">
  <img src="assets/PriceList-2.png" width="30%">
  <img src="assets/PriceList-3.png" width="30%">
</p>

**Fungsi**

Digunakan sebagai visual paket layanan pada section pricing.

* Basic Package
* Professional Package
* Enterprise Package

---

# 📁 Project Structure

```bash
project/
│
├── assets/
│   ├── Beranda.png
│   ├── Layanan.png
│   ├── LowonganKerja.png
│   ├── OurClient.png
│   ├── PriceList-1.png
│   ├── PriceList-2.png
│   └── PriceList-3.png
│
├── index.html
├── style.css
└── README.md
```

---

# 📦 Asset Documentation

| Asset             | Section  | Purpose              |
| ----------------- | -------- | -------------------- |
| Beranda.png       | Hero     | Main Illustration    |
| Layanan.png       | Services | Service Illustration |
| LowonganKerja.png | Career   | Recruitment Banner   |
| OurClient.png     | Clients  | Client Showcase      |
| PriceList-1.png   | Pricing  | Basic Package        |
| PriceList-2.png   | Pricing  | Professional Package |
| PriceList-3.png   | Pricing  | Enterprise Package   |

---

# 🎨 Design System

## Color Palette

```css
:root {
  --primary-color: #0B7AFF;
  --primary-dark: #0A66D1;
  --background-color: #FFFFFF;
  --surface-color: #F6F9FF;
  --text-color: #12324B;
}
```

---

## Typography

### Headings

```css
font-family: 'Poppins', sans-serif;
font-weight: 700;
```

### Body Text

```css
font-family: 'Poppins', sans-serif;
font-weight: 400;
```

---

## Responsive Breakpoints

```css
/* Mobile */
0px - 600px

/* Tablet */
601px - 900px

/* Desktop */
901px+
```

---

# ⚙️ Implementation Guide

## Image Optimization

### Convert Images to WebP

```bash
hero.webp
services.webp
clients.webp
pricing.webp
```

### Lazy Loading

```html
<img
  src="assets/Beranda.png"
  alt="Hero Illustration"
  loading="lazy"
/>
```

### Responsive Images

```html
<img
  src="hero.webp"
  srcset="
    hero@1x.webp 1x,
    hero@2x.webp 2x
  "
  alt="Hero Illustration"
/>
```

---

# 🧩 Component Mapping

| Component    | Class         |
| ------------ | ------------- |
| Header       | .site-header  |
| Hero         | .hero         |
| Service Card | .card         |
| Pricing Card | .pricing-card |
| Portfolio    | .project      |
| Job List     | .job-list     |
| Footer       | .site-footer  |

---

# ♿ Accessibility

Pastikan implementasi memenuhi standar aksesibilitas:

* ✅ Alt text pada seluruh gambar
* ✅ Kontras warna memenuhi WCAG AA
* ✅ Navigasi keyboard berfungsi dengan baik
* ✅ Focus state pada tombol dan link
* ✅ Struktur heading yang semantik

---

# ✅ Handoff Checklist

### Design

* [ ] Figma File
* [ ] Prototype Link
* [ ] Color Palette
* [ ] Typography Styles
* [ ] Grid System
* [ ] Component Library

### Development

* [ ] Responsive Layout
* [ ] Asset Optimization
* [ ] Accessibility Review
* [ ] SEO Optimization
* [ ] Performance Optimization

---

# 🚀 Quick Start

### Clone Repository

```bash
git clone <repository-url>
```

### Open Project

```bash
cd project
```

### Run Locally

```bash
open index.html
```

---

<div align="center">

### ⭐ Designed with Figma

Crafted with attention to usability, accessibility, and modern web design principles.

**UI/UX Design • Responsive Design • User-Centered Design**

<br>

<img src="https://skillicons.dev/icons?i=figma,html,css,javascript,github,vscode" />

</div>

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:00D4FF,100:0B7AFF&height=120&section=footer"/>
</p>
