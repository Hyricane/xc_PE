@Entry
@Component
struct Page_04_bujumoxing {
  @State message: string = 'Hello World';

  build() {
    Column() {
        Text('布局模型布局模型布局模型布局模型布局模型布局模型')
          .width(200)
          .height(200)
          .backgroundColor(Color.Pink)
          .align(Alignment.Top)
          // .padding(20) // 内边框  设置的是内容与边界线的距离
          // top  bottom   left   right
          .padding({
            top: 20,
            left: 50,
            right: 30
          })
          .border({
            width:3, // 粗细
            color: Color.Red, // 颜色
            // style:BorderStyle.Solid // 实线虚线点线
            // radius:50 // 取决于设计稿
          }) // 设置组件的边框线的
          // .borderRadius(20) // 单独设置边框圆角
          // 单个方向的圆角
          // .borderRadius({
          //   topLeft:20,
          //   bottomRight: 20
          // })

          //
          .borderRadius(100)
          // 画圆  前提是个正方形  圆角设置宽的一半
          // 画胶囊  前提是个长方形  圆角设置成高的一半


      Text('布局模型布局模型布局模型布局模型布局模型布局模型')
        .width(200)
        .height(100)
        .borderRadius(50)
        .backgroundColor(Color.Pink)
        .margin(10) // 设置组件边界以外的距离  =>  组件与组件之间的距离
        .margin({
          top: 10,
          bottom: 10
        })

      Text('布局模型布局模型布局模型布局模型布局模型布局模型')
        .width(200)
        .height(100)
        // .borderRadius(50)
        .backgroundColor(Color.Pink)
        .border({
          // width: 2 // 四个方向
          width: { left: 2 }, // 单方向
          color: { left: Color.Red }
        }) // 我只要右边框


      // 前端  网页开发   内边距和边框 撑大盒子 自动内减 => 鸿蒙中没有这个问题
    }
    .height('100%')
    .width('100%')
  }
}