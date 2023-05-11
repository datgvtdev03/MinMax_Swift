//
//  ViewController.swift
//  MinMax
//
//  Created by Thanh Dat on 11/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtSoThuNhat: UITextField!
    
    @IBOutlet weak var txtSoThuHai: UITextField!
    
    @IBOutlet weak var lblKetQua: UILabel!
    
    //    func tinhTong(soThuNhat: Float, soThuHai: Float) -> Float {
    //            return soThuNhat + soThuHai
    //        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ketQua = kiemTraDiem(diemToan: 10, diemVan: 8, diemLy: 3)
        print ("Môn điểm cao nhất là môn \(ketQua.tenMonDiemCaoNhat) Môn điểm thấp nhất là môn \(ketQua.tenMonDiemThapNhat)")
//        let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
//        print("min is \(bounds.min) and max is \(bounds.max)")
    }
    
    
    func kiemTraDiem(diemToan: Float, diemVan: Float, diemLy: Float) -> (tenMonDiemThapNhat: String, tenMonDiemCaoNhat:String){

        let tenMon = ["Toán": diemToan, "Văn": diemVan, "Lý": diemLy]
        
        let diemThapNhat = tenMon.values.min() ?? 0
        let diemCaoNhat = tenMon.values.max() ?? 0
        
        print("\(diemThapNhat)")
        print("\(diemCaoNhat)")

        var tenMonDiemThapNhat = ""
        var tenMonDiemCaoNhat = ""
        
        for check in tenMon {
            if(check.value == diemThapNhat){
                tenMonDiemThapNhat = check.key
            }
            if check.value == diemCaoNhat {
                tenMonDiemCaoNhat = check.key
            }
        }
        return(tenMonDiemThapNhat,tenMonDiemCaoNhat)
    }
    
//    func minMax(array: [Int]) -> (min: Int, max: Int) {
//        var currentMin = array[0]
//        var currentMax = array[0]
//        for value in array[1..<array.count] {
//            if value < currentMin {
//                currentMin = value
//            } else if value > currentMax {
//                currentMax = value
//            }
//        }
//        return (currentMin, currentMax)
//    }
//    
    
    
    //    @IBAction func btnKetQua(_ sender: UIButton) {
    //        if let soThuNhatNhapVao = Float(txtSoThuNhat.text!) {
    //                    if let soThuHaiNhapVao = Float(txtSoThuHai.text!) {
    //                        let ketQua = tinhTong(soThuNhat: soThuNhatNhapVao, soThuHai: soThuHaiNhapVao)
    //                        lblKetQua.text = "Tổng là: \(ketQua)"
    //                    } else {
    //                        lblKetQua.text = "Số thứ hai không phải là một số thực"
    //                    }
    //                } else {
    //                    lblKetQua.text = "Số thứ nhất không phải là một số thực"
    //                }
    //    }
    //}
    
}
