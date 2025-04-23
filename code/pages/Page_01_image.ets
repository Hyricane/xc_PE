@Entry
@Component
struct Page_01_image {
  @State message: string = 'Hello World';

  build() {
    Column(){
      //   第一个需求
      Column(){
        Image($r('app.media.startIcon'))
          .width(200)// 图片一般只设置宽  或者高   图片默认根据你设置的宽/高 自动等比例的缩放
        Text('帝师县令')
          .fontWeight(FontWeight.Bold)
          .fontSize(30)
          .lineHeight(60)
        Text('202万字')
          .fontColor(Color.Gray)
        Text('好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字好多字')
          .fontColor(Color.Gray)
          .fontSize(20)
          .lineHeight(30)
          .textIndent(40)
          .maxLines(6)
          .textOverflow({overflow: TextOverflow.Ellipsis})
      }
      .backgroundColor(Color.White)
      .width(260)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)
  }
}