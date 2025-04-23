@Entry
@Component
struct Page_05_demo_margin_padding {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Column() {
        // Text('123')
        Image($r('app.media.startIcon'))
          .width(100)
          .aspectRatio(1)
          .borderRadius(50)
          .objectFit(ImageFit.Contain)

        Text('大王叫我来巡山')
          .margin({ top: 10 })
          .fontWeight(700)

        Button('QQ登录')
          .width('100%')
          .margin({ top: 30 })

        Button('微信登录')
          .width('100%')
          .margin({ top: 10 })
      }
      .padding(20)
      .width('100%')
      // .height(500)
      .backgroundColor(Color.Pink)
    }
    .height('100%')
    .width('100%')
  }
}