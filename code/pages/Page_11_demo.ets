@Entry
@Component
struct Page_11_demo {
  @State message: string = 'Hello World';

  build() {
    Column() {

      //   华为手机商品
      Column() {

        Image($r('app.media.img'))
          .width(240)
          .aspectRatio(1)

        Text('HUAWEI Mate X5')// .backgroundColor(Color.Pink)
          .width('100%')
          .margin({ top: 20 })
          .fontSize(26)
          .fontWeight(700)

        Text('¥ 12999 起')
          .width('100%')
          .margin({ top: 50 })

        Row() {
          // 他两是整体
          Row() {
            Text('了解更多')
            Image($r('sys.media.ohos_ic_public_arrow_right'))
              .width(20)
              .height(20)
          }
          .margin({ right: 15 })

          // 他两是整体
          Row() {
            Text('购买')
            Image($r('sys.media.ohos_ic_public_arrow_right'))
              .width(20)
              .height(20)
          }
        }
        .margin({ top: 15 })
        // .backgroundColor(Color.Red)
        .width('100%')

      }
      .width(300)
      // .height(500) //高度是临时的!!!
      .border({ radius: 10 })
      .padding(20)
      .backgroundColor(Color.White)
      .shadow({
        color: Color.Black,
        offsetX: 3,
        offsetY: 3,
        radius: 10
      })

    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Gray)
    .padding(10)
  }
}