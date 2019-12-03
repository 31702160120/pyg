<?php
$config = array(
    //应用ID,您的APPID。
    'app_id' => "2016101700704936",

    //商户私钥
    'merchant_private_key' => "MIIEpAIBAAKCAQEAukPiK7oK97shYPmAvTdY9XAwk9+SIXZwoqpWaX9X6ppax+g7fADv3osVZkViSoeACQHatlmH+y50Lnn/eZqmL6/C9n7yklsDxCBk07wO9FVx4FiKtAcFni2YOFICHw1Aw2IJ8+0s0rcdUqDPQmqiGEkgVkUsp0uyIU9q/xGlrE4Rmck256FV6lchqu0GTUwpNO/QkGJc/tGhoSbVbq9GTZrGYjApxSenzxf2w7tJZpwv+DZFRi0nK6zZRp/WLjeT7tD5bo1a55DFwBRae5pb2jM0jF+cpuKr7fFzl1a2FJ3qn8OBE6LbHoCRtoE7pZb0+VRXOsyCgYozQ8fgGe16AQIDAQABAoIBAHDLBry/7kBR20akECeEyqPmCiShsBX/aPm3+Jft+0kfq3V+1fajgp3az1ydC4ZiQ1AxBUaDNOsQGF7ElcYHtjcOUht+iFnEL6WmkCf/q3ad/1WBiIy369j7d0AzuQEgv2URi0FhEFGRfXo50wg/FmVqcuCLBx1Po1C0jPBkuVR68CYJVNrmQx4+ocd8wDXgX6oy0lJwHWHnxhY8LfjpQPjOFPn6O4qDps+/yuk/klc3K9L7tTVGUOk43WZM7oWqsmQ7FjPHI8TLUFnU/qcKqbNRmJLyTAxRQ92bfFOujiljBc3ddPnMALW5jLjlLBJEfNqTZI1j+e0eb++zjkIlZZkCgYEA8e2UG7kdWNc4y/KGaKh19HSOlFhooxTtEeVf8nyFP7qhbDQoJwMKVDhUDEcmDdObnJSJnZxBaXWBFbWPgMv5ukkcaVc0gt9OQGuan6L14wpZdVQcX8kixtU4qJoTgLQuM4M/lmSVmzLt7bVSWTxoeQfEn1rISrJrT0Yr+svCsicCgYEAxRl1c7VxW+ifkRdZzokiSa/ChTgGNz/Yt9fwTFrwvql63pxrcaprjSHqIBJjsciVmsSUNK5mkqm8TklbO6ed5llb47zMGAkx1QOGM8hW9M5iZd/8i5X4qMpWf6AcESnHaRQo+GB6B6witM/mpNl/GNRC0cNLeeUt89Ugx3Qmk5cCgYEAsElJUkY6j0EM3vgTXvHaOc4xEwG1BZi7Av5cQurfgcex1pHO7FZ30VTWUbgKj6qxSpCmEpYIyBrafAI31kdL6qVZsZzc47xqXeDK5CYv/EfPVgJ7RoTe9XnrdlgHfBJPVDQAQst6hIPBAiTNI78z9XVmniPdrSiDr1lXtMGDVqMCgYEAh6IUZDLJNnEnVWYXQ/y0nraXiqtaA60pCqJL14+BOgNQ7V4AxjB7YJylC7r75fzdjqqWPoaBSY4KamkqoiufikOV62shm6zAIRESyhGkXUSlC+wOU1Q50JWk3qCkj98LPbFE3F8vupXnMDwdQPX283QmI0lcaB6g97mDnB2+6jMCgYB1Fa2n9Bxg4Q49CNCucZ0f3ROY19Hkt1bGGxGWNN5nqO15Td+wBEzZw7nxgGxfpjrbS1qqhZWw4F7gqZ7IyNo77dcJLjKrBu/5mm30jEArwNVrq8SpqxG5UXSLr2K7Yz5ATq98hFDRokOVZX4vunZKji67M02cvJIJycxs4nNsxQ==",

    //异步通知地址  外网可访问网关地址
    'notify_url' => "http://www.pyg.com/home/order/notify",

    //同步跳转  外网可访问网关地址
    'return_url' => "http://www.pyg.com/home/order/callback",
    //编码格式
    'charset' => "UTF-8",

    //签名方式
    'sign_type' => "RSA2",

    //支付宝网关
    'gatewayUrl' => "https://openapi.alipaydev.com/gateway.do",

    //支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    'alipay_public_key' => "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvVrH1YabRmozOopQEVksZZI7gKArmlR3CiK+u2NOsuoJy5jEWNp1lpDkHAXjjPZvERfFkmuzqAhtcyK6PYUakr2OYDIJODcBbFW5PXAGNFXyX+omFjgnJGSgSZCpJO7aQR/OWrqUjwIz+/qpKHrtvV9Um4VBbDGHgS/DNyeaOmLuv+iUv/g72I7ed+GwXZ0R/ESapnsB3SIAPvo+SqLf/LOVlAuyLqcQdN+dq6a6rYFSONjc2CvA7Reewc5J5nhkRzorKId6cvWuLKtpWjlfI+mQZk+oCUzjQgwZLJMCuFs9569xyfpBXF+2/+1BiUwGA/VWn+7ZM/htzNfA8S/vwwIDAQAB",
);
