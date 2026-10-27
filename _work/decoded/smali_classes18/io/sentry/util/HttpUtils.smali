.class public final Lio/sentry/util/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final CLIENT_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;

.field private static final SENSITIVE_DATA_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSITIVE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEVER_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 21
    const-string v10, "X-CSRFTOKEN"

    const-string v11, "X-XSRF-TOKEN"

    const-string v0, "X-FORWARDED-FOR"

    const-string v1, "AUTHORIZATION"

    const-string v2, "COOKIE"

    const-string v3, "SET-COOKIE"

    const-string v4, "X-API-KEY"

    const-string v5, "X-REAL-IP"

    const-string v6, "REMOTE-ADDR"

    const-string v7, "FORWARDED"

    const-string v8, "PROXY-AUTHORIZATION"

    const-string v9, "X-CSRF-TOKEN"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/util/HttpUtils;->SENSITIVE_HEADERS:Ljava/util/List;

    .line 36
    const-string v16, "sid"

    const-string v17, "identity"

    const-string v1, "auth"

    const-string v2, "token"

    const-string v3, "secret"

    const-string v4, "password"

    const-string v5, "passwd"

    const-string v6, "pwd"

    const-string v7, "key"

    const-string v8, "jwt"

    const-string v9, "bearer"

    const-string v10, "sso"

    const-string v11, "saml"

    const-string v12, "csrf"

    const-string v13, "xsrf"

    const-string v14, "credentials"

    const-string v15, "session"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/util/HttpUtils;->SENSITIVE_DATA_KEYS:Ljava/util/List;

    .line 56
    new-instance v0, Lio/sentry/HttpStatusCodeRange;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2}, Lio/sentry/HttpStatusCodeRange;-><init>(II)V

    sput-object v0, Lio/sentry/util/HttpUtils;->CLIENT_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;

    .line 59
    new-instance v0, Lio/sentry/HttpStatusCodeRange;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2}, Lio/sentry/HttpStatusCodeRange;-><init>(II)V

    sput-object v0, Lio/sentry/util/HttpUtils;->SEVER_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static containsSensitiveDataKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 139
    sget-object v0, Lio/sentry/util/HttpUtils;->SENSITIVE_DATA_KEYS:Ljava/util/List;

    invoke-static {p0, v0}, Lio/sentry/util/HttpUtils;->containsTerm(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static containsSensitiveHeader(Ljava/lang/String;)Z
    .locals 2
    .param p0, "header"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lio/sentry/util/HttpUtils;->SENSITIVE_HEADERS:Ljava/util/List;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static containsTerm(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 143
    .local p1, "terms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "normalizedKey":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "term":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    const/4 v1, 0x1

    return v1

    .line 150
    .end local v2    # "term":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 151
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static decodeQueryParamName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 132
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 134
    .local v0, "ignored":Ljava/lang/Exception;
    :goto_0
    return-object p0
.end method

.method public static filterHeaders(Ljava/util/Map;Lio/sentry/KeyValueCollectionBehavior;)Ljava/util/Map;
    .locals 11
    .param p1, "behavior"    # Lio/sentry/KeyValueCollectionBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/KeyValueCollectionBehavior;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 104
    .local v0, "filteredHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v1

    sget-object v2, Lio/sentry/KeyValueCollectionBehavior$Mode;->OFF:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v1, v2, :cond_0

    .line 105
    return-object v0

    .line 108
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 109
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Lio/sentry/util/HttpUtils;->SENSITIVE_DATA_KEYS:Ljava/util/List;

    .line 111
    invoke-static {v3, v4}, Lio/sentry/util/HttpUtils;->containsTerm(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 112
    const-string v4, "Cookie"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 113
    const-string v4, "Set-Cookie"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v6

    .line 114
    .local v4, "sensitive":Z
    :goto_2
    const-string v7, "[Filtered]"

    if-eqz v4, :cond_3

    .line 115
    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 117
    :cond_3
    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getTerms()Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v8}, Lio/sentry/util/HttpUtils;->containsTerm(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    .line 119
    .local v8, "matchesTerm":Z
    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v9

    sget-object v10, Lio/sentry/KeyValueCollectionBehavior$Mode;->DENY_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v9, v10, :cond_4

    .line 120
    move v5, v8

    goto :goto_3

    .line 121
    :cond_4
    if-nez v8, :cond_5

    move v5, v6

    :cond_5
    :goto_3
    nop

    .line 122
    .local v5, "shouldFilter":Z
    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    :goto_4
    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "sensitive":Z
    .end local v5    # "shouldFilter":Z
    .end local v8    # "matchesTerm":Z
    :goto_5
    goto :goto_0

    .line 125
    :cond_7
    return-object v0
.end method

.method public static filterQueryParams(Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;)Ljava/lang/String;
    .locals 13
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "behavior"    # Lio/sentry/KeyValueCollectionBehavior;

    .line 68
    if-eqz p0, :cond_9

    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v0

    sget-object v1, Lio/sentry/KeyValueCollectionBehavior$Mode;->OFF:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "filteredQuery":Ljava/lang/StringBuilder;
    const-string v1, "&"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "params":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_8

    .line 75
    if-lez v2, :cond_1

    .line 76
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_1
    aget-object v3, v1, v2

    .line 80
    .local v3, "param":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 81
    .local v5, "separator":I
    const/4 v6, 0x0

    if-gez v5, :cond_2

    move-object v7, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "name":Ljava/lang/String;
    :goto_1
    invoke-static {v7}, Lio/sentry/util/HttpUtils;->decodeQueryParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "decodedName":Ljava/lang/String;
    sget-object v9, Lio/sentry/util/HttpUtils;->SENSITIVE_DATA_KEYS:Ljava/util/List;

    invoke-static {v8, v9}, Lio/sentry/util/HttpUtils;->containsTerm(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    .line 84
    .local v9, "sensitive":Z
    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getTerms()Ljava/util/List;

    move-result-object v10

    invoke-static {v8, v10}, Lio/sentry/util/HttpUtils;->containsTerm(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    .line 85
    .local v10, "matchesTerm":Z
    if-nez v9, :cond_4

    .line 87
    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v11

    sget-object v12, Lio/sentry/KeyValueCollectionBehavior$Mode;->DENY_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v11, v12, :cond_3

    if-nez v10, :cond_4

    .line 88
    :cond_3
    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v11

    sget-object v12, Lio/sentry/KeyValueCollectionBehavior$Mode;->ALLOW_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v11, v12, :cond_5

    if-nez v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 90
    .local v6, "shouldFilter":Z
    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    if-eqz v6, :cond_6

    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "[Filtered]"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 93
    :cond_6
    if-ltz v5, :cond_7

    .line 94
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .end local v3    # "param":Ljava/lang/String;
    .end local v5    # "separator":I
    .end local v6    # "shouldFilter":Z
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "decodedName":Ljava/lang/String;
    .end local v9    # "sensitive":Z
    .end local v10    # "matchesTerm":Z
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 69
    .end local v0    # "filteredQuery":Ljava/lang/StringBuilder;
    .end local v1    # "params":[Ljava/lang/String;
    :cond_9
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isHttpClientError(I)Z
    .locals 1
    .param p0, "statusCode"    # I

    .line 155
    sget-object v0, Lio/sentry/util/HttpUtils;->CLIENT_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;

    invoke-virtual {v0, p0}, Lio/sentry/HttpStatusCodeRange;->isInRange(I)Z

    move-result v0

    return v0
.end method

.method public static isHttpServerError(I)Z
    .locals 1
    .param p0, "statusCode"    # I

    .line 159
    sget-object v0, Lio/sentry/util/HttpUtils;->SEVER_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;

    invoke-virtual {v0, p0}, Lio/sentry/HttpStatusCodeRange;->isInRange(I)Z

    move-result v0

    return v0
.end method
