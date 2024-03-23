#!/usr/bin/env python3
import sys
import feedparser

def count_entries(feed_url):
    feed = feedparser.parse(feed_url)
    print(len(feed.entries))

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python rss_counter.py [RSS_FEED_URL]")
        sys.exit(1)
    
    rss_url = sys.argv[1]
    count_entries(rss_url)

