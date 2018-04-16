$('.gallery').magnificPopup(
  {
    delegate: 'a',
    type: 'image',
    gallery: {
      enabled: true,
      navigateByImgClick: true,
      preload: [1,2]
    },
    image: {
      titleSrc: function(item) {
        if (item.el.attr('caption') && item.el.attr('exif')) {
          return (item.el.attr('caption').replace(/\\n/g, '<br />') +
                  '<small>' + item.el.attr('title') + ' - '
                  + item.el.attr('exif') + '</small>');
        }
        return item.el.attr('title') + '<small>' +
          item.el.attr('exif') + '</small>';
      }
    }
  }
);
