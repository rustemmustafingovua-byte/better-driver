.class public final Lio/sentry/FilterString;
.super Ljava/lang/Object;
.source "FilterString.java"


# instance fields
.field private final filterString:Ljava/lang/String;

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "filterString"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/sentry/FilterString;->filterString:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    .line 16
    .local v0, "pattern":Ljava/util/regex/Pattern;
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 25
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v2

    .line 19
    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    .line 21
    const-string v5, "Only using filter string for String comparison as it could not be parsed as regex: %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    iput-object v0, p0, Lio/sentry/FilterString;->pattern:Ljava/util/regex/Pattern;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/sentry/FilterString;

    .line 44
    .local v0, "that":Lio/sentry/FilterString;
    iget-object v1, p0, Lio/sentry/FilterString;->filterString:Ljava/lang/String;

    iget-object v2, v0, Lio/sentry/FilterString;->filterString:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 42
    .end local v0    # "that":Lio/sentry/FilterString;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFilterString()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/sentry/FilterString;->filterString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 49
    iget-object v0, p0, Lio/sentry/FilterString;->filterString:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lio/sentry/FilterString;->pattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    iget-object v0, p0, Lio/sentry/FilterString;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
