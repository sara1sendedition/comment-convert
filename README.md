# Comment Convert — Netlify Site

A small static site (4 files) ready to deploy to Netlify so you have the three URLs TikTok requires:

| TikTok field         | Resulting URL (after deploy)                  |
|----------------------|------------------------------------------------|
| Web/Desktop URL      | `https://<your-site>.netlify.app/`             |
| Terms of Service URL | `https://<your-site>.netlify.app/terms`        |
| Privacy Policy URL   | `https://<your-site>.netlify.app/privacy`      |

> Netlify's default "Pretty URLs" setting maps `/terms` → `terms.html` and `/privacy` → `privacy.html` automatically. No extra config needed.

## Files

- `index.html` — landing page with hero, features, how-it-works, FAQ, and a Netlify-Forms-powered waitlist
- `privacy.html` — Privacy Policy written to satisfy TikTok app review (covers Login Kit data, comment scopes, retention, deletion, AI processing, etc.)
- `terms.html` — Terms of Service (acceptable use, AI content responsibility, IP, disclaimers, governing law)
- `logo.svg` — gradient speech-bubble-with-arrow mark; used in headers and as favicon

## Deploy in 60 seconds (drag-and-drop, no account config)

1. Open https://app.netlify.com/drop
2. Sign in (free).
3. Drag the **entire folder** (`2026-04-27-commentconvert-netlify-site`) onto the drop zone — or drag the `.zip` if you prefer.
4. Netlify gives you a URL like `https://wonderful-name-12345.netlify.app`.
5. Open the site, click "Site settings" → "Change site name" → set it to something like `commentconvert` → your URL becomes `https://commentconvert.netlify.app`.
6. Paste these three URLs into the TikTok developer console:
   - Web/Desktop: `https://commentconvert.netlify.app/`
   - Terms: `https://commentconvert.netlify.app/terms`
   - Privacy: `https://commentconvert.netlify.app/privacy`

## Waitlist form

The form on the homepage uses Netlify Forms — it's auto-detected on first deploy. Submissions show up in the Netlify dashboard under **Forms**. To get email notifications, go to **Site settings → Forms → Form notifications**.

## Things to update before TikTok review

A couple of placeholders to swap when you're ready:

1. **Domain.** Both `privacy.html` and `terms.html` reference `commentconvert.netlify.app`. If you move to a custom domain, do a find-and-replace.
2. **Logo file.** `logo.svg` is a recreation of your gradient mark in scalable vector form (looks identical, scales to any size, doubles as the favicon). If you'd rather use the original PNG, just drop a `logo.png` into the folder and change the `<link rel="icon">` and the inline `<svg>` references.
3. **Effective date.** Both legal pages say "Effective date: April 27, 2026." If you tweak the policies, bump the date.

## What TikTok reviewers will look for (and where it lives)

| Requirement                                    | Where it's covered                          |
|------------------------------------------------|---------------------------------------------|
| What data you access                           | Privacy §2.2 (per-platform table)           |
| Why you access it                              | Privacy §2.2, §3                            |
| That you don't post on user's behalf silently  | Index FAQ + Privacy §4                      |
| Data retention & deletion                      | Privacy §7                                  |
| User rights (delete, disconnect, export)       | Privacy §8                                  |
| Children's data                                | Privacy §10                                 |
| Security                                       | Privacy §11                                 |
| Acceptable use (no spam/harassment)            | Terms §5                                    |
| AI content responsibility                      | Terms §6                                    |
| Contact email                                  | Both pages, footer + dedicated section      |

## Local preview (optional)

```bash
cd 2026-04-27-commentconvert-netlify-site
python3 -m http.server 4000
# open http://localhost:4000
```

The waitlist form will only actually capture submissions once the site is live on Netlify — the local preview is just for visual review.
