@Entry
@Component
struct Page_09_gradient {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('渐变')
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)/*
         * 参数是个对象
         * colors:  颜色数组
         * direction:  方向(二选一)
         * angle: 角度(二选一)
         * repeating: 重复  布尔值
         * */
        .linearGradient({
          colors: [
          // 配置第1个颜色 以及位置 0-1
            [Color.Pink, 0],
            // 配置第2个颜色 以及位置
            [Color.Green, 1]
          ],
          direction: GradientDirection.Right, // 左到右
          // angle: 30
          // repeating: true
        })


      Text('渐变')
        .width(200)
        .height(100)
        .backgroundColor(Color.Orange)/*
         * center: 圆的中心位置
         * radius: 圆的大小
         * */
        .radialGradient({
          colors: [
          // 配置第1个颜色 以及位置 0-1
            [Color.Pink, 0],
            // 配置第2个颜色 以及位置
            ['#8df', 1]
          ],
          center: [100, 50],
          radius: 100
        })
    }
    .height('100%')
    .width('100%')
  }
}