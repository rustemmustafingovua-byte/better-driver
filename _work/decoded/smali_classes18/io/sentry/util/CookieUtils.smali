.class public final Lio/sentry/util/CookieUtils;
.super Ljava/lang/Object;
.source "CookieUtils.java"


# static fields
.field public static final COOKIE_HEADER_NAME:Ljava/lang/String; = "Cookie"

.field private static final SECURITY_COOKIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    const-string v5, "CSRFTOKEN"

    const-string v6, "XSRF-TOKEN"

    const-string v0, "JSESSIONID"

    const-string v1, "JSESSIONIDSSO"

    const-string v2, "JSSOSESSIONID"

    const-string v3, "SESSIONID"

    const-string v4, "SID"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/util/CookieUtils;->SECURITY_COOKIES:Ljava/util/List;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterCookie(Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .param p0, "cookie"    # Ljava/lang/String;
    .param p1, "behavior"    # Lio/sentry/KeyValueCollectionBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/sentry/KeyValueCollectionBehavior;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 119
    .local p2, "additionalSensitiveCookieNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    return-object p0

    .line 123
    :cond_0
    invoke-static {p0}, Lio/sentry/util/CookieUtils;->isValidCookiePair(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "[Filtered]"

    if-nez v0, :cond_1

    .line 124
    return-object v1

    .line 127
    :cond_1
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 128
    .local v0, "separator":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "normalizedName":Ljava/lang/String;
    nop

    .line 131
    invoke-static {v4}, Lio/sentry/util/HttpUtils;->containsSensitiveDataKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    .line 132
    invoke-static {v4, p2}, Lio/sentry/util/CookieUtils;->isSecurityCookie(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v6

    .line 133
    .local v5, "sensitive":Z
    :goto_1
    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getTerms()Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v7}, Lio/sentry/util/HttpUtils;->containsTerm(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    .line 134
    .local v7, "matchesTerm":Z
    if-nez v5, :cond_5

    .line 136
    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v8

    sget-object v9, Lio/sentry/KeyValueCollectionBehavior$Mode;->DENY_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v8, v9, :cond_4

    if-nez v7, :cond_5

    .line 137
    :cond_4
    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v8

    sget-object v9, Lio/sentry/KeyValueCollectionBehavior$Mode;->ALLOW_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v8, v9, :cond_6

    if-nez v7, :cond_6

    :cond_5
    move v2, v6

    .line 139
    .local v2, "shouldFilter":Z
    :cond_6
    if-eqz v2, :cond_7

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 142
    :cond_7
    return-object p0
.end method

.method public static filterCookies(Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "cookies"    # Ljava/lang/String;
    .param p1, "behavior"    # Lio/sentry/KeyValueCollectionBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/sentry/KeyValueCollectionBehavior;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 74
    .local p2, "additionalSensitiveCookieNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v0

    sget-object v1, Lio/sentry/KeyValueCollectionBehavior$Mode;->OFF:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    const-string v0, ";"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "cookieValues":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v1, "filteredCookies":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 81
    if-lez v2, :cond_1

    .line 82
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    aget-object v3, v0, v2

    .line 85
    invoke-static {v3, p1, p2}, Lio/sentry/util/CookieUtils;->filterCookie(Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 75
    .end local v0    # "cookieValues":[Ljava/lang/String;
    .end local v1    # "filteredCookies":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static filterCookies(Ljava/lang/String;Lio/sentry/SentryOptions;)Ljava/lang/String;
    .locals 2
    .param p0, "cookies"    # Ljava/lang/String;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 64
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDataCollectionResolver()Lio/sentry/DataCollectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollectionResolver;->isDataCollectionConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    .line 67
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDataCollectionResolver()Lio/sentry/DataCollectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollectionResolver;->getCookies()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lio/sentry/util/CookieUtils;->filterCookies(Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static filterCookiesFromHeader(Ljava/util/Enumeration;Lio/sentry/KeyValueCollectionBehavior;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "behavior"    # Lio/sentry/KeyValueCollectionBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/KeyValueCollectionBehavior;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    .local p0, "headers":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .local p2, "additionalSensitiveCookieNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_0
    nop

    .line 40
    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 39
    invoke-static {v0, p1, p2}, Lio/sentry/util/CookieUtils;->filterCookiesFromHeader(Ljava/util/List;Lio/sentry/KeyValueCollectionBehavior;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0
.end method

.method public static filterCookiesFromHeader(Ljava/util/List;Lio/sentry/KeyValueCollectionBehavior;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "behavior"    # Lio/sentry/KeyValueCollectionBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/KeyValueCollectionBehavior;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "additionalSensitiveCookieNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v0

    sget-object v1, Lio/sentry/KeyValueCollectionBehavior$Mode;->OFF:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "filteredHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    .local v2, "header":Ljava/lang/String;
    nop

    .line 54
    invoke-static {v2, p1, p2}, Lio/sentry/util/CookieUtils;->filterCookies(Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "filteredHeader":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v2    # "header":Ljava/lang/String;
    .end local v3    # "filteredHeader":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 59
    :cond_2
    return-object v0

    .line 48
    .end local v0    # "filteredHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static filterOutSecurityCookies(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .param p0, "cookieString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 251
    .local p1, "additionalCookieNamesToFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    const-string v0, ";"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "cookies":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v3, "filteredCookieString":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 258
    .local v4, "isFirst":Z
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v8, v2, v7

    .line 259
    .local v8, "cookie":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 260
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    const-string v9, "="

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 264
    .local v10, "cookieParts":[Ljava/lang/String;
    aget-object v11, v10, v6

    .line 265
    .local v11, "cookieName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, p1}, Lio/sentry/util/CookieUtils;->isSecurityCookie(Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 266
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "[Filtered]"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :goto_1
    const/4 v4, 0x0

    .line 258
    .end local v8    # "cookie":Ljava/lang/String;
    .end local v10    # "cookieParts":[Ljava/lang/String;
    .end local v11    # "cookieName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static filterOutSecurityCookiesFromHeader(Ljava/util/Enumeration;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    .local p0, "headers":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .local p2, "additionalCookieNamesToFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_0
    nop

    .line 226
    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 225
    invoke-static {v0, p1, p2}, Lio/sentry/util/CookieUtils;->filterOutSecurityCookiesFromHeader(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static filterOutSecurityCookiesFromHeader(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "additionalCookieNamesToFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 234
    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "Cookie"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    return-object p0

    .line 241
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "filteredHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    .local v2, "header":Ljava/lang/String;
    invoke-static {v2, p2}, Lio/sentry/util/CookieUtils;->filterOutSecurityCookies(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v2    # "header":Ljava/lang/String;
    goto :goto_0

    .line 245
    :cond_2
    return-object v0
.end method

.method public static filterSetCookie(Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;)Ljava/lang/String;
    .locals 5
    .param p0, "cookie"    # Ljava/lang/String;
    .param p1, "behavior"    # Lio/sentry/KeyValueCollectionBehavior;

    .line 100
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lio/sentry/KeyValueCollectionBehavior;->getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v1

    sget-object v2, Lio/sentry/KeyValueCollectionBehavior$Mode;->OFF:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 104
    :cond_0
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 106
    .local v1, "attributesSeparator":I
    if-gez v1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "cookieValue":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lio/sentry/util/CookieUtils;->isValidCookiePair(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    const-string v0, "[Filtered]"

    return-object v0

    .line 111
    :cond_2
    if-gez v1, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "attributes":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, p1, v0}, Lio/sentry/util/CookieUtils;->filterCookie(Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    .end local v1    # "attributesSeparator":I
    .end local v2    # "cookieValue":Ljava/lang/String;
    .end local v3    # "attributes":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static filterSetCookie(Ljava/lang/String;Lio/sentry/SentryOptions;)Ljava/lang/String;
    .locals 1
    .param p0, "cookie"    # Ljava/lang/String;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 92
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDataCollectionResolver()Lio/sentry/DataCollectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollectionResolver;->isDataCollectionConfigured()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDataCollectionResolver()Lio/sentry/DataCollectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollectionResolver;->getCookies()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    invoke-static {p0, v0}, Lio/sentry/util/CookieUtils;->filterSetCookie(Ljava/lang/String;Lio/sentry/KeyValueCollectionBehavior;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isCookieNameCharacter(C)Z
    .locals 2
    .param p0, "value"    # C

    .line 181
    const/16 v0, 0x61

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    .line 184
    :cond_2
    return v1

    .line 187
    :cond_3
    sparse-switch p0, :sswitch_data_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 203
    :sswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7c -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method private static isCookieOctet(C)Z
    .locals 1
    .param p0, "value"    # C

    .line 210
    const/16 v0, 0x21

    if-eq p0, v0, :cond_4

    const/16 v0, 0x23

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2b

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x2d

    if-lt p0, v0, :cond_1

    const/16 v0, 0x3a

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5b

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x5d

    if-lt p0, v0, :cond_3

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSecurityCookie(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .param p0, "cookieName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 278
    .local p1, "additionalCookieNamesToFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "cookieNameToSearchFor":Ljava/lang/String;
    sget-object v1, Lio/sentry/util/CookieUtils;->SECURITY_COOKIES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 280
    return v2

    .line 283
    :cond_0
    if-eqz p1, :cond_2

    .line 284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 285
    .local v3, "additionalCookieName":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    return v2

    .line 288
    .end local v3    # "additionalCookieName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 290
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static isValidCookieName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/sentry/util/CookieUtils;->isCookieNameCharacter(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    const/4 v1, 0x0

    return v1

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static isValidCookiePair(Ljava/lang/String;)Z
    .locals 10
    .param p0, "cookie"    # Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "cookiePair":Ljava/lang/String;
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 148
    .local v1, "separator":I
    const/4 v2, 0x0

    if-lez v1, :cond_6

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/sentry/util/CookieUtils;->isValidCookieName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 152
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 154
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 155
    .local v5, "end":I
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x22

    if-ne v6, v8, :cond_3

    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x2

    if-lt v6, v9, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 160
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 157
    :cond_2
    :goto_0
    return v2

    .line 163
    :cond_3
    :goto_1
    move v6, v4

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_5

    .line 164
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lio/sentry/util/CookieUtils;->isCookieOctet(C)Z

    move-result v8

    if-nez v8, :cond_4

    .line 165
    return v2

    .line 163
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 168
    .end local v6    # "i":I
    :cond_5
    return v7

    .line 149
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_6
    :goto_3
    return v2
.end method
