@Entry
@Component
struct Page_10_shadow {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('阴影')
        .width(100)
        .height(100)
        .backgroundColor(Color.Pink)/*
         * 参数是对象
         * color: 颜色
         * offsetX: 水平偏移
         * offsetY: 竖直偏移
         * radius: 模糊
         * */
        .shadow({
          color: Color.Black,
          offsetX: 20,
          offsetY: 10,
          radius: 10,
        })

    }
    .height('100%')
    .width('100%')
  }
}