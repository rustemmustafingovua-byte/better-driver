.class public final Lio/sentry/util/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/UrlUtils$UrlDetails;
    }
.end annotation


# static fields
.field public static final SENSITIVE_DATA_SUBSTITUTE:Ljava/lang/String; = "[Filtered]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterQueryParams(Ljava/lang/String;Lio/sentry/DataCollectionResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "resolver"    # Lio/sentry/DataCollectionResolver;

    .line 52
    invoke-virtual {p1}, Lio/sentry/DataCollectionResolver;->isDataCollectionConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Lio/sentry/DataCollectionResolver;->getUrlQueryParams()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    invoke-static {p0, v0}, Lio/sentry/util/HttpUtils;->filterQueryParams(Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    move-object v0, p0

    .line 52
    :goto_0
    return-object v0
.end method

.method private static filterUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 72
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "[Filtered]"

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "userInfo":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    const-string v1, "[Filtered]:[Filtered]"

    goto :goto_0

    .line 82
    :cond_2
    nop

    :goto_0
    nop

    .line 83
    .local v1, "filteredUserInfo":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static isValidAbsoluteUrl(Ljava/net/URI;)Z
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;

    .line 58
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "ws"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "wss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    nop

    .line 68
    return v2

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    return v3

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public static parse(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/sentry/util/UrlUtils;->parse(Ljava/lang/String;Lio/sentry/DataCollectionResolver;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lio/sentry/DataCollectionResolver;)Lio/sentry/util/UrlUtils$UrlDetails;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "resolver"    # Lio/sentry/DataCollectionResolver;

    .line 28
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lio/sentry/util/UrlUtils;->isValidAbsoluteUrl(Ljava/net/URI;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    new-instance v2, Lio/sentry/util/UrlUtils$UrlDetails;

    invoke-direct {v2, v0, v0, v0}, Lio/sentry/util/UrlUtils$UrlDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "schemeAndSeparator":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "authority":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "path":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "rawQuery":Ljava/lang/String;
    if-nez p1, :cond_4

    move-object v6, v5

    goto :goto_3

    :cond_4
    invoke-static {v5, p1}, Lio/sentry/util/UrlUtils;->filterQueryParams(Ljava/lang/String;Lio/sentry/DataCollectionResolver;)Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "query":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "fragment":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lio/sentry/util/UrlUtils;->filterUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, "filteredUrl":Ljava/lang/String;
    new-instance v9, Lio/sentry/util/UrlUtils$UrlDetails;

    invoke-direct {v9, v8, v6, v7}, Lio/sentry/util/UrlUtils$UrlDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v9

    .line 45
    .end local v1    # "uri":Ljava/net/URI;
    .end local v2    # "schemeAndSeparator":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "rawQuery":Ljava/lang/String;
    .end local v6    # "query":Ljava/lang/String;
    .end local v7    # "fragment":Ljava/lang/String;
    .end local v8    # "filteredUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lio/sentry/util/UrlUtils$UrlDetails;

    invoke-direct {v2, v0, v0, v0}, Lio/sentry/util/UrlUtils$UrlDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static parseNullable(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 18
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/sentry/util/UrlUtils;->parse(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object v0

    :goto_0
    return-object v0
.end method
