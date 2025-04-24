@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    // 主体
    // 预览器宽度360
    Column(){
      // banner区
      Column(){
        Image($r('app.media.log'))
          .width(203)
          .margin({top:70})
        Row(){
          Image($r('app.media.hot'))
            .height(79)
          Image($r('app.media.scenery'))
            .height(79)
          Image($r('app.media.ski'))
            .height(79)
        }
        .margin({top:21})
        Text('评选规则')
          .fontSize(10)
          .width(54)
          .height(20)
          .fontColor('rgba(246, 223, 200, 1)')
          .textAlign(TextAlign.Center)
          .borderRadius({topLeft:10,bottomLeft:10})
          .backgroundColor('rgba(255, 224, 208, 0.3)')
          .position({x:305,y:120})
        Text('')
          .width('100%')
          .height(44)
          .backgroundImage($r('app.media.banner_line'))
          .position({
            x:0,
            y:226
          })
      }
      .width('100%')
      .height(264)
      .backgroundImage($r('app.media.banner'))

      // 第二行
      Row(){
        Row({space:4}){
          Text('北京')
            .fontColor('rgba(153, 83, 46, 1)')
            .fontWeight(600)
          Image($r('app.media.ic_public_arrow_down_0'))
            .fillColor('#fff')
            .width(12)
            .aspectRatio(1)
            .borderRadius(6)
            .backgroundColor('#522503')
        }
        .justifyContent(FlexAlign.Center)
        .linearGradient({
          colors:[['rgba(255, 226, 200, 1)',0],['rgba(230, 175, 138, 1)',1]],
          direction:GradientDirection.Right
        })
        .borderRadius(18)
        .width(163)
        .height(36)
        Text('口碑目的地')
          .textAlign(TextAlign.Center  )
          .fontWeight(500)//默认400
          .width(163)
          .height(36)
          .backgroundColor('rgba(248, 213, 184, 0.2))')
          .fontColor('rgba(153, 83, 46, 1)')
          .borderRadius(18)

      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .height(36)
      .margin({top:24})
      .padding({left:12,right:12})
      // 第三行
      Row({space:8}){
        Text('酒店')
          .width(78)
          .height(36)
          .shadow({
            offsetX:1,
            offsetY:1,
            color:'rgba(47, 27, 14, 0.07)',
            radius:8
          })
          .textAlign(TextAlign.Center)
          .borderRadius(4)
        Text('景点')
          .width(78)
          .height(36)
          .shadow({
            offsetX:1,
            offsetY:1,
            color:'rgba(47, 27, 14, 0.07)',
            radius:8
          })
          .textAlign(TextAlign.Center)
          .linearGradient({
            colors:[['rgba(179, 109, 62, 0.8)',0],['rgba(204, 148, 102, 0.8)',1]],
            direction:GradientDirection.Left
          })
          .borderRadius(4)
        Text('夜游')
          .width(78)
          .height(36)
          .shadow({
            offsetX:1,
            offsetY:1,
            color:'rgba(47, 27, 14, 0.07)',
            radius:8
          })
          .textAlign(TextAlign.Center)
          .borderRadius(4)
        Text('美食')
          .width(78)
          .height(36)
          .shadow({
            offsetX:1,
            offsetY:1,
            color:'rgba(47, 27, 14, 0.07)',
            radius:8
          })
          .textAlign(TextAlign.Center)
          .borderRadius(4)
      }
      .margin({top:24})
      .width('100%')
      .padding({left:12,right:12})
      // 第4行
      Row(){
        // 左
        Row(){
          Image($r('app.media.ic_hot'))
            .width(17)
            .aspectRatio(1)
            .fillColor('#CA7943')
          Text('近期热门')
            .fontSize(14)
            .fontColor('rgba(103, 57, 21, 1)')
        }
        .backgroundImage($r('app.media.select'))
        .backgroundImagePosition(Alignment.Bottom)
        // 右
        Row({space:25}){
          Text('必打卡')
            .fontSize(14)
            .fontColor('#666666')
          Text('亲子')
            .fontSize(14)
            .fontColor('#666666')
          Text('滑雪')
            .fontSize(14)
            .fontColor('#666666')
          Text('自然风光')
            .fontSize(14)
            .fontColor('#666666')
        }
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .margin({top:12})
      .padding({left:12,right:12})
      // 第5行
      Text('北京近期热门景点榜')
        .fontSize(24)
        .fontColor('rgba(61, 26, 7, 1)')
        .fontWeight(600)
        .margin({top:12,bottom:12})
      // 卡片列表
      Column(){
        Row(){
          // 左
          Column(){
            Image($r('app.media.universal'))
              .width(88)
              .height(175)
              .borderRadius(5)
            Text('No.1')
              .fontSize(11)
              .fontWeight(700)
              .textAlign(TextAlign.Center)
              .width(50)
              .height(28)
              .backgroundImage($r('app.media.no_icon'))
              .position({x:-4})
          }
          // 右
          Column({space:6}){
            // 第一行
            Row(){
              Text('北京环球度假区')
                .fontSize(16)
                .fontWeight(600)
              Image($r('app.media.ic_xihuan'))
                .width(18)
                .aspectRatio(1)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
            // 第二行
            Row(){
              Row({space:8}){
                Row(){
                  Image($r('app.media.ic_huo'))
                    .width(10)
                    .aspectRatio(1)
                    .fillColor('#fff')
                  Text('10')
                    .fontSize(14)
                    .fontColor('#fff')
                }
                .borderRadius(4)
                .width(38)
                .height(18)
                .justifyContent(FlexAlign.Center)
                .linearGradient({colors:[['rgba(255, 133, 110, 1)',0],['rgba(255, 144, 42, 1)',1]],direction:GradientDirection.Right})
                Text('|')
                  .fontColor('#f5f5f5')
                Text('4.5分')
                  .fontSize(12)
                  .fontColor('rgba(102, 102, 102, 1)')
                Text('1.8万条点评')
                  .fontSize(12)
                  .fontColor('rgba(102, 102, 102, 1)')
                Text('|')
                  .fontColor('#f5f5f5')
                Text('￥305起')
                  .fontSize(12)
                  .fontColor('rgba(102, 102, 102, 1)')
              }
            }
            .width('100%')
            // 第三行
            // Text(){}可以作为容器使用,只能放置span类
            Text(){
              ImageSpan($r('app.media.dianzan'))
                .width(18)
              Span('上榜理由:')
                .fontSize(13)
                .fontWeight(600)
              Span('这个冬天来环球影城，一起沉浸在冬日独有的浪漫，漫步在雪花飞舞的雪天，创造专属于专属于专属于专属于专属于专属于专属于专属于')
                .fontSize(13)
            }
            .lineHeight(18)
            .fontColor('rgba(95, 43, 14, 1)')
            .maxLines(3)
            .textOverflow({overflow:TextOverflow.Ellipsis})
            .margin({bottom:6})
            // tag
            Row({space:8}){
              Text('嗨玩乐园')
                .fontColor('rgba(153, 174, 202, 1)')
                .fontSize(10)
                .height(17)
                .padding({left:4,right:4})
                .border({width:1,radius:4,color:'rgba(153, 174, 202, 1)'})
              Text('游乐园')
                .fontColor('rgba(153, 174, 202, 1)')
                .fontSize(10)
                .height(17)
                .padding({left:4,right:4})
                .border({width:1,radius:4,color:'rgba(153, 174, 202, 1)'})
            }
            .margin({bottom:6})
            .width('100%')
            Row(){
              Row({space:5}){
                Image($r('app.media.ic_daohangdizhi'))
                  .width(12)
                  .height(14)
                  .fillColor('#999999')
                Text('北京 · 果园环岛/通州区')
                  .fontSize(12)
                  .fontColor('#999999')
              }
              Text('距您36.7km')
                .fontSize(12)
                .fontColor('#999999')
            }
            .justifyContent(FlexAlign.SpaceBetween)
            .width('100%')
          }
          .height('100%')
          .layoutWeight(1)
          .margin({left:8})
        }
        .height(199)
        .backgroundColor(Color.White)//标记颜色
        .width('100%')
        .padding(12)
        .shadow({
          offsetX:0,
          offsetY:2,
          color:'rgba(0, 0, 0, 0.1)',
          radius:8
        })
      }
      .width('100%')
    }
    .width('100%')
    .height('100%')
  }
}