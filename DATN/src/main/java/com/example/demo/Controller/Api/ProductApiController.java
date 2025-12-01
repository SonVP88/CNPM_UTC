package com.example.demo.Controller.Api;

import com.example.demo.Entity.ChiTietSanPham;
import com.example.demo.Entity.GiamGiaChiTietSanPham;
import com.example.demo.Repository.ColorDetailResponse;
import com.example.demo.Repository.ProductDetailResponse;
import com.example.demo.Service.ChiTietSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ProductApiController {

    private final ChiTietSanPhamService chiTietSanPhamService;

    public ProductApiController(ChiTietSanPhamService chiTietSanPhamService) {
        this.chiTietSanPhamService = chiTietSanPhamService;
    }

    // API lấy chi tiết sản phẩm theo màu & dung lượng
    @GetMapping("/getProductDetail")
    public ResponseEntity<ProductDetailResponse> getProductDetail(
            @RequestParam("id") long id,
            @RequestParam("maDungLuong") Long maDungLuong,
            @RequestParam("maMauSac") Long maMauSac) {

        ChiTietSanPham chiTiet = chiTietSanPhamService.findByTenDungLuongMauSac(id, maDungLuong, maMauSac);
        if (chiTiet == null) {
            return ResponseEntity.notFound().build();
        }

        GiamGiaChiTietSanPham giamGiaChiTiet = chiTietSanPhamService.findByChiTietSanPham(chiTiet);

        ProductDetailResponse response = new ProductDetailResponse();
        response.setHinhAnhURL(chiTiet.getHinhAnhURL());
        response.setGiaBan(chiTiet.getGiaBan());
        response.setGiaBanGG(giamGiaChiTiet != null ? giamGiaChiTiet.getGiaSauKhiGiam() : null);

        return ResponseEntity.ok(response);
    }

    // API lấy danh sách màu theo dung lượng
    @GetMapping("/getColorsByCapacity")
    public ResponseEntity<List<ColorDetailResponse>> getColorsByCapacity(
            @RequestParam("id") long maSanPham,
            @RequestParam("maDungLuong") Long maDungLuong) {

        // Lấy tất cả chi tiết sản phẩm theo id và dung lượng
        List<ChiTietSanPham> chiTietList = chiTietSanPhamService.findBySanPhamAndDungLuong(maSanPham, maDungLuong);

        if (chiTietList == null || chiTietList.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        List<ColorDetailResponse> responseList = new ArrayList<>();

        for (ChiTietSanPham chiTiet : chiTietList) {
            GiamGiaChiTietSanPham giamGiaChiTiet = chiTietSanPhamService.findByChiTietSanPham(chiTiet);
            ColorDetailResponse colorDetail = new ColorDetailResponse();
            colorDetail.setMaMauSac(chiTiet.getMauSac().getMaMauSac()); // giả sử có phương thức getId()
            colorDetail.setTenMauSac(chiTiet.getMauSac().getTenMauSac()); // tên màu
            colorDetail.setHinhAnhURL(chiTiet.getHinhAnhURL());
            colorDetail.setGiaBan(chiTiet.getGiaBan().doubleValue());
            colorDetail.setGiaBanGG(giamGiaChiTiet != null ? giamGiaChiTiet.getGiaSauKhiGiam().doubleValue() : null);

            responseList.add(colorDetail);
        }

        return ResponseEntity.ok(responseList);
    }
}
