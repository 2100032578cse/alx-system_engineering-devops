#!/usr/bin/python3
"""
 a function that queries the Reddit API and returns
 the number of subscribers
 """
import requests


def number_of_subscribers(subreddit):
    """the total number of subscribers on a given subreddi"""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {"User-Agent": "Mozilla/5.0"}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        res = (response.json().get("data")).get("subscribers")
        return res
    else:
        return 0