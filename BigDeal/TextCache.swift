//
//  File.swift
//  BigDea! WatchKit Extension
//
//  Created by 国望恒 on 2021/7/2.
//

import Alamofire

class TextCache: ObservableObject {

    @Published var text: String?
    
    func viewDidLoad() -> Void {
        //接口地址
        let urls:String = "https://api.doctorxiong.club/v1/fund/detail"
        
        //请求头
        let headers: HTTPHeaders = [
            "x-forwarded-for": "10.0.0.13",
            "Content-Type": "application/json;charset=UTF-8"
        ]

        
        //参数
        let parameters:Dictionary = ["code":"000961"]
        //Alamofire 请求实例
        AF.request(URL(string: urls)!, method: .get, parameters: parameters, headers: headers)
          .responseString {
            response in
            switch response.result {
                case .success(let jsonStr):
                    self.text = jsonStr
                    break
                case .failure(let error):
                    print("error:\(error)")
                    break
           }
        }
    }

}
