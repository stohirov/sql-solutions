WITH TweetCount as (
    SELECT
        user_id,
        COUNT(tweet_id) AS tweet_bucket
    FROM Tweets
    WHERE
        YEAR(tweet_date) = 2022
    GROUP BY
        user_id
),

TweetHistogram as (
    SELECT
        tweet_bucket,
        COUNT(*) as user_count
    FROM TweetCount
    GROUP BY tweet_bucket
    ORDER BY tweet_bucket

)

SELECT tweet_bucket, user_count as users_num FROM TweetHistogram