---
sidebar: auto
---

# 管理后台 API 文档

## 概况

接口遵循 RESTful 设计规范。

## Response

### 成功返回

遵循 RESTFul 相关规范：

- GET：返回完整资源对象或资源对象列表
- POST：返回完整资源对象
- PUT：返回完整资源对象
- PATCH：返回完整资源对象
- DELETE：返回空文档
- OPTIONS：返回 `HTTP Status Code = 200`

### 错误返回

HTTP 状态码遵循 [HTTP Status Code](https://zh.wikipedia.org/wiki/HTTP%E7%8A%B6%E6%80%81%E7%A0%81) 规范，返回数据体如下：

```json
{
    "err_code":10001,
    "err_msg":"Error message"
}
```

- `err_code`：业务错误码
- `err_msg`：具体错误信息。当 `err_code` 为 `10000` 时（请求参数无效），`err_msg` 数据类型为 `object`，其他情况下 `err_msg` 均为字符串。 

## 错误码定义

| 错误码 | 说明 |
| ---- | ---- |
| 10000 | 请求参数无效 |
| 10001 | 账号或密码错误 |
| 10002 | 非法的授权信息 |
| 10006 | 提供的更新令牌已过期 |
| 11001 | 账号不存在 |
| 12001 | 邮箱已存在 |
| 14001 | 文章分类已存在 |