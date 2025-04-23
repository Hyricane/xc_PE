@Entry
@Component
struct Page_Recommend {
  @State message: string = 'Hello World';

  build() {
    // root
    Column() {
      Scroll(){
        // mian
        Column(){
          // banner
          Column() {
            Image($r('app.media.log'))
              .width(203)
              .height(70)
              .margin({ top: 70 })
            Row() {
              Image($r('app.media.ski'))
                .width(126)
              Image($r('app.media.hot'))
                .width(126)
              Image($r('app.media.rank'))
                .width(126)
            }
            .padding({ top: 21, bottom: 27 })

            Image($r('app.media.banner_line'))
              .width(360)
              .position({
                x: 0,
                y: 226
              })
            Text('评选规则')
              .width(54)
              .height(20)
              .padding({ left: 7, right: 7 })
              .fontSize(10)
              .fontColor('rgba(246, 223, 200, 1)')
              .borderRadius({ topLeft: 50, bottomLeft: 50 })
              .backgroundColor('rgba(255, 224, 208, 0.3)')
              .position({
                x: 305,
                y: 120
              })
          }
          .width(360)
          .height(267)
          .backgroundImage($r('app.media.banner'))
          .margin({ bottom: 24 })

          // type
          Row() {
            Row({ space: 4 }) {
              Text('背景')
                .fontColor('rgba(153, 83, 46, 1)')
              Image($r('app.media.ic_public_arrow_down_0'))
                .width(12)
                .aspectRatio(1)
                .backgroundColor('#4E2203')
                .fillColor('#fff')
                .borderRadius(6)
            }
            .width(163)
            .height(36)
            .borderRadius(18)
            .justifyContent(FlexAlign.Center)
            .linearGradient({
              colors: [['rgba(255, 226, 200, 1)', 0], ['rgba(230, 175, 138, 1)', 1]],
              direction: GradientDirection.Right
            })

            Text('口碑目的地')
              .fontColor('rgba(153, 83, 46, 1)')
              .backgroundColor('rgba(255, 226, 200, 1)')
              .width(163)
              .height(36)
              .borderRadius(18)
              .textAlign(TextAlign.Center)
          }
          .justifyContent(FlexAlign.SpaceEvenly)
          .width('100%')
          .margin({ bottom: 24 })

          // nav
          Row() {
            Text('酒店')
              .width(78)
              .height(36)
              .padding({ left: 23, right: 23 })
              .shadow({
                offsetX: 1,
                offsetY: 1,
                color: 'rgba(47, 27, 14, 0.07)',
                radius: 8
              })
              .backgroundColor('rgba(255, 255, 255, 0.8)')
              .borderRadius(4)
            Text('景点')
              .width(78)
              .height(36)
              .padding({ left: 23, right: 23 })
              .shadow({
                offsetX: 1,
                offsetY: 1,
                color: 'rgba(47, 27, 14, 0.07)',
                radius: 8
              })
              .linearGradient({
                colors: [['rgba(179, 109, 62, 0.8)', 0], ['rgba(204, 148, 102, 0.8)', 1]],
                direction: GradientDirection.Left
              })
              .borderRadius(4)
            Text('夜游')
              .width(78)
              .height(36)
              .padding({ left: 23, right: 23 })
              .shadow({
                offsetX: 1,
                offsetY: 1,
                color: 'rgba(47, 27, 14, 0.07)',
                radius: 8
              })
              .backgroundColor('rgba(255, 255, 255, 0.8)')
              .borderRadius(4)
            Text('美食')
              .width(78)
              .height(36)
              .padding({ left: 23, right: 23 })
              .shadow({
                offsetX: 1,
                offsetY: 1,
                color: 'rgba(47, 27, 14, 0.07)',
                radius: 8
              })
              .backgroundColor('rgba(255, 255, 255, 0.8)')
              .borderRadius(4)
          }
          .justifyContent(FlexAlign.SpaceEvenly)
          .width('100%')
          .margin({ bottom: 12 })

          // cardlist
          Column({ space: 12 }) {
            // tab
            Row() {
              Row() {
                Image($r('app.media.ic_huo'))
                  .width(17)
                  .aspectRatio(1)
                  .fillColor('#EAB895')
                Text('近期热门')
                  .fontWeight(FontWeight.Bold)
                  .fontSize(14)
                  .fontColor('rgba(103, 57, 21, 1)')
                Text('')
                  .width(71)
                  .height(5)
                  .borderRadius(3)
                  .linearGradient({
                    colors: [['rgba(255, 226, 200, 0.4)', 0], ['rgba(230, 175, 138, 0.4)', 1]],
                    direction: GradientDirection.Right
                  })
                  .position({
                    x: 3,
                    y: 14
                  })
              }

              Text('必打卡')
                .fontSize(14)
                .fontColor('rgba(102, 102, 102, 1)')
              Text('滑雪')
                .fontSize(14)
                .fontColor('rgba(102, 102, 102, 1)')
              Text('亲子')
                .fontSize(14)
                .fontColor('rgba(102, 102, 102, 1)')
              Text('自然风光')
                .fontSize(14)
                .fontColor('rgba(102, 102, 102, 1)')
            }
            .justifyContent(FlexAlign.SpaceAround)
            .width('100%')

            // title
            Text('北京近期热门景点榜')
              .fontColor('rgba(61, 26, 7, 1)')
              .fontSize(24)
              .fontWeight(FontWeight.Bold)
              .lineHeight(34)
            // card
            Row({ space: 8 }) {
              Image($r('app.media.universal'))
                .height(175)
                .width(88)
                .borderRadius(5)
              Text("No.1")
                .width(50)
                .height(28)
                .backgroundImage($r('app.media.no_icon'))
                .fontSize(11)
                .fontColor('rgba(0, 0, 0, 1)')
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .position({ x: -4 })
              // right
              Column({ space: 6 }) {
                Row() {
                  Text('北京环球度假区')
                    .fontWeight(FontWeight.Bold)
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .aspectRatio(1)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)

                // 评分
                Row({ space: 4 }) {
                  Row({ space: 3 }) {
                    Image($r('app.media.ic_huo'))
                      .width(9)
                      .height(11)
                      .fillColor('#fff')
                    Text('10')
                      .fontSize(10)
                      .fontColor('#fff')
                  }
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(4)
                  .width(32)
                  .height(18)
                  .linearGradient({
                    colors: [['rgba(255, 133, 110, 1)', 0], ['rgba(255, 144, 42, 1)', 1]],
                    direction: GradientDirection.Right
                  })

                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.5分')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('1.8w条点评')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('￥308起')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                }
                .width('100%')

                // desc
                Row() {
                  Row() {
                    Image($r('app.media.dianzan'))
                      .width(15)
                    Text('上榜理由:')
                      .fontColor('rgba(95, 43, 14, 1)')
                      .fontSize(15)
                      .fontWeight(FontWeight.Bold)
                  }
                  .position({
                    x: 0,
                    y: 1
                  })

                  Text('这个冬天来环球影城，一起沉浸在冬日独有的浪漫，漫步在雪花飞舞的雪天，创造专属于')
                    .fontSize(15)
                    .fontColor('rgba(95, 43, 14, 1)')
                    .textIndent(80)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                }
                .width('100%')
                .height(72)
                .backgroundColor('rgba(255, 247, 241, 1)')
                .padding(8)

                // tag
                Row({ space: 4 }) {
                  Text('嗨玩乐园')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                  Text('游乐园')
                    .fontSize(10)
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                }
                .width('100%')

                // address
                Row() {
                  Row({space:5}){
                    Image($r('app.media.ic_daohangdizhi'))
                      .width(12)
                      .height(14)
                      .fillColor('rgba(153, 153, 153, 1)')
                    Text('北京 · 果园环岛/通州区')
                      .fontSize(12)
                      .fontColor(('rgba(153, 153, 153, 1)'))
                  }
                  Text('距您36.7km')
                    .fontSize(12)
                    .fontColor(('rgba(153, 153, 153, 1)'))
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
              // .backgroundColor(Color.Pink)//右侧标记颜色
              .layoutWeight(1)
            }
            .width('98%')
            .padding({
              top: 12,
              left: 12,
              right: 12,
              bottom: 12
            })
            .shadow({
              color: 'rgba(0, 0, 0, 0.1)',
              radius: 8,
              offsetX: 0,
              offsetY: 2
            })

            // 2
            Row({ space: 8 }) {
              Image($r('app.media.imperial'))
                .height(175)
                .width(88)
                .borderRadius(5)
              Text("No.2")
                .width(50)
                .height(28)
                .backgroundImage($r('app.media.no_icon'))
                .fontSize(11)
                .fontColor('rgba(0, 0, 0, 1)')
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .position({ x: -4 })
              // right
              Column({ space: 6 }) {
                Row() {
                  Row({space:4}){
                    Text('故宫博物馆')
                      .fontWeight(FontWeight.Bold)
                    Text('5A')
                      .textAlign(TextAlign.Center)
                      .fontSize(11)
                      .width(22)
                      .height(16)
                      .backgroundColor('rgba(238, 241, 246, 1)')
                      .fontColor('rgba(86, 120, 168, 1)')
                  }
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .aspectRatio(1)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)

                // 评分
                Row({ space: 4 }) {
                  Row({ space: 3 }) {
                    Image($r('app.media.ic_huo'))
                      .width(9)
                      .height(11)
                      .fillColor('#fff')
                    Text('10')
                      .fontSize(10)
                      .fontColor('#fff')
                  }
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(4)
                  .width(32)
                  .height(18)
                  .linearGradient({
                    colors: [['rgba(255, 133, 110, 1)', 0], ['rgba(255, 144, 42, 1)', 1]],
                    direction: GradientDirection.Right
                  })

                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.8分')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('14.6w条点评')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                }
                .width('100%')

                // desc
                Row() {
                  Row() {
                    Image($r('app.media.dianzan'))
                      .width(15)
                    Text('上榜理由:')
                      .fontColor('rgba(95, 43, 14, 1)')
                      .fontSize(15)
                      .fontWeight(FontWeight.Bold)
                  }
                  .position({
                    x: 0,
                    y: 1
                  })

                  Text('城墙建筑，院落布局，屋脊小兽，都包含着古代人民的巧夺天工，带小朋友穿梭明清时空')
                    .fontSize(15)
                    .fontColor('rgba(95, 43, 14, 1)')
                    .textIndent(80)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                }
                .width('100%')
                .height(72)
                .backgroundColor('rgba(255, 247, 241, 1)')
                .padding(8)

                // tag
                Row({ space: 4 }) {
                  Text('探秘展馆')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                  Text('文化古迹')
                    .fontSize(10)
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                  Text('博物馆')
                    .fontSize(10)
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                  Text('场馆展馆')
                    .fontSize(10)
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                }
                .width('100%')

                // address
                Row() {
                  Row({space:5}){
                    Image($r('app.media.ic_daohangdizhi'))
                      .width(12)
                      .height(14)
                      .fillColor('rgba(153, 153, 153, 1)')
                    Text('北京 · 天安门/王府井 ')
                      .fontSize(12)
                      .fontColor(('rgba(153, 153, 153, 1)'))
                  }
                  Text('距您16.5km')
                    .fontSize(12)
                    .fontColor(('rgba(153, 153, 153, 1)'))
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
              // .backgroundColor(Color.Pink)//右侧标记颜色
              .layoutWeight(1)
            }
            .width('98%')
            .padding({
              top: 12,
              left: 12,
              right: 12,
              bottom: 12
            })
            .shadow({
              color: 'rgba(0, 0, 0, 0.1)',
              radius: 8,
              offsetX: 0,
              offsetY: 2
            })
            // 3
            Row({ space: 8 }) {
              Image($r('app.media.changcheng'))
                .height(175)
                .width(88)
                .borderRadius(5)
              Text("No.3")
                .width(50)
                .height(28)
                .backgroundImage($r('app.media.no_icon'))
                .fontSize(11)
                .fontColor('rgba(0, 0, 0, 1)')
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .position({ x: -4 })
              // right
              Column({ space: 6 }) {
                Row() {
                  Row({space:4}){
                    Text('八达岭长城')
                      .fontWeight(FontWeight.Bold)
                    Text('5A')
                      .textAlign(TextAlign.Center)
                      .fontSize(11)
                      .width(22)
                      .height(16)
                      .backgroundColor('rgba(238, 241, 246, 1)')
                      .fontColor('rgba(86, 120, 168, 1)')
                  }
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .aspectRatio(1)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)

                // 评分
                Row({ space: 4 }) {
                  Row({ space: 3 }) {
                    Image($r('app.media.ic_huo'))
                      .width(9)
                      .height(11)
                      .fillColor('#fff')
                    Text('9.8')
                      .fontSize(10)
                      .fontColor('#fff')
                  }
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(4)
                  .width(32)
                  .height(18)
                  .linearGradient({
                    colors: [['rgba(255, 133, 110, 1)', 0], ['rgba(255, 144, 42, 1)', 1]],
                    direction: GradientDirection.Right
                  })

                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.7分')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.0w条点评')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('￥20起')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                }
                .width('100%')

                // desc
                Row() {
                  Row() {
                    Image($r('app.media.dianzan'))
                      .width(15)
                    Text('上榜理由:')
                      .fontColor('rgba(95, 43, 14, 1)')
                      .fontSize(15)
                      .fontWeight(FontWeight.Bold)
                  }
                  .position({
                    x: 0,
                    y: 1
                  })

                  Text('中国古代伟大的防御工程，适合带小朋友领略奇骏险要的地势和长城磅礴恢弘的风采。')
                    .fontSize(15)
                    .fontColor('rgba(95, 43, 14, 1)')
                    .textIndent(80)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                }
                .width('100%')
                .height(72)
                .backgroundColor('rgba(255, 247, 241, 1)')
                .padding(8)

                // tag
                Row({ space: 4 }) {
                  Text('文化古迹')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                }
                .width('100%')

                // address
                Row() {
                  Row({space:5}){
                    Image($r('app.media.ic_daohangdizhi'))
                      .width(12)
                      .height(14)
                      .fillColor('rgba(153, 153, 153, 1)')
                    Text('北京 · 延庆休闲度假区')
                      .fontSize(12)
                      .fontColor(('rgba(153, 153, 153, 1)'))
                  }
                  Text('距您43.1km')
                    .fontSize(12)
                    .fontColor(('rgba(153, 153, 153, 1)'))
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              // .backgroundColor(Color.Pink)//右侧标记颜色
              .layoutWeight(1)
            }
            .width('98%')
            .padding({
              top: 12,
              left: 12,
              right: 12,
              bottom: 12
            })
            .shadow({
              color: 'rgba(0, 0, 0, 0.1)',
              radius: 8,
              offsetX: 0,
              offsetY: 2
            })
            // 4
            Row({ space: 8 }) {
              Image($r('app.media.yiheyuan'))
                .height(175)
                .width(88)
                .borderRadius(5)
              Text("No.4")
                .width(50)
                .height(28)
                .backgroundImage($r('app.media.no_icon'))
                .fontSize(11)
                .fontColor('rgba(0, 0, 0, 1)')
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .position({ x: -4 })
              // right
              Column({ space: 6 }) {
                Row() {
                  Row({space:4}){
                    Text('颐和园')
                      .fontWeight(FontWeight.Bold)
                    Text('5A')
                      .textAlign(TextAlign.Center)
                      .fontSize(11)
                      .width(22)
                      .height(16)
                      .backgroundColor('rgba(238, 241, 246, 1)')
                      .fontColor('rgba(86, 120, 168, 1)')
                  }
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .aspectRatio(1)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)

                // 评分
                Row({ space: 4 }) {
                  Row({ space: 3 }) {
                    Image($r('app.media.ic_huo'))
                      .width(9)
                      .height(11)
                      .fillColor('#fff')
                    Text('9.0')
                      .fontSize(10)
                      .fontColor('#fff')
                  }
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(4)
                  .width(32)
                  .height(18)
                  .linearGradient({
                    colors: [['rgba(255, 133, 110, 1)', 0], ['rgba(255, 144, 42, 1)', 1]],
                    direction: GradientDirection.Right
                  })

                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.7分')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('3.7w条点评')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('￥35起')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                }
                .width('100%')

                // desc
                Row() {
                  Row() {
                    Image($r('app.media.dianzan'))
                      .width(15)
                    Text('上榜理由:')
                      .fontColor('rgba(95, 43, 14, 1)')
                      .fontSize(15)
                      .fontWeight(FontWeight.Bold)
                  }
                  .position({
                    x: 0,
                    y: 1
                  })

                  Text('原是清朝帝王的行宫和花园，是我国现存规模非常大，保存非常完整的皇家园林。')
                    .fontSize(15)
                    .fontColor('rgba(95, 43, 14, 1)')
                    .textIndent(80)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                }
                .width('100%')
                .height(72)
                .backgroundColor('rgba(255, 247, 241, 1)')
                .padding(8)

                // tag
                Row({ space: 4 }) {
                  Text('遛娃宝藏地')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                  Text('园林花园')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                  Text('文化古迹')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                }
                .width('100%')

                // address
                Row() {
                  Row({space:5}){
                    Image($r('app.media.ic_daohangdizhi'))
                      .width(12)
                      .height(14)
                      .fillColor('rgba(153, 153, 153, 1)')
                    Text('北京 · 中关村/五道口')
                      .fontSize(12)
                      .fontColor(('rgba(153, 153, 153, 1)'))
                  }
                  Text('距您8.8km')
                    .fontSize(12)
                    .fontColor(('rgba(153, 153, 153, 1)'))
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
              // .backgroundColor(Color.Pink)//右侧标记颜色
              .layoutWeight(1)
            }
            .width('98%')
            .padding({
              top: 12,
              left: 12,
              right: 12,
              bottom: 12
            })
            .shadow({
              color: 'rgba(0, 0, 0, 0.1)',
              radius: 8,
              offsetX: 0,
              offsetY: 2
            })
            // 5
            Row({ space: 8 }) {
              Image($r('app.media.gongwangfu'))
                .height(175)
                .width(88)
                .borderRadius(5)
              Text("No.5")
                .width(50)
                .height(28)
                .backgroundImage($r('app.media.no_icon'))
                .fontSize(11)
                .fontColor('rgba(0, 0, 0, 1)')
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .position({ x: -4 })
              // right
              Column({ space: 6 }) {
                Row() {
                  Row({space:4}){
                    Text('恭王府')
                      .fontWeight(FontWeight.Bold)
                    Text('5A')
                      .textAlign(TextAlign.Center)
                      .fontSize(11)
                      .width(22)
                      .height(16)
                      .backgroundColor('rgba(238, 241, 246, 1)')
                      .fontColor('rgba(86, 120, 168, 1)')
                  }
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .aspectRatio(1)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)

                // 评分
                Row({ space: 4 }) {
                  Row({ space: 3 }) {
                    Image($r('app.media.ic_huo'))
                      .width(9)
                      .height(11)
                      .fillColor('#fff')
                    Text('8.9')
                      .fontSize(10)
                      .fontColor('#fff')
                  }
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(4)
                  .width(32)
                  .height(18)
                  .linearGradient({
                    colors: [['rgba(255, 133, 110, 1)', 0], ['rgba(255, 144, 42, 1)', 1]],
                    direction: GradientDirection.Right
                  })

                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.7分')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('1.8w条点评')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('￥40起')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                }
                .width('100%')

                // desc
                Row() {
                  Row() {
                    Image($r('app.media.dianzan'))
                      .width(15)
                    Text('上榜理由:')
                      .fontColor('rgba(95, 43, 14, 1)')
                      .fontSize(15)
                      .fontWeight(FontWeight.Bold)
                  }
                  .position({
                    x: 0,
                    y: 1
                  })

                  Text('有山有水有桥，绿树成荫，长廊飘飘，小朋友可以用眼睛和脚步评判丈量着这座园林之美。')
                    .fontSize(15)
                    .fontColor('rgba(95, 43, 14, 1)')
                    .textIndent(80)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                }
                .width('100%')
                .height(72)
                .backgroundColor('rgba(255, 247, 241, 1)')
                .padding(8)

                // tag
                Row({ space: 4 }) {
                  Text('文化古迹')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                }
                .width('100%')

                // address
                Row() {
                  Row({space:5}){
                    Image($r('app.media.ic_daohangdizhi'))
                      .width(12)
                      .height(14)
                      .fillColor('rgba(153, 153, 153, 1)')
                    Text('北京 · 后海/南锣鼓巷')
                      .fontSize(12)
                      .fontColor(('rgba(153, 153, 153, 1)'))
                  }
                  Text('距您14.2km')
                    .fontSize(12)
                    .fontColor(('rgba(153, 153, 153, 1)'))
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
              // .backgroundColor(Color.Pink)//右侧标记颜色
              .layoutWeight(1)
            }
            .width('98%')
            .padding({
              top: 12,
              left: 12,
              right: 12,
              bottom: 12
            })
            .shadow({
              color: 'rgba(0, 0, 0, 0.1)',
              radius: 8,
              offsetX: 0,
              offsetY: 2
            })
            // 6
            Row({ space: 8 }) {
              Image($r('app.media.tiantan'))
                .height(175)
                .width(88)
                .borderRadius(5)
              Text("No.6")
                .width(50)
                .height(28)
                .backgroundImage($r('app.media.no_icon'))
                .fontSize(11)
                .fontColor('rgba(0, 0, 0, 1)')
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .position({ x: -4 })
              // right
              Column({ space: 6 }) {
                Row() {
                  Row({space:4}){
                    Text('天坛')
                      .fontWeight(FontWeight.Bold)
                    Text('5A')
                      .textAlign(TextAlign.Center)
                      .fontSize(11)
                      .width(22)
                      .height(16)
                      .backgroundColor('rgba(238, 241, 246, 1)')
                      .fontColor('rgba(86, 120, 168, 1)')
                  }
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .aspectRatio(1)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)

                // 评分
                Row({ space: 4 }) {
                  Row({ space: 3 }) {
                    Image($r('app.media.ic_huo'))
                      .width(9)
                      .height(11)
                      .fillColor('#fff')
                    Text('8.9')
                      .fontSize(10)
                      .fontColor('#fff')
                  }
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(4)
                  .width(32)
                  .height(18)
                  .linearGradient({
                    colors: [['rgba(255, 133, 110, 1)', 0], ['rgba(255, 144, 42, 1)', 1]],
                    direction: GradientDirection.Right
                  })

                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.6分')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('1.3w条点评')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('￥28起')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                }
                .width('100%')

                // desc
                Row() {
                  Row() {
                    Image($r('app.media.dianzan'))
                      .width(15)
                    Text('上榜理由:')
                      .fontColor('rgba(95, 43, 14, 1)')
                      .fontSize(15)
                      .fontWeight(FontWeight.Bold)
                  }
                  .position({
                    x: 0,
                    y: 1
                  })

                  Text('象征着天圆地方，属世界文化遗迹，二坛同在一条南北轴线上，是北京的标志性建筑。')
                    .fontSize(15)
                    .fontColor('rgba(95, 43, 14, 1)')
                    .textIndent(80)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                }
                .width('100%')
                .height(72)
                .backgroundColor('rgba(255, 247, 241, 1)')
                .padding(8)

                // tag
                Row({ space: 4 }) {
                  Text('文化古迹')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                }
                .width('100%')

                // address
                Row() {
                  Row({space:5}){
                    Image($r('app.media.ic_daohangdizhi'))
                      .width(12)
                      .height(14)
                      .fillColor('rgba(153, 153, 153, 1)')
                    Text('北京 · 前门/天坛公园')
                      .fontSize(12)
                      .fontColor(('rgba(153, 153, 153, 1)'))
                  }
                  Text('距您14.2km')
                    .fontSize(12)
                    .fontColor(('rgba(153, 153, 153, 1)'))
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
              // .backgroundColor(Color.Pink)//右侧标记颜色
              .layoutWeight(1)
            }
            .width('98%')
            .padding({
              top: 12,
              left: 12,
              right: 12,
              bottom: 12
            })
            .shadow({
              color: 'rgba(0, 0, 0, 0.1)',
              radius: 8,
              offsetX: 0,
              offsetY: 2
            })
            // 7
            Row({ space: 8 }) {
              Image($r('app.media.mutianyu'))
                .height(175)
                .width(88)
                .borderRadius(5)
              Text("No.7")
                .width(50)
                .height(28)
                .backgroundImage($r('app.media.no_icon'))
                .fontSize(11)
                .fontColor('rgba(0, 0, 0, 1)')
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .position({ x: -4 })
              // right
              Column({ space: 6 }) {
                Row() {
                  Row({space:4}){
                    Text('慕田峪长城')
                      .fontWeight(FontWeight.Bold)
                    Text('5A')
                      .textAlign(TextAlign.Center)
                      .fontSize(11)
                      .width(22)
                      .height(16)
                      .backgroundColor('rgba(238, 241, 246, 1)')
                      .fontColor('rgba(86, 120, 168, 1)')
                  }
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .aspectRatio(1)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)

                // 评分
                Row({ space: 4 }) {
                  Row({ space: 3 }) {
                    Image($r('app.media.ic_huo'))
                      .width(9)
                      .height(11)
                      .fillColor('#fff')
                    Text('8.5')
                      .fontSize(10)
                      .fontColor('#fff')
                  }
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(4)
                  .width(32)
                  .height(18)
                  .linearGradient({
                    colors: [['rgba(255, 133, 110, 1)', 0], ['rgba(255, 144, 42, 1)', 1]],
                    direction: GradientDirection.Right
                  })

                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.8分')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('1.8w条点评')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('￥45起')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                }
                .width('100%')

                // desc
                Row() {
                  Row() {
                    Image($r('app.media.dianzan'))
                      .width(15)
                    Text('上榜理由:')
                      .fontColor('rgba(95, 43, 14, 1)')
                      .fontSize(15)
                      .fontWeight(FontWeight.Bold)
                  }
                  .position({
                    x: 0,
                    y: 1
                  })

                  Text('墙势峥嵘险峻，起伏连绵，适合带小朋友来领略教科书里的壮丽风景和人文古迹。')
                    .fontSize(15)
                    .fontColor('rgba(95, 43, 14, 1)')
                    .textIndent(80)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                }
                .width('100%')
                .height(72)
                .backgroundColor('rgba(255, 247, 241, 1)')
                .padding(8)

                // tag
                Row({ space: 4 }) {
                  Text('文化古迹')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                  Text('徒步')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                }
                .width('100%')

                // address
                Row() {
                  Row({space:5}){
                    Image($r('app.media.ic_daohangdizhi'))
                      .width(12)
                      .height(14)
                      .fillColor('rgba(153, 153, 153, 1)')
                    Text('北京 · 怀柔风景区')
                      .fontSize(12)
                      .fontColor(('rgba(153, 153, 153, 1)'))
                  }
                  Text('距您45.8km')
                    .fontSize(12)
                    .fontColor(('rgba(153, 153, 153, 1)'))
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
              // .backgroundColor(Color.Pink)//右侧标记颜色
              .layoutWeight(1)
            }
            .width('98%')
            .padding({
              top: 12,
              left: 12,
              right: 12,
              bottom: 12
            })
            .shadow({
              color: 'rgba(0, 0, 0, 0.1)',
              radius: 8,
              offsetX: 0,
              offsetY: 2
            })
            // 8
            Row({ space: 8 }) {
              Image($r('app.media.dongwuyuan'))
                .height(121)
                .width(88)
                .borderRadius(5)
              Text("No.8")
                .width(50)
                .height(28)
                .backgroundImage($r('app.media.no_icon'))
                .fontSize(11)
                .fontColor('rgba(0, 0, 0, 1)')
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .position({ x: -4 })
              // right
              Column({ space: 6 }) {
                Row() {
                  Row({space:4}){
                    Text('北京动物园')
                      .fontWeight(FontWeight.Bold)
                    Text('5A')
                      .textAlign(TextAlign.Center)
                      .fontSize(11)
                      .width(22)
                      .height(16)
                      .backgroundColor('rgba(238, 241, 246, 1)')
                      .fontColor('rgba(86, 120, 168, 1)')
                  }
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .aspectRatio(1)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)

                // 评分
                Row({ space: 4 }) {
                  Row({ space: 3 }) {
                    Image($r('app.media.ic_huo'))
                      .width(9)
                      .height(11)
                      .fillColor('#fff')
                    Text('8.2')
                      .fontSize(10)
                      .fontColor('#fff')
                  }
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(4)
                  .width(32)
                  .height(18)
                  .linearGradient({
                    colors: [['rgba(255, 133, 110, 1)', 0], ['rgba(255, 144, 42, 1)', 1]],
                    direction: GradientDirection.Right
                  })

                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.5分')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('5728条点评')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('￥308起')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                }
                .width('100%')

                // desc
                Row() {
                  Text('"白天湖畔散步夜晚乘船赏景"')
                    .fontColor('rgba(103, 49, 20, 1)')
                    .fontSize(15)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                    Text('')
                      .position({
                        x:0,
                        y:14
                      })
                      .zIndex(-1)
                      .width(200)
                      .height(4)
                      .borderRadius(2)
                      .linearGradient({
                        colors:[['rgba(230, 175, 138, 1)',0],['rgba(255, 226, 200, 1)',1]],
                        direction:GradientDirection.Left
                      })
                }
                .width('100%')

                // tag
                Row({ space: 4 }) {
                  Text('萌萌动物')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                }
                .width('100%')

                // address
                Row() {
                  Row({ space: 5 }){
                    Image($r('app.media.ic_daohangdizhi'))
                      .width(12)
                      .height(14)
                      .fillColor('rgba(153, 153, 153, 1)')
                    Text('北京 · 西直门')
                      .fontSize(12)
                      .fontColor(('rgba(153, 153, 153, 1)'))
                  }
                  Text('距您13.2km')
                    .fontSize(12)
                    .fontColor(('rgba(153, 153, 153, 1)'))
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              // .backgroundColor(Color.Pink)//右侧标记颜色
              .layoutWeight(1)
            }
            .width('98%')
            .padding({
              top: 12,
              left: 12,
              right: 12,
              bottom: 12
            })
            .shadow({
              color: 'rgba(0, 0, 0, 0.1)',
              radius: 8,
              offsetX: 0,
              offsetY: 2
            })
            // 9
            Row({ space: 8 }) {
              Image($r('app.media.yeshengdongwuyuan'))
                .height(121)
                .width(88)
                .borderRadius(5)
              Text("No.9")
                .width(50)
                .height(28)
                .backgroundImage($r('app.media.no_icon'))
                .fontSize(11)
                .fontColor('rgba(0, 0, 0, 1)')
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .position({ x: -4 })
              // right
              Column({ space: 6 }) {
                Row() {
                  Row({space:4}){
                    Text('北京野生动物园')
                      .fontWeight(FontWeight.Bold)
                    Text('4A')
                      .textAlign(TextAlign.Center)
                      .fontSize(11)
                      .width(22)
                      .height(16)
                      .backgroundColor('rgba(238, 241, 246, 1)')
                      .fontColor('rgba(86, 120, 168, 1)')
                  }
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .aspectRatio(1)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)

                // 评分
                Row({ space: 4 }) {
                  Row({ space: 3 }) {
                    Image($r('app.media.ic_huo'))
                      .width(9)
                      .height(11)
                      .fillColor('#fff')
                    Text('8.1')
                      .fontSize(10)
                      .fontColor('#fff')
                  }
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(4)
                  .width(32)
                  .height(18)
                  .linearGradient({
                    colors: [['rgba(255, 133, 110, 1)', 0], ['rgba(255, 144, 42, 1)', 1]],
                    direction: GradientDirection.Right
                  })

                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.7分')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('2.4w条点评')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('￥308起')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                }
                .width('100%')

                // desc
                Row() {
                  Text('"近距离观赏野生动物"')
                    .fontColor('rgba(103, 49, 20, 1)')
                    .fontSize(15)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                  Text('')
                    .position({
                      x:0,
                      y:14
                    })
                    .zIndex(-1)
                    .width(150)
                    .height(4)
                    .borderRadius(2)
                    .linearGradient({
                      colors:[['rgba(230, 175, 138, 1)',0],['rgba(255, 226, 200, 1)',1]],
                      direction:GradientDirection.Left
                    })
                }
                .width('100%')

                // tag
                Row({ space: 4 }) {
                  Text('萌萌动物')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                }
                .width('100%')

                // address
                Row({ space: 5 }) {
                  Row(){
                    Image($r('app.media.ic_daohangdizhi'))
                      .width(12)
                      .height(14)
                      .fillColor('rgba(153, 153, 153, 1)')
                    Text('北京 · 大兴')
                      .fontSize(12)
                      .fontColor(('rgba(153, 153, 153, 1)'))
                  }
                  Text('距您62.7km')
                    .fontSize(12)
                    .fontColor(('rgba(153, 153, 153, 1)'))
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              // .backgroundColor(Color.Pink)//右侧标记颜色
              .layoutWeight(1)
            }
            .width('98%')
            .padding({
              top: 12,
              left: 12,
              right: 12,
              bottom: 12
            })
            .shadow({
              color: 'rgba(0, 0, 0, 0.1)',
              radius: 8,
              offsetX: 0,
              offsetY: 2
            })
            // 10
            Row({ space: 8 }) {
              Image($r('app.media.kexuejishu'))
                .height(175)
                .width(88)
                .borderRadius(5)
              Text("No.10")
                .width(50)
                .height(28)
                .backgroundImage($r('app.media.no_icon'))
                .fontSize(11)
                .fontColor('rgba(0, 0, 0, 1)')
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .position({ x: -4 })
              // right
              Column({ space: 6 }) {
                Row() {
                  Row({space:4}){
                    Text('中国科学技术馆')
                      .fontWeight(FontWeight.Bold)
                  }
                  Image($r('app.media.ic_xihuan'))
                    .width(18)
                    .aspectRatio(1)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)

                // 评分
                Row({ space: 4 }) {
                  Row({ space: 3 }) {
                    Image($r('app.media.ic_huo'))
                      .width(9)
                      .height(11)
                      .fillColor('#fff')
                    Text('8.1')
                      .fontSize(10)
                      .fontColor('#fff')
                  }
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(4)
                  .width(32)
                  .height(18)
                  .linearGradient({
                    colors: [['rgba(255, 133, 110, 1)', 0], ['rgba(255, 144, 42, 1)', 1]],
                    direction: GradientDirection.Right
                  })

                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('4.6分')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                  Text('5039条点评')
                    .fontSize(12)
                    .fontColor('rgba(102, 102, 102, 1)')
                  Text('')
                    .width(1)
                    .height(18)
                    .backgroundColor('rgba(245, 245, 245, 1)')
                }
                .width('100%')

                // desc
                Row() {
                  Row() {
                    Image($r('app.media.dianzan'))
                      .width(15)
                    Text('上榜理由:')
                      .fontColor('rgba(95, 43, 14, 1)')
                      .fontSize(15)
                      .fontWeight(FontWeight.Bold)
                  }
                  .position({
                    x: 0,
                    y: 1
                  })

                  Text('在这里亲身体验高科技的美丽，勾起小朋友对科学对宇宙的兴趣，感受科技大爆炸。')
                    .fontSize(15)
                    .fontColor('rgba(95, 43, 14, 1)')
                    .textIndent(80)
                    .maxLines(3)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                }
                .width('100%')
                .height(72)
                .backgroundColor('rgba(255, 247, 241, 1)')
                .padding(8)

                // tag
                Row({ space: 4 }) {
                  Text('探秘展馆')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                  Text('科技馆')
                    .fontSize(10)
                    .border({
                      width: 1,
                      radius: 4,
                      color: 'rgba(153, 174, 202, 1)'
                    })
                    .fontColor('rgba(153, 174, 202, 1)')
                    .padding(2)
                }
                .width('100%')

                // address
                Row({ space: 5 }) {
                  Row(){
                    Image($r('app.media.ic_daohangdizhi'))
                      .width(12)
                      .height(14)
                      .fillColor('rgba(153, 153, 153, 1)')
                    Text('北京 · 亚运村')
                      .fontSize(12)
                      .fontColor(('rgba(153, 153, 153, 1)'))
                  }
                  Text('距您7.6km')
                    .fontSize(12)
                    .fontColor(('rgba(153, 153, 153, 1)'))
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              // .backgroundColor(Color.Pink)//右侧标记颜色
              .layoutWeight(1)
            }
            .width('98%')
            .padding({
              top: 12,
              left: 12,
              right: 12,
              bottom: 12
            })
            .shadow({
              color: 'rgba(0, 0, 0, 0.1)',
              radius: 8,
              offsetX: 0,
              offsetY: 2
            })
          }
        }
      }
    }
    .width('100%')
    .height('100%')
  }
}