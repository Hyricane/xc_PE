@Entry
@Component
struct Page_02_Image_shuxing {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column(){}
      .width(200)
      // .height(200)
      .aspectRatio(0.5) // 宽高比   宽是高的几倍
      .backgroundColor(Color.Red)

      Image('https://t9.baidu.com/it/u=1527717369,1378858041&fm=3035&app=3035&size=f242,150&n=0&f=JPEG&fmt=auto?s=59A9B9556A577CDE969DD4EB03006033&sec=1745168400&t=051209580205b19595cd1b43a69dabfb')
        .width(200)
        .alt($r('app.media.startIcon')) // 临时代替图片 => 只能本地图

      Image($r('app.media.startIcon'))
        .width(100)
        .height(200)
        .backgroundColor(Color.Brown)
        // .objectFit(ImageFit.Contain) // 填充图片区域 保证图片完整 等比     组件会留白
        // .objectFit(ImageFit.Cover) // 填充图片区域  图片不完整  等比       组件不留白
        .objectFit(ImageFit.Fill) // 填充图片区域  图片完整  不等比       组件不留白
    }
    .width('100%')
    .height('100%')
  }
}








