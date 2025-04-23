@Entry
@Component
struct Page_03_tubiao {
  @State message: string = 'Hello World';

  build() {
    Column() {

      Image($r('app.media.ic_public_bluetooth'))
        .width(50)
        .aspectRatio(1)
        //   由于下载的svg格式的图标  所以可以任意调整图标颜色
        .fillColor(Color.Green)

      // 系统图标虽然无需下载 但是会有一些语法细节不一样
      Image($r('sys.media.ohos_ic_public_paste'))
        .width(50)
        // .height(50)
        .fillColor(Color.Blue)
    }
    .height('100%')
    .width('100%')
  }
}