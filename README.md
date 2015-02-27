# ungoogle - shell script to "ungoogle" google news links

Imagine you have a "Google News" link, in the format you see on its website or
- worse - on the RSS feed. Something like:

   http://news.google.com/news/url?sa=t&fd=R&ct2=pt-PT_pt&usg=AFQjCNFjZjhBUXzComaazKhbRHh50N_P_g&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779178690885&ei=mYjwVLnyNYK21gatlIHYCg&url=http://www.dn.pt/inicio/tv/interior.aspx?content_id%3D4425605

Ugly, right? Yeah, I think so too, so I wrote a small shell script to transform
it into a "clean link". In the above case:

   http://www.dn.pt/inicio/tv/interior.aspx?content_id=4425605

## Use

```
$ cat link
http://news.google.com/news/url?sa=t&fd=R&ct2=pt-PT_pt&usg=AFQjCNFjZjhBUXzComaazKhbRHh50N_P_g&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779178690885&ei=mYjwVLnyNYK21gatlIHYCg&url=http://www.dn.pt/inicio/tv/interior.aspx?content_id%3D4425605
$ ./ungoogle.sh link
http://www.dn.pt/inicio/tv/interior.aspx?content_id=4425605
$
```

## Why?

I wrote this particular script to deal with the results from
[hattai-fortune](https://github.com/marado/hattai-fortune). If you're using
this somewhere else, I'd love to know, drop me a line!
