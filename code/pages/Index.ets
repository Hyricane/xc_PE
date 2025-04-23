let gender: '男'|'女' = '男';
gender =  '女'

enum GenderType {
  nan='男',
  nv='女'
}

let gender2: GenderType = GenderType.nan

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    // 列=>其中的内容一定会按照竖直排列
    // 内容在水平方向居中的
    Column(){
      Text('123')
        .fontSize(20)
        .fontColor(Color.Red)
        .fontStyle(FontStyle.Italic)
        .fontWeight(FontWeight.Bold)
        .lineHeight(30)
        .width(200)
        .backgroundColor(Color.Orange)
        .textAlign(TextAlign.End)
        .decoration({
          type: TextDecorationType.Underline
        })


      Text('哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈')
        .width(200)
        .textIndent(32)
        .maxLines(3)
        .textOverflow({overflow: TextOverflow.Ellipsis})

      Text('456')
        .height(100)
        .backgroundColor(Color.Brown)
        .align(Alignment.Bottom)

      Row(){
        // 内容部分会按照水平排列
        // 竖直方向居中
        Text('789')
        Text('007')
      }
      .width(200)
      .height(200)
      .backgroundColor(Color.Pink)
    }
    // .width(320)
    .height(300)
    .backgroundColor(Color.Gray)
  }
}