<%@ page import="java.util.Set, java.util.HashSet, java.util.List, java.util.Map" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.example.demo.dto.ListMauSacOfSanPhamDTO" %>
<div class="page-title shop-page-title product-page-title">
   <div class="page-title-inner flex-row medium-flex-wrap container">
      <div class="flex-col flex-grow medium-text-center">
         <div class="is-large">
            <nav class="woocommerce-breadcrumb breadcrumbs uppercase" aria-label="Breadcrumb">
               <a href="http:localhost:8080/index">Trang chủ</a> <span class="divider">/</span> <a href="">Tablet</a> <span class="divider">/ <span class="divider">/</span> <a href="">iPad Pro</a>
            </nav>
         </div>
      </div>
      <div class="flex-col medium-text-center">
      </div>
   </div>
</div>
<div id="product-1693" class="product type-product post-1693 status-publish first instock product_cat-apple product_cat-hot-sale product_cat-ipad-pro has-post-thumbnail shipping-taxable purchasable product-type-variable has-default-attributes">
   <div class="product-container">
      <div class="product-main"style="padding-top:15px;">
         <div class="row pdb-0">
            <div class="col medium-12 header-title" style="padding: 0;">
               <h1 class="ma-san-pham"  id="${sanPham.maSanPham}">${sanPham.tenSanPham}</h1>
               <div class="meta-title">
                  <div class="" title="Rated 5 out of 5">
                     <span style="border-right: 1px solid;display: block;font-family: fl-icons !important;font-size: 16px;font-weight: 400 !important;height: 1em;letter-spacing: 0;line-height: 1em;margin: .5em 0;overflow: hidden;position: relative;text-align: left;width: 6em;">
                     <i class="bi bi-star-fill" style="font-size: 13px;color: #ffa500 !important;"></i>
                     <i class="bi bi-star-fill" style="font-size: 13px;color: #ffa500 !important;"></i>
                     <i class="bi bi-star-fill" style="font-size: 13px;color: #ffa500 !important;"></i>
                     <i class="bi bi-star-fill" style="font-size: 13px;color: #ffa500 !important;"></i>
                     <i class="bi bi-star-fill" style="font-size: 13px;color: #ffa500 !important;"></i>
                  </div>
                  <a href="#reviews_summary" class="woocommerce-review-link" rel="nofollow" style="font-size: 90%;margin-left: 10px;color:#e0052b"><span class="count">2</span> Đánh Giá</a>
               </div>
            </div>
         </div>
         <div class="row content-row mb-0">
            <div class="product-gallery large-4 col">
               <div class="product-images relative mb-half has-hover woocommerce-product-gallery woocommerce-product-gallery--with-images woocommerce-product-gallery--columns-4 images" data-columns="4" style="opacity: 1;">
                  <div class="badge-container is-larger absolute left top z-1">
                  </div>
                  <div class="image-tools absolute top show-on-hover right z-3">
                  </div>
                  <div class="woocommerce-product-gallery__wrapper product-gallery-slider slider slider-nav-small mb-half is-draggable flickity-enabled" data-flickity-options="{
                     &quot;cellAlign&quot;: &quot;center&quot;,
                     &quot;wrapAround&quot;: true,
                     &quot;autoPlay&quot;: false,
                     &quot;prevNextButtons&quot;:true,
                     &quot;adaptiveHeight&quot;: true,
                     &quot;imagesLoaded&quot;: true,
                     &quot;lazyLoad&quot;: 1,
                     &quot;dragThreshold&quot; : 15,
                     &quot;pageDots&quot;: false,
                     &quot;rightToLeft&quot;: false       }" tabindex="0">
                     <div class="flickity-viewport" style="height: 384.156px; touch-action: pan-y;">
                        <div class="flickity-slider" style="left: 0px; transform: translateX(0%);">
                           <div class="main-product-image">
                              <img src="http://localhost:8080/img/${mauSacDefault.hinhAnhURL}" alt="${sanPham.tenSanPham}"  width="470" height="488" style="width:370px;height:384px;"/>
                           </div>
                           <div class="color-thumbnails">
                              <c:forEach var="mauSac" items="${listMauSac}">
                                 <c:if test="${mauSac.maMauSac != mauSacDefault.maMauSac}">
                                    <div class="thumbnail">
                                       <img src="http://localhost:8080/img/${mauSac.hinhAnhURL}" 
                                          alt="${sanPham.tenSanPham}" 
                                          width="100" height="100"/>
                                    </div>
                                 </c:if>
                              </c:forEach>
                           </div>
                        </div>
                     </div>
                     <button class="flickity-button flickity-prev-next-button previous" type="button" aria-label="Previous">
                        <svg class="flickity-button-icon" viewBox="0 0 100 100">
                           <path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z" class="arrow"></path>
                        </svg>
                     </button>
                     <button class="flickity-button flickity-prev-next-button next" type="button" aria-label="Next">
                        <svg class="flickity-button-icon" viewBox="0 0 100 100">
                           <path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z" class="arrow" transform="translate(100, 100) rotate(180) "></path>
                        </svg>
                     </button>
                  </div>
                  <div class="image-tools absolute bottom left z-3">
                     <a role="button" href="#product-zoom" class="zoom-button button is-outline circle icon tooltip hide-for-small" title="Phóng to" aria-label="Phóng to" data-flatsome-role-button="attached"><i class="icon-expand" aria-hidden="true"></i></a>  
                  </div>
               </div>
               <div class="product-thumbnails thumbnails slider-no-arrows slider row row-small row-slider slider-nav-small small-columns-4 is-draggable flickity-enabled" data-flickity-options="{
                  &quot;cellAlign&quot;: &quot;left&quot;,
                  &quot;wrapAround&quot;: false,
                  &quot;autoPlay&quot;: false,
                  &quot;prevNextButtons&quot;: true,
                  &quot;asNavFor&quot;: &quot;.product-gallery-slider&quot;,
                  &quot;percentPosition&quot;: true,
                  &quot;imagesLoaded&quot;: true,
                  &quot;pageDots&quot;: false,
                  &quot;rightToLeft&quot;: false,
                  &quot;contain&quot;: true
                  }" tabindex="0">
                  <div class="flickity-viewport" style="height: 90.8125px; touch-action: pan-y;">
                        <div class="flickity-slider Imagephu" id="main-image">
                           <c:forEach var="mauSac" items="${listMauSac}" varStatus="status">
                              <c:if test="${mauSac.maMauSac != mauSacDefault.maMauSac}">
                                 <div class="col ${status.first ? 'first' : ''}" 
                                    style="position: absolute; left: ${status.index * 25}%;">
                                    <a>
                                    <img src="http://localhost:8080/img/${mauSac.hinhAnhURL}" 
                                       alt="${sanPham.tenSanPham}" 
                                       width="1024" height="815" 
                                       class="attachment-woocommerce_thumbnail"/>
                                    </a>
                                 </div>
                              </c:if>
                           </c:forEach>
                        </div>
                  </div>
                  <button class="flickity-button flickity-prev-next-button previous" type="button" disabled="" aria-label="Previous">
                     <svg class="flickity-button-icon" viewBox="0 0 100 100">
                        <path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z" class="arrow"></path>
                     </svg>
                  </button>
                  <button class="flickity-button flickity-prev-next-button next" type="button" aria-label="Next">
                     <svg class="flickity-button-icon" viewBox="0 0 100 100">
                        <path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z" class="arrow" transform="translate(100, 100) rotate(180) "></path>
                     </svg>
                  </button>
               </div>
            </div>
            <div class="product-info summary col-fit col entry-summary large-5">
               <div class="price-wrapper">
                  <p class="price product-page-price price-on-sale">
                     <%
                        Object giaBan = request.getAttribute("giaBan");
                        Object giaBanGG = request.getAttribute("giaBanGG");
                        
                        Long giaBanLong = Math.round(Double.parseDouble(giaBan.toString()));
                        Long giaBanGGLong = null;
                        
                        if (giaBanGG != null && !giaBanGG.toString().isEmpty()) {
                            giaBanGGLong = Math.round(Double.parseDouble(giaBanGG.toString()));
                        %>
                     <ins>
                     <span class="woocommerce-Price-amount amount">
                     <bdi><%= String.format("%,d", giaBanGGLong) %><span class="woocommerce-Price-currencySymbol">₫</span></bdi>
                     </span>
                     </ins>
                     <del>
                     <span>Giá niêm yết: </span>
                     <span class="woocommerce-Price-amount amount">
                     <bdi><%= String.format("%,d", giaBanLong) %><span class="woocommerce-Price-currencySymbol">₫</span></bdi>
                     </span>
                     </del>
                     <%
                        } else {
                        %>
                     <span class="woocommerce-Price-amount amount">
                     <bdi><%= String.format("%,d", giaBanLong) %><span class="woocommerce-Price-currencySymbol">₫</span></bdi>
                     </span>
                     <%
                        }
                        %>
                  </p>
               </div>
               <form class="variations_form cart ux-swatches-js-attached" action="" method="post" enctype="multipart/form-data" data-product_id="1693" >
                  <div class="single_variation_wrap">
                     <table class="variations" cellspacing="0">
                        <tbody>
                           <tr>
                              <td class="label" style="font-weight: bold; padding-right: 20px; font-size:1.3em">
                                 <label for="pa_mau-sac" style="margin: .5em 0;">Màu sắc</label>
                              </td>
                              <%
                                 List<ListMauSacOfSanPhamDTO> listMauSac =
                                     (List<ListMauSacOfSanPhamDTO>) request.getAttribute("listMauSac");
                                 %>
                              <td class="value">
                                 <!-- Dropdown select (ẩn theo UX) -->
                                 <div class="variation-selector variation-select-ux_label hidden">
                                    <select id="list-mau-sac" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes">
                                       <option value="">Chọn một tùy chọn</option>
                                       <%
                                          if (listMauSac != null && !listMauSac.isEmpty()) {
                                              boolean first = true;
                                              for (ListMauSacOfSanPhamDTO mauSac : listMauSac) {
                                                  String value = mauSac.getMaMauSac().toString();
                                                  String label = mauSac.getTenMauSac();
                                          %>
                                       <option value="<%= value %>" <%= first ? "selected" : "" %>><%= label %></option>
                                       <%
                                          first = false;
                                          }
                                          }
                                          %>
                                    </select>
                                 </div>
                                 <!-- Swatches hiển thị màu -->
                                 <div class="ux-swatches ux-swatches-attribute-ux_label" data-attribute_name="attribute_pa_mau-sac" role="radiogroup" aria-labelledby="pa_mau-sac">
                                    <%
                                       if (listMauSac != null && !listMauSac.isEmpty()) {
                                           boolean first = true;
                                           for (ListMauSacOfSanPhamDTO mauSac : listMauSac) {
                                               String value = mauSac.getMaMauSac().toString();
                                               String label = mauSac.getTenMauSac();
                                       %>
                                    <div class="ux-swatch ux-swatch--label <%= first ? "selected" : "" %>" 
                                       aria-checked="<%= first ? "true" : "false" %>" 
                                       data-value="<%= value %>" 
                                       data-name="<%= label %>" 
                                       role="radio" tabindex="0">
                                       <span class="ux-swatch__text"><%= label %></span>
                                    </div>
                                    <%
                                       first = false;
                                       }
                                       }
                                       %>
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                     <div class="linked-product" id="list-dung-luong">
                       <%
    List<Map<String, Object>> variants = 
        (List<Map<String, Object>>) request.getAttribute("variantsDungLuong");
    
    String tenDungLuongCheck = (String) request.getAttribute("tenDungLuongCheck"); // Dung lượng mặc định
    
    Set<String> displayedIds = new HashSet<>(); // Set để lưu id đã hiển thị
    
    if (variants != null) {
        for (Map<String, Object> item : variants) {
            String maDL = String.valueOf(item.get("maDungLuong"));
            
            // Nếu id đã hiển thị thì bỏ qua
            if (displayedIds.contains(maDL)) {
                continue;
            }
            
            displayedIds.add(maDL); // Đánh dấu đã hiển thị
            
            String tenDL = (String) item.get("tenDungLuong");
            boolean isActive = tenDL.equals(tenDungLuongCheck);
%>
<a class="item-linked-product<%= isActive ? " active" : "" %>" href="#"  id="<%= maDL %>">
    <span><%= tenDL %></span>
    <strong>
    <%
        Object ggg = item.get("giaBanGG");
        if (ggg != null) {
            out.print(String.format("%,d", (long) Double.parseDouble(ggg.toString())) + " ₫");
        } else {
            out.print(String.format("%,d", (long) Double.parseDouble(item.get("giaBan").toString())) + " ₫");
        }
    %>
    </strong>
</a>
<%
        }
    }
%>


                     </div>
                     <div class="promotion-info">
                        <div class="promotion-product">
                           <div class="promotion-icon"><i class="bi bi-gift"></i> Khuyến mãi</div>
                           <div>
                              <h4>Khuyến mãi hãng:</h4>
                              <div class="pack-detail">
                                 <ul class="el-promotion-pack">
                                    <li>Ưu đãi thanh toán/ trả góp qua thẻ ngân hàng lên đến 1 triệu</li>
                                    <li>Thu cũ lên đời – Trợ giá 1 triệu</li>
                                 </ul>
                              </div>
                              <h4>Chương trình khuyến mại:</h4>
                              <div class="pack-detail">
                                 <ul class="el-promotion-pack">
                                    <li>Mua kèm dịch vụ bảo hành Apple Care giá tốt</li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="woocommerce-variation single_variation">
                        <div class="woocommerce-variation-description"></div>
                        <div class="woocommerce-variation-price" style="display: none;"></div>
                        <div class="woocommerce-variation-availability"></div>
                     </div>
                     <div class="woocommerce-variation-add-to-cart variations_button woocommerce-variation-add-to-cart-enabled">
                        <div class="quantity buttons_added" style="display: block;">
                           <span>Số lượng</span>
                           <input type="button" value="-" class="minus button is-form">				<label class="screen-reader-text" for="quantity_692c29b254fbc">Apple iPad Pro 11 2021 M1 WiFi 2TB I Chính hãng Apple Việt Nam số lượng</label>
                           <input type="number" id="quantity_692c29b254fbc" class="input-text qty text" step="1" min="1" max="" name="quantity" value="1" title="Qty" size="4" placeholder="" inputmode="numeric">
                           <input type="button" value="+" class="plus button is-form">	
                        </div>
                        <button type="submit" class="single_add_to_cart_button button alt" fdprocessedid="z9whq"><i class="fa-solid fa-basket-shopping"></i> Thêm Vào Giỏ Hàng</button>
                        <button type="button" class="button buy_now_button" fdprocessedid="zqsgr">Mua ngay</button>
                        <input type="hidden" name="is_buy_now" class="is_buy_now" value="0" autocomplete="off">
                        <input type="hidden" name="add-to-cart" value="1693">
                        <input type="hidden" name="product_id" value="1693">
                        <input type="hidden" name="variation_id" class="variation_id" value="1694">
                     </div>
                  </div>
               </form>
               <script type="text/javascript">
                  jQuery(document).ready(function () {
                  	jQuery(document).ready(function(event) {
                  		var m = jQuery('.price.product-page-price ').html();
                  		jQuery('.single_variation_wrap').change(function(){
                  			jQuery('.woocommerce-variation-price').hide();
                  			var p = jQuery('.single_variation_wrap').find('.price').html();
                  			jQuery('.price.product-page-price').html(p);
                  		});
                  		jQuery('body').on('click','.reset_variations',function(event) {
                  			jQuery('.price.product-page-price').html(m);
                  		});
                  	});
                  });
               </script>
            </div>
            <div class="col large-3" style="max-width: 25%;">
               <div class="description-product">
                  <p><b>Mô tả</b><br>
                     ${sanPham.moTa}
                  </p>
                  <p><b>Bảo hành</b><br>
                     Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple Việt Nam. 1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Gia hạn bảo hành thời gian giãn cách
                  </p>
               </div>
            </div>
         </div>
      </div>
      <div class="row tab-product-related">
         <div class="col small-12">
            <div class="tabs nav nav-outline">
               <button class="tab active" onclick="opentab(event, 'Upsell')" id="tab-active" fdprocessedid="nw25">Phụ kiện mua cùng</button>
               <button class="tab" onclick="opentab(event, 'Related')" fdprocessedid="1fqmvd">Sản phẩm tương tự</button>
            </div>
            <div id="Upsell" class="tab-content" style="display: block;">
               <div class="up-sells upsells products upsells-wrapper product-section">
                  <h3 class="product-section-title product-section-title-upsell">
                     Phụ kiện mua cùng				
                  </h3>
                  <div class="row large-columns-4 medium-columns-3 small-columns-2 row-small">
                     <div class="product-small col has-hover product type-product post-1719 status-publish instock product_cat-tai-nghe-bluetooth has-post-thumbnail sale shipping-taxable purchasable product-type-variable has-default-attributes">
                        <div class="col-inner">
                           <div class="badge-container absolute left top z-1">
                              <div class="callout badge badge-circle">
                                 <div class="badge-inner secondary on-sale"><span class="onsale">-30%</span></div>
                              </div>
                           </div>
                           <div class="product-small box ">
                              <div class="box-image">
                                 <div class="image-none">
                                    <a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-bluetooth-galaxy-buds-pro-laneige/" aria-label="Tai nghe Bluetooth Galaxy Buds Pro Laneige">
                                    <img width="450" height="450" src="https://cellphones.mauthemewp.com/wp-content/uploads/2021/08/samsung-galaxy-buds-pro-laneige-7__1.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" decoding="async" loading="lazy">				</a>
                                    <div class="item-hotsale"></div>
                                 </div>
                                 <div class="image-tools is-small top right show-on-hover">
                                 </div>
                                 <div class="image-tools is-small hide-for-small bottom left show-on-hover">
                                 </div>
                                 <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                 </div>
                              </div>
                              <div class="box-text box-text-products">
                                 <div class="title-wrapper">
                                    <p class="name product-title woocommerce-loop-product__title"><a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-bluetooth-galaxy-buds-pro-laneige/" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">Tai nghe Bluetooth Galaxy Buds Pro Laneige</a></p>
                                 </div>
                                 <div class="price-wrapper">
                                    <span class="price"><ins><span class="woocommerce-Price-amount amount"><bdi>3.490.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></ins><del><span>Giá niêm yết: </span><span class="woocommerce-Price-amount amount"><bdi>4.990.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></del></span>
                                    <div class="promotion">Mua kèm điện thoại, máy tính bảng Samsung giảm 10% tối đa 150k</div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="product-small col has-hover product type-product post-1713 status-publish instock product_cat-tai-nghe-bluetooth has-post-thumbnail sale shipping-taxable purchasable product-type-variable has-default-attributes">
                        <div class="col-inner">
                           <div class="badge-container absolute left top z-1">
                              <div class="callout badge badge-circle">
                                 <div class="badge-inner secondary on-sale"><span class="onsale">-30%</span></div>
                              </div>
                           </div>
                           <div class="product-small box ">
                              <div class="box-image">
                                 <div class="image-none">
                                    <a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-bluetooth-samsung-galaxy-buds-pro/" aria-label="Tai nghe Bluetooth Samsung Galaxy Buds Pro">
                                    <img width="450" height="450" src="https://cellphones.mauthemewp.com/wp-content/uploads/2021/08/buds-pro_1.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" decoding="async" loading="lazy">				</a>
                                    <div class="item-hotsale"></div>
                                 </div>
                                 <div class="image-tools is-small top right show-on-hover">
                                 </div>
                                 <div class="image-tools is-small hide-for-small bottom left show-on-hover">
                                 </div>
                                 <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                 </div>
                              </div>
                              <div class="box-text box-text-products">
                                 <div class="title-wrapper">
                                    <p class="name product-title woocommerce-loop-product__title"><a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-bluetooth-samsung-galaxy-buds-pro/" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">Tai nghe Bluetooth Samsung Galaxy Buds Pro</a></p>
                                 </div>
                                 <div class="price-wrapper">
                                    <span class="price"><ins><span class="woocommerce-Price-amount amount"><bdi>3.490.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></ins><del><span>Giá niêm yết: </span><span class="woocommerce-Price-amount amount"><bdi>4.990.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></del></span>
                                    <div class="promotion">Mua kèm điện thoại, máy tính bảng Samsung giảm 10% tối đa 150k</div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="product-small col has-hover product type-product post-1704 status-publish last instock product_cat-tai-nghe-bluetooth has-post-thumbnail sale shipping-taxable purchasable product-type-variable has-default-attributes">
                        <div class="col-inner">
                           <div class="badge-container absolute left top z-1">
                              <div class="callout badge badge-circle">
                                 <div class="badge-inner secondary on-sale"><span class="onsale">-56%</span></div>
                              </div>
                           </div>
                           <div class="product-small box ">
                              <div class="box-image">
                                 <div class="image-none">
                                    <a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-bluetooth-samsung-galaxy-buds-live/" aria-label="Tai nghe Bluetooth Samsung Galaxy Buds Live">
                                    <img width="500" height="500" src="https://cellphones.mauthemewp.com/wp-content/uploads/2021/08/buds_1_1.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" decoding="async" loading="lazy">				</a>
                                    <div class="item-hotsale"></div>
                                 </div>
                                 <div class="image-tools is-small top right show-on-hover">
                                 </div>
                                 <div class="image-tools is-small hide-for-small bottom left show-on-hover">
                                 </div>
                                 <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                 </div>
                              </div>
                              <div class="box-text box-text-products">
                                 <div class="title-wrapper">
                                    <p class="name product-title woocommerce-loop-product__title"><a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-bluetooth-samsung-galaxy-buds-live/" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">Tai nghe Bluetooth Samsung Galaxy Buds Live</a></p>
                                 </div>
                                 <div class="price-wrapper">
                                    <span class="price"><ins><span class="woocommerce-Price-amount amount"><bdi>1.990.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></ins><del><span>Giá niêm yết: </span><span class="woocommerce-Price-amount amount"><bdi>4.490.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></del></span>
                                    <div class="promotion">Mua kèm điện thoại, máy tính bảng Samsung giảm 10% tối đa 150k</div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="product-small col has-hover product type-product post-1696 status-publish first instock product_cat-tai-nghe-bluetooth has-post-thumbnail sale shipping-taxable purchasable product-type-simple">
                        <div class="col-inner">
                           <div class="badge-container absolute left top z-1">
                              <div class="callout badge badge-circle">
                                 <div class="badge-inner secondary on-sale"><span class="onsale">-14%</span></div>
                              </div>
                           </div>
                           <div class="product-small box ">
                              <div class="box-image">
                                 <div class="image-none">
                                    <a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-bluetooth-apple-airpods-2-vn-anb-229/" aria-label="Tai nghe Bluetooth Apple AirPods 2 VN/A(NB.229)">
                                    <img width="450" height="450" src="https://cellphones.mauthemewp.com/wp-content/uploads/2021/08/airpods-2_6.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" decoding="async" loading="lazy">				</a>
                                    <div class="item-hotsale"></div>
                                 </div>
                                 <div class="image-tools is-small top right show-on-hover">
                                 </div>
                                 <div class="image-tools is-small hide-for-small bottom left show-on-hover">
                                 </div>
                                 <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                 </div>
                              </div>
                              <div class="box-text box-text-products">
                                 <div class="title-wrapper">
                                    <p class="name product-title woocommerce-loop-product__title"><a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-bluetooth-apple-airpods-2-vn-anb-229/" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">Tai nghe Bluetooth Apple AirPods 2 VN/A(NB.229)</a></p>
                                 </div>
                                 <div class="price-wrapper">
                                    <span class="price"><ins><span class="woocommerce-Price-amount amount"><bdi>3.450.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></ins><del><span>Giá niêm yết: </span><span class="woocommerce-Price-amount amount"><bdi>3.990.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></del></span>
                                    <div class="promotion">Trả góp lãi suất 0% với Home Credit.</div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="product-small col has-hover product type-product post-1699 status-publish instock product_cat-tai-nghe-bluetooth has-post-thumbnail sale shipping-taxable purchasable product-type-simple">
                        <div class="col-inner">
                           <div class="badge-container absolute left top z-1">
                              <div class="callout badge badge-circle">
                                 <div class="badge-inner secondary on-sale"><span class="onsale">-35%</span></div>
                              </div>
                           </div>
                           <div class="product-small box ">
                              <div class="box-image">
                                 <div class="image-none">
                                    <a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-bluetooth-apple-airpods-pro-vn-a/" aria-label="Tai nghe Bluetooth Apple AirPods Pro VN/A">
                                    <img width="450" height="450" src="https://cellphones.mauthemewp.com/wp-content/uploads/2021/08/airpods-pro_5.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" decoding="async" loading="lazy">				</a>
                                    <div class="item-hotsale"></div>
                                 </div>
                                 <div class="image-tools is-small top right show-on-hover">
                                 </div>
                                 <div class="image-tools is-small hide-for-small bottom left show-on-hover">
                                 </div>
                                 <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                 </div>
                              </div>
                              <div class="box-text box-text-products">
                                 <div class="title-wrapper">
                                    <p class="name product-title woocommerce-loop-product__title"><a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-bluetooth-apple-airpods-pro-vn-a/" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">Tai nghe Bluetooth Apple AirPods Pro VN/A</a></p>
                                 </div>
                                 <div class="price-wrapper">
                                    <span class="price"><ins><span class="woocommerce-Price-amount amount"><bdi>5.190.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></ins><del><span>Giá niêm yết: </span><span class="woocommerce-Price-amount amount"><bdi>7.990.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></del></span>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div id="Related" class="tab-content" style="display: none;">
               <div class="related related-products-wrapper product-section">
                  <h3 class="product-section-title container-width product-section-title-related">
                     Sản phẩm tương tự			
                  </h3>
                  <div class="row large-columns-4 medium-columns-3 small-columns-2 row-small">
                     <div class="product-small col has-hover product type-product post-1444 status-publish instock product_cat-hot-sale product_cat-xiaomi has-post-thumbnail shipping-taxable purchasable product-type-variable has-default-attributes">
                        <div class="col-inner">
                           <div class="badge-container absolute left top z-1">
                           </div>
                           <div class="product-small box ">
                              <div class="box-image">
                                 <div class="image-none">
                                    <a href="https://cellphones.mauthemewp.com/san-pham/xiaomi-redmi-note-10-pro-8gb/" aria-label="Xiaomi Redmi Note 10 Pro 8GB">
                                    <img width="600" height="600" src="https://cellphones.mauthemewp.com/wp-content/uploads/2021/08/xiaomi-redmi-note-10-pro_2.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" decoding="async" loading="lazy">				</a>
                                    <div class="item-hotsale"></div>
                                 </div>
                                 <div class="image-tools is-small top right show-on-hover">
                                 </div>
                                 <div class="image-tools is-small hide-for-small bottom left show-on-hover">
                                 </div>
                                 <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                 </div>
                              </div>
                              <div class="box-text box-text-products">
                                 <div class="title-wrapper">
                                    <p class="name product-title woocommerce-loop-product__title"><a href="https://cellphones.mauthemewp.com/san-pham/xiaomi-redmi-note-10-pro-8gb/" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">Xiaomi Redmi Note 10 Pro 8GB</a></p>
                                 </div>
                                 <div class="price-wrapper">
                                    <span class="price"><span class="woocommerce-Price-amount amount"><bdi>7.490.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></span>
                                    <div class="promotion">[HOT] Thu cũ lên đời giá cao - Thủ tục nhanh - Trợ giá lên tới 1.000.000đ</div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="product-small col has-hover product type-product post-1473 status-publish last instock product_cat-hot-sale product_cat-realme product_tag-realme-8-pro has-post-thumbnail shipping-taxable purchasable product-type-variable has-default-attributes">
                        <div class="col-inner">
                           <div class="badge-container absolute left top z-1">
                           </div>
                           <div class="product-small box ">
                              <div class="box-image">
                                 <div class="image-none">
                                    <a href="https://cellphones.mauthemewp.com/san-pham/realme-8-pro/" aria-label="Realme 8 Pro">
                                    <img width="350" height="350" src="https://cellphones.mauthemewp.com/wp-content/uploads/2021/08/realme-8-pro-2_2.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" decoding="async" loading="lazy">				</a>
                                    <div class="item-hotsale"></div>
                                 </div>
                                 <div class="image-tools is-small top right show-on-hover">
                                 </div>
                                 <div class="image-tools is-small hide-for-small bottom left show-on-hover">
                                 </div>
                                 <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                 </div>
                              </div>
                              <div class="box-text box-text-products">
                                 <div class="title-wrapper">
                                    <p class="name product-title woocommerce-loop-product__title"><a href="https://cellphones.mauthemewp.com/san-pham/realme-8-pro/" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">Realme 8 Pro</a></p>
                                 </div>
                                 <div class="price-wrapper">
                                    <span class="price"><span class="woocommerce-Price-amount amount"><bdi>8.690.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></span>
                                    <div class="promotion">[HOT] Thu cũ lên đời giá cao - Trợ giá lên tới ̀00.000đ</div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="product-small col has-hover product type-product post-1725 status-publish first instock product_cat-hot-sale product_cat-tai-nghe-bluetooth has-post-thumbnail sale shipping-taxable purchasable product-type-variable has-default-attributes">
                        <div class="col-inner">
                           <div class="badge-container absolute left top z-1">
                              <div class="callout badge badge-circle">
                                 <div class="badge-inner secondary on-sale"><span class="onsale">-50%</span></div>
                              </div>
                           </div>
                           <div class="product-small box ">
                              <div class="box-image">
                                 <div class="image-none">
                                    <a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-khong-day-jbl-tune-120-tws/" aria-label="Tai Nghe Không Dây JBL Tune 120 TWS">
                                    <img width="500" height="500" src="https://cellphones.mauthemewp.com/wp-content/uploads/2021/08/jbl-tune-120tws-vt62b-products-o-2.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" decoding="async" loading="lazy">				</a>
                                    <div class="item-hotsale"></div>
                                 </div>
                                 <div class="image-tools is-small top right show-on-hover">
                                 </div>
                                 <div class="image-tools is-small hide-for-small bottom left show-on-hover">
                                 </div>
                                 <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                 </div>
                              </div>
                              <div class="box-text box-text-products">
                                 <div class="title-wrapper">
                                    <p class="name product-title woocommerce-loop-product__title"><a href="https://cellphones.mauthemewp.com/san-pham/tai-nghe-khong-day-jbl-tune-120-tws/" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">Tai Nghe Không Dây JBL Tune 120 TWS</a></p>
                                 </div>
                                 <div class="price-wrapper">
                                    <span class="price"><ins><span class="woocommerce-Price-amount amount"><bdi>1.190.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></ins><del><span>Giá niêm yết: </span><span class="woocommerce-Price-amount amount"><bdi>2.390.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></del></span>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="product-small col has-hover product type-product post-1690 status-publish instock product_cat-apple product_cat-ipad-pro has-post-thumbnail sale shipping-taxable purchasable product-type-variable has-default-attributes">
                        <div class="col-inner">
                           <div class="badge-container absolute left top z-1">
                              <div class="callout badge badge-circle">
                                 <div class="badge-inner secondary on-sale"><span class="onsale">-5%</span></div>
                              </div>
                           </div>
                           <div class="product-small box ">
                              <div class="box-image">
                                 <div class="image-none">
                                    <a href="https://cellphones.mauthemewp.com/san-pham/apple-ipad-pro-11-2021-m1-wifi-1tb-i-chinh-hang-apple-viet-nam/" aria-label="Apple iPad Pro 11 2021 M1 WiFi 1TB I Chính hãng Apple Việt Nam">
                                    <img width="470" height="488" src="https://cellphones.mauthemewp.com/wp-content/uploads/2021/08/ipad-pro-11-2021_2.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" decoding="async" loading="lazy">				</a>
                                    <div class="item-hotsale"></div>
                                 </div>
                                 <div class="image-tools is-small top right show-on-hover">
                                 </div>
                                 <div class="image-tools is-small hide-for-small bottom left show-on-hover">
                                 </div>
                                 <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                 </div>
                              </div>
                              <div class="box-text box-text-products">
                                 <div class="title-wrapper">
                                    <p class="name product-title woocommerce-loop-product__title"><a href="https://cellphones.mauthemewp.com/san-pham/apple-ipad-pro-11-2021-m1-wifi-1tb-i-chinh-hang-apple-viet-nam/" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">Apple iPad Pro 11 2021 M1 WiFi 1TB I Chính hãng Apple Việt Nam</a></p>
                                 </div>
                                 <div class="price-wrapper">
                                    <span class="price"><ins><span class="woocommerce-Price-amount amount"><bdi>41.000.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></ins><del><span>Giá niêm yết: </span><span class="woocommerce-Price-amount amount"><bdi>42.990.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></del></span>
                                    <div class="promotion">Thu cũ lên đời - Trợ giá 1 triệu</div>
                                    <span class="text-count-review">1 đánh giá</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="product-small col has-hover product type-product post-1384 status-publish instock product_cat-asus product_cat-hot-sale has-post-thumbnail shipping-taxable purchasable product-type-variable has-default-attributes">
                        <div class="col-inner">
                           <div class="badge-container absolute left top z-1">
                           </div>
                           <div class="product-small box ">
                              <div class="box-image">
                                 <div class="image-none">
                                    <a href="https://cellphones.mauthemewp.com/san-pham/asus-rog-phone-5-chinh-hang/" aria-label="ASUS ROG Phone 5 chính hãng">
                                    <img width="500" height="500" src="https://cellphones.mauthemewp.com/wp-content/uploads/2021/08/asus-rog-phone-5-black.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" decoding="async" loading="lazy">				</a>
                                    <div class="item-hotsale"></div>
                                 </div>
                                 <div class="image-tools is-small top right show-on-hover">
                                 </div>
                                 <div class="image-tools is-small hide-for-small bottom left show-on-hover">
                                 </div>
                                 <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                 </div>
                              </div>
                              <div class="box-text box-text-products">
                                 <div class="title-wrapper">
                                    <p class="name product-title woocommerce-loop-product__title"><a href="https://cellphones.mauthemewp.com/san-pham/asus-rog-phone-5-chinh-hang/" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">ASUS ROG Phone 5 chính hãng</a></p>
                                 </div>
                                 <div class="price-wrapper">
                                    <span class="price"><span class="woocommerce-Price-amount amount"><bdi>22.990.000<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></span>
                                    <div class="promotion">[HOT] Thu cũ lên đời giá cao - Thủ tục nhanh - Trợ giá lên tới 500.000đ</div>
                                    <span class="text-count-review">1 đánh giá</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <script>
               function opentab(evt, Name) {
                 var i, tabcontent, tab;
                 tabcontent = document.getElementsByClassName("tab-content");
                 for (i = 0; i < tabcontent.length; i++) {
               	tabcontent[i].style.display = "none";
                 }
                 tab = document.getElementsByClassName("tab");
                 for (i = 0; i < tab.length; i++) {
               	tab[i].className = tab[i].className.replace(" active", "");
                 }
                 document.getElementById(Name).style.display = "block";
                 evt.currentTarget.className += " active";
               }
               document.getElementById("tab-active").click();
            </script>
         </div>
      </div>
      <div class="product-footer">
         <div class="container">
            <div class="row row-small content-product-page">
               <div class="col medium-9 product-footer-left">
                  <div class="product-page-sections">
                     <div class="product-section">
                        <div class="entry-content">
                           <h2>iPad Pro 2021 11 inch – Tablet cấu mình mạnh với chip M1 mới</h2>
                           <p>Như thường lệ hằng năm Apple lại cho ra mắt chiếc máy tính bảng của mình.&nbsp;<strong>iPad Pro&nbsp;2021&nbsp;</strong>phiên bản&nbsp;11 inch hứa hẹn mang đến một trải nghiệm mạnh vẽ với nhiều tính năng nổi bật.</p>
                           <h3>Thiết kế vuông vức sang trọng, màn hình 11 inch</h3>
                           <p>iPad Pro 11 inch 2021 sở hữu ngoại hình mang nhiều điểm tương tự về ngoại hình với chiếc iPad Pro trước đó.&nbsp;Apple iPad Pro 2021&nbsp;sử dụng màn hình kích thước 11 inch và sử dụng màn hình LCD truyền thống.&nbsp; Màn hình trên iPad Pro 2021 này với công nghệ màu&nbsp;ProMotion cùng độ phân giải cao&nbsp;264 pixel mỗi inch. Màn hình này cũng được trang bị lớp phủ chống bám vân tay và chống phản xạ, nâng cao trải nghiệm cho người dùng.</p>
                           <p><img decoding="async" class="cpslazy loaded" src="https://cdn.cellphones.com.vn/media/wysiwyg/tablet/apple/ipad-pro-11-2021-1.jpg" alt="Một vài điểm khác biệt từ ngoại hình, màn hình 11 inches, Mini-LED" data-src="https://cdn.cellphones.com.vn/media/wysiwyg/tablet/apple/ipad-pro-11-2021-1.jpg" data-ll-status="loaded"></p>
                           <h3>Sức mạnh kinh ngạc từ con chip Apple M1</h3>
                           <p>iPad Pro 11 2021 được cung cấp sức mạnh bởi con chip M1 với CPU 8 nhân và GPU 8 nhân. Nhờ đó mà thế hệ iPad Pro năm nay nhanh hơn rất nhiều lần so với iPad 2010 ban đầu và nhanh hơn tới 50% so với iPad Pro 2020. Theo nhà sản xuất cho biết, những cái tiến này giúp máy thực hiện chỉnh sửa video 4K và thiết kế 3D tốt hơn.</p>
                           <p><img decoding="async" class="cpslazy loaded" src="https://cdn.cellphones.com.vn/media/wysiwyg/tablet/apple/ipad-pro-11-2021-2.jpg" alt="Sức mạnh kinh ngạc từ Apple A13Z" data-src="https://cdn.cellphones.com.vn/media/wysiwyg/tablet/apple/ipad-pro-11-2021-2.jpg" data-ll-status="loaded"></p>
                           <p>iPad Pro 2021 được trang bị đến 4 loa, khung nhôm với chấu sạc từ tính dành cho Apple Pencil nằm ở hai bên hông cũng như cổng USB-C nằm ở cạnh bên dưới để sạc.</p>
                           <h3>Cụm camera 12MP mang lại hình ảnh chất lượng</h3>
                           <p>Máy tính bảng&nbsp;iPad Pro 2021 được trang bị cụm camera sau với cacmera góc siêu rộng 12MP với góc chụp 122 độ. Bên cạnh là camera siêu rộng 10MP cuối cùng là máy quét LiDAR. Camera trước trên máy với khẩu độ 12MP, hỗ trợ góc chụp lên đến 122 độ.</p>
                           <p><img decoding="async" class="cpslazy loaded" src="https://cdn.cellphones.com.vn/media/wysiwyg/tablet/apple/ipad-pro-11-2021-3.jpg" alt="Cụm camera 12MP mang lại hình ảnh chất lượng" data-src="https://cdn.cellphones.com.vn/media/wysiwyg/tablet/apple/ipad-pro-11-2021-3.jpg" data-ll-status="loaded"></p>
                           <p>Camera trên iPad&nbsp;Pro 2021 với tính năng&nbsp;Smart HDR 3 mang lại khả năng chụp ảnh và quay video một cách toàn diện.</p>
                           <h3>Kết nối không dây nhanh chóng với wifi 6 và 5G</h3>
                           <p>Máy tính bảng iPad Pro 2021 với hệ thống wifi 6 mang lại khả năng kết nối siêu nhanh. Ngoài ra máy còn được trang bị kết nối 5G thế hệ mới magn lại khả năng truyền tải nhanh vượt trội.</p>
                           <p><img decoding="async" class="cpslazy loaded" src="https://cdn.cellphones.com.vn/media/wysiwyg/tablet/apple/ipad-pro-11-2021-1.JPG" alt="Kết nối không dây nhanh chóng với wifi 6 và 5G" data-src="https://cdn.cellphones.com.vn/media/wysiwyg/tablet/apple/ipad-pro-11-2021-1.JPG" data-ll-status="loaded"></p>
                           <p>Về khả năng giải trí, iPad Pro 2021 với hệ thống 4 loa Dolby Atmos mang đến âm thanh chất lượng như trong rạp hát. Nhờ vậy người dùng có thể thoải mái trải nghiệm nghe nhạc, xem phim với chất lượng âm thanh sống động.</p>
                           <h3>Hỗ trợ Apple Pencil cùng hệ điều hành iPad OS mượt mà</h3>
                           <p>Tablet iPad Pro 2021 có thể kết nối với Apple Pencil giúp người dùng sử dụng ghi chú tốt hơn. Sự kết hợp này mang lại cảm giác như trực quan và chính xác như đang ghi chú, vẽ tranh trên giấy.&nbsp;Thiết kế Apple Pencil với khả năng gắn từ tính cùng đầu bút có độ nghiêng và độ nhạy cao, tối ưu cho trải nghiệm người dùng.</p>
                           <p><img decoding="async" class="cpslazy loaded" src="https://cdn.cellphones.com.vn/media/wysiwyg/tablet/apple/ipad-pro-11-2021-2.JPG" alt="Hỗ trợ Apple Pencil cùng hệ điều hành iPad OS mượt mà" data-src="https://cdn.cellphones.com.vn/media/wysiwyg/tablet/apple/ipad-pro-11-2021-2.JPG" data-ll-status="loaded"></p>
                           <p>Là một hệ điều hành do chính Apple sản xuất nên iPadOS khá giống iOS. Người dùng iPad Pro 2021 sẽ có thể đa nhiệm một cách dễ dàng. Các thao tác như dán và sao chép cũng được thực hiện một cách dễ dàng hơn.</p>
                           <p>iPad Pro 2021 còn sở hữu kho ứng dụng vô cùng phong phú với hơn 1 triệu ứng dụng khác nhau trên AppStore.</p>
                        </div>
                        <div class="product-footer-showmore"><a title="Đọc thêm" href="javascript:void(0);" class="button_readmore">Xem thêm <i class="fa fa-angle-down"></i></a></div>
                        <script type="text/javascript">
                           jQuery(document).ready(function () {
                           	jQuery(".product-footer-showmore .button_readmore").click(function(){	
                           		jQuery(".product-page-sections .product-section").addClass("active");
                           		jQuery(".product-page-sections .product-section.active .product-footer-showmore").remove();
                           	});	
                           });
                        </script>
                     </div>
                     <div class="product-video-reviews show-for-medium">
                        <h3>Video đánh giá sản phẩm</h3>
                        <div class="list-video-reviews">
                           <div class="item-video">
                              <a href="https://www.youtube.com/watch?v=zpwXVrYKJXY" class="open-video">
                                 <div class="img-video"><img src="https://img.youtube.com/vi/zpwXVrYKJXY/maxresdefault.jpg"></div>
                                 <div class="title-video"></div>
                              </a>
                           </div>
                           <div class="item-video">
                              <a href="https://www.youtube.com/watch?v=C4mBYwsctrA" class="open-video">
                                 <div class="img-video"><img src="https://img.youtube.com/vi/C4mBYwsctrA/maxresdefault.jpg"></div>
                                 <div class="title-video"></div>
                              </a>
                           </div>
                           <div class="item-video">
                              <a href="https://www.youtube.com/watch?v=7J-diJVtm8U" class="open-video">
                                 <div class="img-video"><img src="https://img.youtube.com/vi/7J-diJVtm8U/maxresdefault.jpg"></div>
                                 <div class="title-video"></div>
                              </a>
                           </div>
                        </div>
                     </div>
                     <div class="product-reviews">
                        <div class="row">
                           <div class="large-12 col pb-0 mb-0">
                              <div class="panel entry-content">
                                 <div id="ywar_reviews">
                                    <div id="reviews_summary">
                                       <h3>ĐÁNH GIÁ SẢN PHẨM</h3>
                                       <div class="row table-reviews">
                                          <div class="star-rating-col medium-3">
                                             <div class="star-point">
                                                <p style="font-size: 16px;font-weight: 600;">SAO TRUNG BÌNH</p>
                                                <span>5</span> trên 5
                                             </div>
                                             <div class="star-rating">
                                                <span style="width:100%">
                                                <strong class="rating">5</strong> out of <span>5</span>						based on <span class="rating">2</span> customer ratings					</span>
                                             </div>
                                          </div>
                                          <div class="medium-6">
                                             <div class="reviews_bar">
                                                <div class="ywar_review_row">
                                                   <a title="Reviews with 5 stars" href="/san-pham/apple-ipad-pro-11-2021-m1-wifi-2tb-i-chinh-hang-apple-viet-nam/?stars=5" class="ywar_filter_reviews" data-dialog="" data-id_product="1693" data-stars="5">							<span class="ywar_stars_value" style="color:rgb(0,0,0)"> 5 <i class="fas fa-star"></i></span>
                                                   <span class="ywar_num_reviews" style="color:#000000"> 1 </span>
                                                   <span class="ywar_rating_bar">
                                                   <span style="background-color:#f4f4f4" class="ywar_scala_rating">
                                                   <span class="ywar_perc_rating" style="width: 100%; background-color:rgb(224,5,43)">
                                                   <span style="color:rgb(224,5,43)" class="ywar_perc_value">100 % </span>
                                                   </span>
                                                   </span>
                                                   </span>
                                                   </a>						
                                                </div>
                                                <div class="ywar_review_row">
                                                   <span class="ywar_stars_value" style="color:rgb(0,0,0)"> 4 <i class="fas fa-star"></i></span>
                                                   <span class="ywar_num_reviews" style="color:#000000"> 0 </span>
                                                   <span class="ywar_rating_bar">
                                                   <span style="background-color:#f4f4f4" class="ywar_scala_rating">
                                                   <span class="ywar_perc_rating" style="width: 0%; background-color:rgb(224,5,43)">
                                                   <span style="color:rgb(224,5,43)" class="ywar_perc_value">0 % </span>
                                                   </span>
                                                   </span>
                                                   </span>
                                                </div>
                                                <div class="ywar_review_row">
                                                   <span class="ywar_stars_value" style="color:rgb(0,0,0)"> 3 <i class="fas fa-star"></i></span>
                                                   <span class="ywar_num_reviews" style="color:#000000"> 0 </span>
                                                   <span class="ywar_rating_bar">
                                                   <span style="background-color:#f4f4f4" class="ywar_scala_rating">
                                                   <span class="ywar_perc_rating" style="width: 0%; background-color:rgb(224,5,43)">
                                                   <span style="color:rgb(224,5,43)" class="ywar_perc_value">0 % </span>
                                                   </span>
                                                   </span>
                                                   </span>
                                                </div>
                                                <div class="ywar_review_row">
                                                   <span class="ywar_stars_value" style="color:rgb(0,0,0)"> 2 <i class="fas fa-star"></i></span>
                                                   <span class="ywar_num_reviews" style="color:#000000"> 0 </span>
                                                   <span class="ywar_rating_bar">
                                                   <span style="background-color:#f4f4f4" class="ywar_scala_rating">
                                                   <span class="ywar_perc_rating" style="width: 0%; background-color:rgb(224,5,43)">
                                                   <span style="color:rgb(224,5,43)" class="ywar_perc_value">0 % </span>
                                                   </span>
                                                   </span>
                                                   </span>
                                                </div>
                                                <div class="ywar_review_row">
                                                   <span class="ywar_stars_value" style="color:rgb(0,0,0)"> 1 <i class="fas fa-star"></i></span>
                                                   <span class="ywar_num_reviews" style="color:#000000"> 0 </span>
                                                   <span class="ywar_rating_bar">
                                                   <span style="background-color:#f4f4f4" class="ywar_scala_rating">
                                                   <span class="ywar_perc_rating" style="width: 0%; background-color:rgb(224,5,43)">
                                                   <span style="color:rgb(224,5,43)" class="ywar_perc_value">0 % </span>
                                                   </span>
                                                   </span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="medium-3 button-review text-center">
                                             <button class="send-review" fdprocessedid="3pbhks"><a href="#review_form_wrapper">Gửi đánh giá của bạn</a></button>
                                          </div>
                                       </div>
                                       <div id="reviews_header"></div>
                                    </div>
                                    <div id="reviews_order" style="position: static; zoom: 1;">
                                       <a style="border-bottom: 2px solid rgb(224,5,43)" id="most_recent_reviews" title="Most recent reviews" href="/san-pham/apple-ipad-pro-11-2021-m1-wifi-2tb-i-chinh-hang-apple-viet-nam/?order=recent" class="ywar_filter_order active" data-id_product="1693" data-order="recent" rel="nofollow">Most recent reviews</a>
                                       <a style="border-bottom: 2px solid rgb(224,5,43)" id="most_helpful_reviews" title="Most helpful reviews" href="/san-pham/apple-ipad-pro-11-2021-m1-wifi-2tb-i-chinh-hang-apple-viet-nam/?order=helpful" class="ywar_filter_order" data-id_product="1693" data-order="helpful" rel="nofollow">Most helpful reviews</a>
                                    </div>
                                    <div id="reviews_dialog"></div>
                                 </div>
                                 <div id="reviews" class="ywar-review-content">
                                    <div id="comments">
                                       <ol class="commentlist">
                                          <li id="li-comment-2165" class="clearfix ">
                                             <div id="comment-2165" class="comment_container clearfix ">
                                                <img alt="" src="https://secure.gravatar.com/avatar/75f4499b59200d38f057e967e297590ab2ebaad09283ddcb3e66ffb1f1a9f395?s=60&amp;d=mm&amp;r=g" srcset="https://secure.gravatar.com/avatar/75f4499b59200d38f057e967e297590ab2ebaad09283ddcb3e66ffb1f1a9f395?s=120&amp;d=mm&amp;r=g 2x" class="avatar avatar-60 photo" height="60" width="60" loading="lazy" decoding="async">			
                                                <p class="meta">
                                                   <strong>ok</strong>
                                                   <time datetime="2024-12-23T22:27:37+07:00">23/12/2024</time>
                                                </p>
                                                <div class="comment-text clearfix ">
                                                   <div class="description ywar-description">
                                                      <p><span class="review_content">ngon nhé</span></p>
                                                      <div class="review_vote">
                                                         <span class="review_helpful">Nhận xét này có hữu ích cho bạn?</span>
                                                         <a id="vote_yes_2165" class="ywar_votereview yes" href="https://cellphones.mauthemewp.com/wp-login.php?redirect_to=https%3A%2F%2Fcellphones.mauthemewp.com%2Fsan-pham%2Fapple-ipad-pro-11-2021-m1-wifi-2tb-i-chinh-hang-apple-viet-nam%2F%3Fvote%3D1%26amp%3Breview_id%3D2165%26amp%3B_wpnonce%3Df2d0bc22a9" data-vote_review="1" data-id_review="2165" title="This reviews is helpful" rel="nofollow"></a>
                                                         <a id="vote_no_2165" class="ywar_votereview not" href="https://cellphones.mauthemewp.com/wp-login.php?redirect_to=https%3A%2F%2Fcellphones.mauthemewp.com%2Fsan-pham%2Fapple-ipad-pro-11-2021-m1-wifi-2tb-i-chinh-hang-apple-viet-nam%2F%3Fvote%3D-1%26amp%3Breview_id%3D2165%26amp%3B_wpnonce%3Df2d0bc22a9" data-vote_review="-1" data-id_review="2165" title="This reviews is not helpful" rel="nofollow"></a><span class="ywar_review_helpful">0 of 0 people found this review helpful</span>
                                                      </div>
                                                      <div class="reply review-actions">
                                                         <div class="reply"><a class="comment-reply-link button" href="https://cellphones.mauthemewp.com/san-pham/apple-ipad-pro-11-2021-m1-wifi-2tb-i-chinh-hang-apple-viet-nam/?replytocom=60#respond" onclick="return addComment.moveForm( &quot;comment-2165&quot;, &quot;60&quot;, &quot;review_form&quot;, &quot;1693&quot; )" aria-label="Bình luận to a previous review" rel="nofollow">Bình luận</a></div>
                                                      </div>
                                                      <p></p>
                                                   </div>
                                                </div>
                                             </div>
                                          </li>
                                          <li id="li-comment-2160" class="clearfix ">
                                             <div id="comment-2160" class="comment_container clearfix ">
                                                <img alt="" src="https://secure.gravatar.com/avatar/647297fbc1be2d28ef628368e5f99345352b19ef00da73d21ac7bc3dafdd86b9?s=60&amp;d=mm&amp;r=g" srcset="https://secure.gravatar.com/avatar/647297fbc1be2d28ef628368e5f99345352b19ef00da73d21ac7bc3dafdd86b9?s=120&amp;d=mm&amp;r=g 2x" class="avatar avatar-60 photo" height="60" width="60" loading="lazy" decoding="async">			
                                                <p class="meta">
                                                   <strong>Fgg</strong>
                                                   <time datetime="2024-07-13T23:17:04+07:00">13/07/2024</time>
                                                </p>
                                                <div class="star-rating" title="Rated 5 out of 5">
                                                   <span style="width:100%"><strong>5</strong> out of 5</span>
                                                </div>
                                                <div class="comment-text clearfix ">
                                                   <div class="description ywar-description">
                                                      <p><span class="review_content">Fggghhhggg</span></p>
                                                      <div class="review_vote">
                                                         <span class="review_helpful">Nhận xét này có hữu ích cho bạn?</span>
                                                         <a id="vote_yes_2160" class="ywar_votereview yes" href="https://cellphones.mauthemewp.com/wp-login.php?redirect_to=https%3A%2F%2Fcellphones.mauthemewp.com%2Fsan-pham%2Fapple-ipad-pro-11-2021-m1-wifi-2tb-i-chinh-hang-apple-viet-nam%2F%3Fvote%3D1%26amp%3Breview_id%3D2160%26amp%3B_wpnonce%3Df2d0bc22a9" data-vote_review="1" data-id_review="2160" title="This reviews is helpful" rel="nofollow"></a>
                                                         <a id="vote_no_2160" class="ywar_votereview not" href="https://cellphones.mauthemewp.com/wp-login.php?redirect_to=https%3A%2F%2Fcellphones.mauthemewp.com%2Fsan-pham%2Fapple-ipad-pro-11-2021-m1-wifi-2tb-i-chinh-hang-apple-viet-nam%2F%3Fvote%3D-1%26amp%3Breview_id%3D2160%26amp%3B_wpnonce%3Df2d0bc22a9" data-vote_review="-1" data-id_review="2160" title="This reviews is not helpful" rel="nofollow"></a><span class="ywar_review_helpful">0 of 0 people found this review helpful</span>
                                                      </div>
                                                      <div class="reply review-actions">
                                                         <div class="reply"><a class="comment-reply-link button" href="https://cellphones.mauthemewp.com/san-pham/apple-ipad-pro-11-2021-m1-wifi-2tb-i-chinh-hang-apple-viet-nam/?replytocom=57#respond" onclick="return addComment.moveForm( &quot;comment-2160&quot;, &quot;57&quot;, &quot;review_form&quot;, &quot;1693&quot; )" aria-label="Bình luận to a previous review" rel="nofollow">Bình luận</a></div>
                                                      </div>
                                                      <p></p>
                                                   </div>
                                                </div>
                                             </div>
                                          </li>
                                       </ol>
                                    </div>
                                    <div id="review_form_wrapper">
                                       <div id="review_form">
                                          <div id="respond" class="comment-respond">
                                             <h3 id="reply-title" class="comment-reply-title"><span class="review_label">Add a review</span> <small><a rel="nofollow" id="cancel-comment-reply-link" href="/san-pham/apple-ipad-pro-11-2021-m1-wifi-2tb-i-chinh-hang-apple-viet-nam/#respond" style="display:none;">Hủy</a></small></h3>
                                             <form action="https://cellphones.mauthemewp.com/wp-comments-post.php" method="post" id="commentform" class="comment-form" enctype="multipart/form-data">
                                                <p class=" comment-form-rating">
                                                   <label for="rating">Your Rating</label>
                                                <p class="stars">						<span role="group" aria-labeledby="comment-form-rating-label">							<a role="radio" tabindex="0" aria-checked="false" class="star-1" href="#">1 trên 5 sao</a>							<a role="radio" tabindex="-1" aria-checked="false" class="star-2" href="#">2 trên 5 sao</a>							<a role="radio" tabindex="-1" aria-checked="false" class="star-3" href="#">3 trên 5 sao</a>							<a role="radio" tabindex="-1" aria-checked="false" class="star-4" href="#">4 trên 5 sao</a>							<a role="radio" tabindex="-1" aria-checked="false" class="star-5" href="#">5 trên 5 sao</a>						</span>					</p>
                                                <select name="rating" id="rating" style="display: none;">
                                                   <option value="">Rate…</option>
                                                   <option value="5">Perfect</option>
                                                   <option value="4">Good</option>
                                                   <option value="3">Average</option>
                                                   <option value="2">Not that bad</option>
                                                   <option value="1">Very Poor</option>
                                                </select>
                                                </p>
                                                <p class="comment-form-comment"><label for="comment">Đánh giá của bạn</label><textarea id="comment" name="comment" cols="45" rows="8" aria-required="true"></textarea></p>
                                                <input type="hidden" name="action" value="submit-form">
                                                <p class="upload_section ">
                                                   <label for="ywar-uploadFile"> Thêm ảnh đánh giá </label>
                                                   <input type="button" value="Chọn ảnh" id="do_uploadFile" fdprocessedid="7wzple">
                                                   <input type="file" name="ywar-uploadFile[]" id="ywar-uploadFile" multiple="multiple"><span class="ywar-upload-limitation">Các định dạng ảnh được chấp nhận: jpg,png. </span>
                                                </p>
                                                <p></p>
                                                <ul id="uploadFileList"></ul>
                                                <p></p>
                                                <p class="comment-form-author"><label for="author">Name <span class="required">*</span></label> <input id="author" name="author" type="text" value="" size="30" aria-required="true" fdprocessedid="eg50hf"></p>
                                                <p class="comment-form-email"><label for="email">Email <span class="required">*</span></label> <input id="email" name="email" type="text" value="" size="30" aria-required="true" fdprocessedid="vomd2u"></p>
                                                <p class="comment-form-cookies-consent"><input id="wp-comment-cookies-consent" name="wp-comment-cookies-consent" type="checkbox" value="yes"> <label for="wp-comment-cookies-consent">Lưu tên của tôi, email, và trang web trong trình duyệt này cho lần bình luận kế tiếp của tôi.</label></p>
                                                <p class="form-submit"><input name="submit" type="submit" id="submit" class="submit" value="Gửi đánh giá" fdprocessedid="gvvfu"> <input type="hidden" name="comment_post_ID" value="1693" id="comment_post_ID">
                                                   <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                                                </p>
                                             </form>
                                          </div>
                                          <!-- #respond -->
                                       </div>
                                    </div>
                                    <div class="clear"></div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col medium-3 content-product-footer-right">
                  <div class="product-footer-right">
                     <h3>Thông số kỹ thuật</h3>
                     <div class="table">
                        <table id="tskt">
                           <tbody>
                              <tr>
                                 <td>Kích thước màn hình</td>
                                 <td>11 inches</td>
                              </tr>
                              <tr>
                                 <td>Công nghệ màn hình</td>
                                 <td>IPS LCD</td>
                              </tr>
                              <tr>
                                 <td>Camera sau</td>
                                 <td>12MP góc rộng<br>
                                    10MP góc siêu rộng
                                 </td>
                              </tr>
                              <tr>
                                 <td>Camera trước</td>
                                 <td>12MP góc siêu rộng 122 độ</td>
                              </tr>
                              <tr>
                                 <td>Chipset</td>
                                 <td>Apple M1 8 nhân</td>
                              </tr>
                              <tr>
                                 <td>Dung lượng RAM</td>
                                 <td>16 GB</td>
                              </tr>
                              <tr>
                                 <td>Bộ nhớ trong</td>
                                 <td>2 TB</td>
                              </tr>
                              <tr>
                                 <td>Pin</td>
                                 <td>7538mAh</td>
                              </tr>
                              <tr>
                                 <td>Hệ điều hành</td>
                                 <td>iPadOS</td>
                              </tr>
                              <tr>
                                 <td>Độ phân giải màn hình</td>
                                 <td>2048 x 2732 pixels</td>
                              </tr>
                              <tr>
                                 <td>Tính năng màn hình</td>
                                 <td>Tần số quét 120Hz<br>
                                    Tỉ lệ tương phản 1000000:1<br>
                                    Độ sáng 600 nit<br>
                                    Dải màu P3<br>
                                    Công nghệ True-Tone
                                 </td>
                              </tr>
                              <tr>
                                 <td>Loại CPU</td>
                                 <td>8 nhân CPU</td>
                              </tr>
                              <tr>
                                 <td>GPU</td>
                                 <td>8 nhân GPU</td>
                              </tr>
                              <tr>
                                 <td>Quay video</td>
                                 <td>4K@24/25/30/60fps, 1080p@25/30/60/120/240fps; Chống rung EIS</td>
                              </tr>
                              <tr>
                                 <td>Quay video trước</td>
                                 <td>1080p@25/30/60fps, Chống rung EIS</td>
                              </tr>
                              <tr>
                                 <td>Kích thước</td>
                                 <td>247.6 x 178.5 x 5.9 mm</td>
                              </tr>
                              <tr>
                                 <td>Trọng lượng</td>
                                 <td>466 g</td>
                              </tr>
                              <tr>
                                 <td>Chất liệu mặt lưng</td>
                                 <td>Kim loại</td>
                              </tr>
                              <tr>
                                 <td>Chất liệu khung viền</td>
                                 <td>Kim loại</td>
                              </tr>
                              <tr>
                                 <td>Công nghệ sạc</td>
                                 <td>Sạc nhanh 18W</td>
                              </tr>
                              <tr>
                                 <td>Cổng sạc</td>
                                 <td>USB Type-C</td>
                              </tr>
                              <tr>
                                 <td>Các loại cảm biến</td>
                                 <td>Cảm biến ánh sáng, Cảm biến áp kế, Cảm biến gia tốc, Cảm biến tiệm cận, Con quay hồi chuyển, La bàn</td>
                              </tr>
                              <tr>
                                 <td>Khe cắm thẻ nhớ</td>
                                 <td>Không</td>
                              </tr>
                              <tr>
                                 <td>Wi-Fi</td>
                                 <td>Wi-Fi 6</td>
                              </tr>
                              <tr>
                                 <td>Bluetooth</td>
                                 <td>v5.0</td>
                              </tr>
                           </tbody>
                        </table>
                        <a id="more-specific" class="btn btn-default btn-sm" href="javascript:void()">Xem thêm</a>
                        <script type="text/javascript">
                           jQuery(document).ready(function () {
                           	jQuery("#more-specific").click(function(){	
                           		jQuery(".product-footer-right .table table tr").css("display", "table-row");
                           	});
                           });
                        </script>
                     </div>
                  </div>
                  <div class="product-video-reviews hide-for-medium">
                     <h3>Video đánh giá sản phẩm</h3>
                     <div class="list-video-reviews">
                        <div class="item-video">
                           <a href="https://www.youtube.com/watch?v=zpwXVrYKJXY" class="open-video">
                              <div class="img-video"><img src="https://img.youtube.com/vi/zpwXVrYKJXY/maxresdefault.jpg"></div>
                              <div class="title-video"></div>
                           </a>
                        </div>
                        <div class="item-video">
                           <a href="https://www.youtube.com/watch?v=C4mBYwsctrA" class="open-video">
                              <div class="img-video"><img src="https://img.youtube.com/vi/C4mBYwsctrA/maxresdefault.jpg"></div>
                              <div class="title-video"></div>
                           </a>
                        </div>
                        <div class="item-video">
                           <a href="https://www.youtube.com/watch?v=7J-diJVtm8U" class="open-video">
                              <div class="img-video"><img src="https://img.youtube.com/vi/7J-diJVtm8U/maxresdefault.jpg"></div>
                              <div class="title-video"></div>
                           </a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
