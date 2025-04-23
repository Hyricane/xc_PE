@Entry
@Component
struct Page_06_demo_redBook {
  @State message: string = 'Hello World';

  build() {
    Column() {
      // 小红书
      Column() {
        Image($r('app.media.img'))
          .width('100%')// 宽度占满父容器
          .height(200)
          .objectFit(ImageFit.Cover)// 填充方式
          .borderRadius({ topLeft: 10, topRight: 10 })

        Text('哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈')
          .maxLines(2)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .padding(8)

        Text('¥ 87')
          .width('100%')// .backgroundColor(Color.Pink)
          .padding({ left: 10, right: 10 })
          .fontColor(Color.Red)
          .margin({ bottom: 10 })

      }
      .width('50%')
      // .borderRadius(10)
      .border({
        radius: 10
      })
      // .height(300) // 临时给个高度先看到他    后面写完记得注释
      .backgroundColor(Color.White)

    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Gray)
    .padding(10)
  }
}