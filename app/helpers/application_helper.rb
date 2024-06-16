module ApplicationHelper
  def default_meta_tags
    {
      site: 'びびらせ王選手権',
      title: 'びびらせ王選手権',
      reverse: true,
      separator: '|',
      description: 'このアプリは、投稿された内容のびびったポイントを競います。',
      keywords: '',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('favicon.ico') }
      ],
      og: {
        site_name: 'びびらせ王選手権',
        title: 'びびらせ王選手権',
        description: 'このアプリは、投稿された内容のびびったポイントを競います。', 
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
