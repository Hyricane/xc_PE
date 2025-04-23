@Entry
@Component
struct Page_08_demo {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Column() {
        Text('漏洞处理流程')
          .fontSize(30)
          .fontWeight(700)
        // .fontColor(Color.White)

        Text('哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈')
          .fontSize(20)
          .maxLines(2)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .margin({ top: 20 })

        Text('了解更多')
          .border({ width: 2 })
          .width(100)
          .height(50)
          .textAlign(TextAlign.Center)
          .margin({ top: 20 })
      }
      .padding(20)
      .width('100%')
      // .height(300) // 临时高度 一会去掉
      .backgroundImage($r('app.media.img_1')) // 设置背景图
      .backgroundImageSize(ImageSize.Cover)
      .backgroundColor(Color.White)

    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Grey)
    .padding(10)
  }
}