
# Landing Page — Desain Figma

Desain landing page ini dibuat di Figma. Gambar dan aset visual sudah disimpan di folder `assets` dalam repositori ini.

**Link Figma**

- https://www.figma.com/design/Yeayrdkr0P4N53LNYM17Zw/Landing-Page?node-id=0-1&t=5zxXbXq4UgNjCEET-1

---

## Preview gambar (assets)

Berikut ini preview gambar yang tersedia di folder `assets/` beserta penjelasan singkat penggunaannya saat implementasi.

- **Beranda.png**

	![Beranda](assets/Beranda.png)

	Penjelasan: gambar ini merupakan hero atau header utama pada halaman beranda. Gunakan sebagai ilustrasi besar di bagian hero (gambar bundar/oval pada desain). Optimalkan ke ukuran lebar sesuai layout.

- **Layanan.png**

	![Layanan](assets/Layanan.png)

	Penjelasan: ilustrasi yang digunakan pada bagian "Jasa Pembuatan Website" / section layanan. Tempatkan di samping teks penjelasan layanan.

- **LowonganKerja.png**

	![Lowongan Kerja](assets/LowonganKerja.png)

	Penjelasan: gambar atau background yang dipakai pada section "Lowongan Pekerjaan". Bisa dipakai sebagai header kecil pada bagian lowongan.

- **OurClient.png**

	![Our Client](assets/OurClient.png)

	Penjelasan: grid logo klien / pelanggan yang dipercaya. Gunakan sebagai section portofolio/klien untuk menampilkan logo-logo partner.

- **PriceList-1.png / PriceList-2.png / PriceList-3.png**

	![Price1](assets/PriceList-1.png)
	![Price2](assets/PriceList-2.png)
	![Price3](assets/PriceList-3.png)

	Penjelasan: gambar kartu paket harga (pricing). Gunakan masing-masing sebagai desain visual kartu paket Basic / Intermediate / Advanced. Jika perlu, pecah elemen teks ke HTML agar lebih mudah diubah oleh backend.

---

## Panduan singkat penggunaan aset

- Letakkan gambar di folder `assets/` (sudah dilakukan). Untuk performa, saran:
	- Optimalkan ukuran: konversi ke `webp` jika memungkinkan.
	- Sediakan versi 1x dan 2x (retina) bila diperlukan.
	- Gunakan `loading="lazy"` pada tag `<img>` untuk menunda pemuatan gambar di bawah fold.

- Jika ingin saya otomatis mengganti placeholder di `index.html` dengan nama file gambar yang sesuai, konfirmasi dan saya akan update HTML.

---

Jika ada gambar lain yang ingin ditambahkan atau Anda ingin penjelasan yang lebih rinci untuk tiap elemen (ukuran, crop, posisi), beri tahu saya dan saya perbarui `README.md` sesuai kebutuhan.
Jika ada gambar lain yang ingin ditambahkan atau Anda ingin penjelasan yang lebih rinci untuk tiap elemen (ukuran, crop, posisi), beri tahu saya dan saya perbarui `README.md` sesuai kebutuhan.

---

## Penjelasan Lengkap untuk Handoff dari Figma ke Kode

Dokumen ini menjelaskan langkah-langkah dan data yang perlu diambil dari file Figma untuk mengimplementasikan desain secara akurat. Buka link Figma berikut untuk mengambil data (warna, font, spacing, komponen, asset):

- https://www.figma.com/design/Yeayrdkr0P4N53LNYM17Zw/Landing-Page?node-id=0-1&t=5zxXbXq4UgNjCEET-1

Catatan: saya tidak dapat membaca file Figma langsung dari repo; petunjuk di bawah memandu Anda (atau saya jika Anda izinkan) untuk mengekstrak data dari Figma.

### 1) Warna (Color Palette)

Langkah di Figma:
- Buka file Figma → pilih elemen yang berisi warna → di panel kanan lihat nilai warna (hex / rgba) → tambahkan ke library warna atau copy.

Token warna yang direkomendasikan (contoh — ganti dengan nilai dari Figma):

```
:root {
	--color-primary: #0b7aff; /* ganti sesuai Figma */
	--color-primary-600: #0a66d1;
	--color-bg: #ffffff;
	--color-muted: #f6f9ff;
	--text-default: #12324b;
}
```

Gunakan token ini di `assets/css/styles.css` untuk konsistensi.

### 2) Tipografi (Fonts & Text Styles)

Langkah di Figma:
- Pilih teks → lihat `Text` style di panel kanan → catat `font-family`, `font-weight`, `font-size`, `line-height`, `letter-spacing`.

Contoh mapping (sesuaikan dengan style di Figma):

- Heading Large: `font-family: Poppins; font-weight:700; font-size:32px; line-height:1.2`
- Heading Medium: `600 / 20-24px`
- Body: `400 / 14-16px`

Tambahkan style sebagai CSS utility classes atau CSS custom properties.

### 3) Grid, Container & Breakpoints

Rekomendasi umum (sesuaikan dari Figma layout):

- Grid columns: 12
- Container max-width: 1100px
- Gutters: 20px
- Breakpoints:
	- Mobile: up to 600px
	- Tablet: 601px — 900px
	- Desktop: 901px and up

Periksa artboard layout di Figma untuk konfirmasi nilai-nilai ini.

### 4) Komponen Utama dan Mapping ke HTML/CSS

Gunakan class berikut sebagai pedoman implementasi (sesuaikan nama class bila perlu):

- Header: `.site-header` — brand, nav, sticky behavior.
- Hero: `.hero` / `.hero-copy` / `.hero-art` — gambar bulat/oval di kanan, CTA.
- Card (fitur/keunggulan): `.card` — shadow, border radius, icon + teks.
- Pricing: `.pricing-card` / `.pricing-card.featured` — grid untuk 3 kolom, tombol CTA.
- Portfolio grid: `.project` — grid gambar/logo.
- Job listing: `.job-list > li` — teks + tombol `Lamar` (use <button> for accessibility).
- Footer: `.site-footer` — kontak, link, copyright.

Untuk setiap komponen, catat di Figma:
- Spacing (padding/margin) — gunakan Inspect panel.
- Corner radius — contoh `8px`/`10px`.
- Shadow elevation — catat warna rgba dan offset.

### 5) Aset (Images & Icons)

Saat ini folder `assets/` berisi gambar utama. Rekomendasi penamaan dan penggunaan:

- `assets/Beranda.png` — hero main (ganti `index.html` placeholder)
- `assets/Layanan.png` — ilustrasi layanan (section layanan)
- `assets/LowonganKerja.png` — header lowongan
- `assets/OurClient.png` — grid client logos
- `assets/PriceList-1.png`, `assets/PriceList-2.png`, `assets/PriceList-3.png` — pricing visuals

Praktik terbaik:
- Ekspor aset ke `webp` untuk web: `image-name.webp`.
- Sediakan versi 1x dan 2x (e.g., `hero@1x.webp`, `hero@2x.webp`) bila diperlukan.
- Buat folder `assets/optimized/` untuk versi terkompresi.

### 6) Export Settings dari Figma

- Format: `WebP` (recommended) atau `PNG/JPG` untuk foto.
- Scale: `1x` (standar) dan `2x` (retina) jika perlu.
- Background: pilih `transparent` untuk icon/svg; opsional `PNG` untuk gambar dengan transparansi.
- Slicing: gunakan frame export pada tiap elemen yang perlu diekspor.

### 7) Interaksi & Prototype

Catat behavior dari prototipe di Figma:
- Link/scroll-to behavior dari menu navigasi ke section.
- Hover state pada tombol/CTA (warna, shadow).
- Modal atau form submit flows (jika ada).

Tangkap setiap interaction di Figma prototype dan dokumentasikan sebagai acceptance criteria untuk developer.

### 8) Aksesibilitas

- Alt text: berikan `alt` yang deskriptif pada semua gambar (mis. `alt="Illustration Layanan - RepublikWeb"`).
- Kontras: pastikan rasio kontras teks terhadap background memenuhi WCAG AA.
- Keyboard navigation: pastikan semua tombol dan link dapat diakses via keyboard.

### 9) Checklist Handoff (yang perlu disediakan di Figma atau oleh desainer)

- [ ] Link prototype yang lengkap (sudah ada di README).
- [ ] Daftar style (colors, text styles) — copy ke dokumen atau Style Guide.
- [ ] Exportable assets (icons, svg, images) siap di-export.
- [ ] Komponen yang disimbolkan / component library di Figma.
- [ ] Spesifikasi spacing & grid.
- [ ] States (hover, active, disabled) untuk komponen interaktif.

### 10) Cara cepat mengupdate kode lokal

1. Ganti placeholder gambar di `index.html` dengan asset nyata — contohnya:

```html
<img src="assets/Beranda.png" alt="Hero RepublikWeb" loading="lazy">
```

2. Masukkan nilai warna & typografi ke `assets/css/styles.css` sebagai custom properties.
3. Ekspor dan letakkan aset teroptimasi di `assets/optimized/` dan update path di HTML/CSS.

---

Jika Anda ingin, saya bisa melakukan salah satu dari berikut:
- A. Otomatis mengganti placeholder gambar di `index.html` dengan `assets/Beranda.png` dan menambahkan `loading="lazy"` untuk semua gambar.
- B. Ekstrak design tokens (warna, font, spacing) jika Anda mengekspor atau menyalin nilainya dari Figma ke sini.

Katakan pilihan Anda (A/B) atau kirim data design tokens dari Figma, lalu saya akan lanjut memperbarui file proyek.
