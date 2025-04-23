@Entry
@Component
struct Page_07_background {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('123')
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)/*
         * 背景图有两个参数
         * 1. 参数1  就是图片地址
         * 2. 参数2  可选     用于平铺图片
         *      ImageRepeat枚举
         * */
        .backgroundImage($r('app.media.startIcon'), ImageRepeat.NoRepeat)// 背景图 装饰性质 辅助性质
        .align(Alignment.Top)/*
         * 背景大小两种玩法:
         * 1.给对象参数  {width: 100}
         * 2.给枚举参数
         * */
          // .backgroundImageSize({ width: 100 })
          // .backgroundImageSize(ImageSize.Cover)
          /*
         * 背景位置两种玩法:
         * 1. 给对象参数  {x: 100, y:10}    推荐 精准控制
         * 2. 给枚举参数 Alignment  九个位置
         * */
          // .backgroundImagePosition({ x: 100, y: 10 })
        .backgroundImagePosition(Alignment.Bottom)


    }
    .height('100%')
    .width('100%')
  }
}