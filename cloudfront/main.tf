# Create Cloudfront

resource "aws_cloudfront_distribution" "Cloudfront" {
    origin {
        custom_origin_config {
            http_port = 80
            https_port = 443
            origin_keepalive_timeout = 5
            origin_protocol_policy = "match-viewer"
            origin_read_timeout = 30
            origin_ssl_protocols = [
                "TLSv1.2"
            ]
        }
        domain_name = "gn-nextapple-api-prod-elb-2006823874.ap-southeast-1.elb.amazonaws.com"
        origin_id = "gn-nextapple-api-prod-elb-2006823874.ap-southeast-1.elb.amazonaws.com"
        
        origin_path = ""
    origin_shield {
        enabled = true
        origin_shield_region = "ap-southeast-1"
    }
    }

    default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    compress = true
    smooth_streaming  = false
    target_origin_id = "xxxxxxxxxxxx.ap-southeast-1.elb.amazonaws.com"
    viewer_protocol_policy = "redirect-to-https"
    cache_policy_id        = "5a1b8f82-xxxxxxxxxxxx"
    }

    comment = ""
    price_class = "PriceClass_All"
    enabled = true

    viewer_certificate {
        acm_certificate_arn = "arn:aws:acm:us-east-1:xxxxxxxxxxxx:certificate/xxxxxxxxxxxx"
        cloudfront_default_certificate = false
        minimum_protocol_version = "TLSv1.2_2021"
        ssl_support_method = "sni-only"
    }
    restrictions {
        geo_restriction {
            restriction_type = "none"
        }
    }

    logging_config {
    include_cookies = false
    bucket          = "xxxxxxxxxxxx-cloudfront-access-log.s3.amazonaws.com"
    prefix          = "xxxxxxxxxxxx-api-prod-elb"
    }

    http_version = "http2"
    is_ipv6_enabled = true

    aliases = ["api.xxxxxxxxxxxx.com.tw"]
}