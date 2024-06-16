module ApplicationHelper
  def default_meta_tags
    {
      site: 'びびらせ王選手権',
      title: 'びびらせ王選手権',
      reverse: true,
      separator: '|',
      description: '文章だけで、どれだけ人を怖がらせることができるのか。びびった！ボタンを押した回数で競う文章投稿アプリです。',
      keywords: '',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('favicon.ico') }
      ],
      og: {
        site_name: 'びびらせ王選手権',
        title: 'びびらせ王選手権',
        description: '文章だけで、どれだけ人を怖がらせることができるのか。びびった！ボタンを押した回数で競う文章投稿アプリです。', 
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@potatoman_dev',
        image: image_url('ogp.png'),
      }
    }
  end
end
