import UIKit

// Queue - main, global, custom
DispatchQueue.main.async {
    //UI update
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
} //UI, 사용자 Interaction 등은 main queue

DispatchQueue.global(qos: .userInteractive).async {
    //지금 당장 해야하는 것
}

DispatchQueue.global(qos: .userInitiated).async {
    //
}

DispatchQueue.global(qos: .default).async {
    //우선순위 신경 안쓰겠다.
}

DispatchQueue.global(qos: .utility).async {
    //시간이 좀 걸리는 일들 (사용자가 기다리진 않음)
    //네트워킹, 큰 파일 불러오기 등
}

DispatchQueue.global(qos: .background).async {
    //사용자한테 당장 인식될 필요 없는 것들
    //뉴스 데이터 미리 받기, 위치, 영상 등
}

// - Custom Queue
let concurrentQueue = DispatchQueue(label: "concurrent", qos: .background, attributes: .concurrent)
let serialQueue = DispatchQueue(label: "serial", qos: .background)

// Complex Situation
func downloadImageFromServer() -> UIImage {
    //Heavy Task
    return UIImage()
}

func updateUI(image: UIImage) {
    
}
DispatchQueue.global(qos: .background).async {
    let image = downloadImageFromServer()
    
    //다시 main queue로 넘겨준다. (main thread에서 해야하는 일들은 여기서 다 해야한다.)
    DispatchQueue.main.async {
        //update UI
        updateUI(image: image)
    }
    
}

// Sync, Async


