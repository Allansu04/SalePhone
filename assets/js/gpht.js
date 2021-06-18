$(function () {
  // 先取得必要的元素並用 jQuery 包裝
  // 並設定箭頭圖片的寬度及其透明度
  // 接著產生兩個放置箭頭用的空白超連結
  var $silder = $('.gpht'),
    $li = $('ul li', $silder),
    arrowWidth = 48 * -1,
    arrowOpacity = .3,
    $arrows = $('<a href="#" class="prev"></a><a href="#" class="next"></a>').css('opacity', arrowOpacity),
    $prev = $arrows.filter('.prev'),
    $next = $arrows.filter('.next'),
    fadeSpeed = 400;

  // 把箭頭超連結加到 $silder 中
  // 並幫 $silder 加上 hover 事件
  $silder.append($arrows).hover(function () {
    var no = $li.filter('.selected').index();
    arrowAction(no > 0 ? 0 : arrowWidth, no < $li.length - 1 ? 0 : arrowWidth);
  }, function () {
    arrowAction(arrowWidth, arrowWidth);
  });

  // 當滑鼠點擊左右箭頭時
  $arrows.click(function () {
    // 先取出目前顯示的 li 及其排行
    var $selected = $li.filter('.selected'),
      no = $selected.index();

    // 判斷是要上一張還是下一張
    no = this.className == 'prev' ? no - 1 : no + 1;
    $li.eq(no).addClass('selected').siblings().removeClass('selected');

    arrowAction(no > 0 ? 0 : arrowWidth, no < $li.length - 1 ? 0 : arrowWidth);

    return false;
  }).focus(function () {
    this.blur();
  });

  // 控制左右箭頭顯示或隱藏
  function arrowAction(l, r) {
    $prev.stop().css({
      left: l
    });
    $next.stop().css({
      right: r
    });
  }
});