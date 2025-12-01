document.addEventListener("DOMContentLoaded", () => {
    const el = document.querySelector(".ma-san-pham");
    const mainImage = document.querySelector(".main-product-image img");
    const flickitySlider = document.querySelector(".flickity-slider.Imagephu");
    const priceWrapper = document.querySelector(".price-wrapper .product-page-price");
    const colorContainer = document.querySelector(".ux-swatches");
    const dungLuongBtns = document.querySelectorAll(".item-linked-product");

    const maSanPham = el ? parseInt(el.id) : null;

    // ================= CLICK DUNG LƯỢNG =================
   dungLuongBtns.forEach(dl => {
    dl.addEventListener("click", () => {
        // Set active
        dungLuongBtns.forEach(s => s.classList.remove("active"));
        dl.classList.add("active");

        const maDungLuong = dl.id;

        fetch(`/api/getColorsByCapacity?id=${maSanPham}&maDungLuong=${maDungLuong}`)
            .then(res => res.json())
            .then(colors => {
                if (!colors || !Array.isArray(colors) || colors.length === 0) return;

                // Render swatches
                colorContainer.innerHTML = "";
                colors.forEach((color, index) => {
                    const div = document.createElement("div");
                    div.className = `ux-swatch ${index === 0 ? "selected" : ""}`;
                    div.setAttribute("data-value", color.maMauSac);
                    div.setAttribute("aria-checked", index === 0 ? "true" : "false");
                    div.setAttribute("role", "radio");
                    div.innerHTML = `<span class="ux-swatch__text">${color.tenMauSac}</span>`;
                    colorContainer.appendChild(div);
                });

                // Lấy màu đầu tiên mặc định
                const firstColor = colors[0];

                // Update main image
                if (mainImage && firstColor.hinhAnhURL) {
                    mainImage.src = `http://localhost:8080/img/${firstColor.hinhAnhURL}`;
                }

                // Update giá
                if (priceWrapper) {
                    const giaBan = firstColor.giaBan != null ? Number(firstColor.giaBan) : 0;
                    const giaBanGG = firstColor.giaBanGG != null ? Number(firstColor.giaBanGG) : null;
                    let html = '';
                    if (giaBanGG && giaBanGG < giaBan) {
                        html = `<ins><span class="woocommerce-Price-amount amount"><bdi>${giaBanGG.toLocaleString()}₫</bdi></span></ins>
                                <del><span>Giá niêm yết: </span><span class="woocommerce-Price-amount amount"><bdi>${giaBan.toLocaleString()}₫</bdi></span></del>`;
                    } else {
                        html = `<span class="woocommerce-Price-amount amount"><bdi>${giaBan.toLocaleString()}₫</bdi></span>`;
                    }
                    priceWrapper.innerHTML = html;
                }

                // Render Flickity slider
                if (flickitySlider) {
                    flickitySlider.innerHTML = "";
                    let leftIndex = 0;
                    colors.forEach((color) => {
                        if (color.maMauSac === firstColor.maMauSac) return; // bỏ qua màu mặc định
                        const colDiv = document.createElement("div");
                        colDiv.className = `col ${leftIndex === 0 ? "first" : ""}`;
                        colDiv.style.position = "absolute";
                        colDiv.style.left = `${leftIndex * 25}%`;
                        leftIndex++;

                        const aTag = document.createElement("a");
                        const imgTag = document.createElement("img");
                        imgTag.src = `http://localhost:8080/img/${color.hinhAnhURL}`;
                        imgTag.alt = dl.getAttribute("data-ten-san-pham") || "";
                        imgTag.width = 1024;
                        imgTag.height = 815;
                        imgTag.className = "attachment-woocommerce_thumbnail";

                        aTag.appendChild(imgTag);
                        colDiv.appendChild(aTag);
                        flickitySlider.appendChild(colDiv);
                    });
                }

                // Bind sự kiện click cho swatches
                bindColorEvents();
            })
            .catch(err => console.error("Error fetching colors:", err));
    });
});


    // ================= CLICK MÀU =================
    function bindColorEvents() {
        const swatches = document.querySelectorAll(".ux-swatch");
        const activeDl = document.querySelector(".item-linked-product.active");

        swatches.forEach(swatch => {
            swatch.addEventListener("click", () => {
                // Set selected
                swatches.forEach(s => {
                    s.classList.remove("selected");
                    s.setAttribute("aria-checked", "false");
                });
                swatch.classList.add("selected");
                swatch.setAttribute("aria-checked", "true");

                const maMauSac = swatch.getAttribute("data-value");
                const maDungLuong = activeDl ? activeDl.id : null;

                // Gọi API lấy chi tiết sản phẩm theo dung lượng + màu
                fetch(`/api/getProductDetail?id=${maSanPham}&maDungLuong=${maDungLuong}&maMauSac=${maMauSac}`)
                    .then(res => res.json())
                    .then(data => {
                        if (!data) return;

                        if (mainImage && data.hinhAnhURL) {
                            mainImage.src = `http://localhost:8080/img/${data.hinhAnhURL}`;
                        }

                        if (priceWrapper && data.giaBan) {
                            const giaBan = Number(data.giaBan);
                            const giaBanGG = data.giaBanGG ? Number(data.giaBanGG) : null;
                            let html = '';
                            if (giaBanGG && giaBanGG < giaBan) {
                                html = `<ins><span class="woocommerce-Price-amount amount"><bdi>${giaBanGG.toLocaleString()}₫</bdi></span></ins>
                                        <del><span>Giá niêm yết: </span><span class="woocommerce-Price-amount amount"><bdi>${giaBan.toLocaleString()}₫</bdi></span></del>`;
                            } else {
                                html = `<span class="woocommerce-Price-amount amount"><bdi>${giaBan.toLocaleString()}₫</bdi></span>`;
                            }
                            priceWrapper.innerHTML = html;
                        }
                    })
                    .catch(err => console.error("Error fetching product detail:", err));
            });
        });
    }

    // Bind màu lần đầu (màu của dung lượng mặc định)
    bindColorEvents();
});
