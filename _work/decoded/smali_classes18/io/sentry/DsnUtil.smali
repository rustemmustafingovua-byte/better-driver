.class public final Lio/sentry/DsnUtil;
.super Ljava/lang/Object;
.source "DsnUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "dsn"    # Ljava/lang/String;

    .line 18
    invoke-static {p0}, Lio/sentry/Dsn;->parseHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static urlContainsDsnHost(Lio/sentry/SentryOptions;Ljava/lang/String;)Z
    .locals 9
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "url"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 23
    return v0

    .line 26
    :cond_0
    if-nez p1, :cond_1

    .line 27
    return v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "dsnString":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 32
    return v0

    .line 35
    :cond_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    move-result-object v2

    .line 36
    .local v2, "dsn":Lio/sentry/Dsn;
    invoke-virtual {v2}, Lio/sentry/Dsn;->getSentryUri()Ljava/net/URI;

    move-result-object v3

    .line 37
    .local v3, "sentryUri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "dsnHost":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 40
    return v0

    .line 43
    :cond_3
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "lowerCaseHost":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v5

    .line 46
    .local v5, "dsnPort":I
    if-lez v5, :cond_4

    .line 47
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    return v6

    .line 49
    :cond_4
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    return v6
.end method
