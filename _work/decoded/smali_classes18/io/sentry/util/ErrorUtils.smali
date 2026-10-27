.class public final Lio/sentry/util/ErrorUtils;
.super Ljava/lang/Object;
.source "ErrorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIgnored(Ljava/util/List;Lio/sentry/SentryEvent;)Z
    .locals 10
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;",
            "Lio/sentry/SentryEvent;",
            ")Z"
        }
    .end annotation

    .line 20
    .local p0, "ignoredErrors":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 24
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 26
    .local v1, "possibleMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getMessage()Lio/sentry/protocol/Message;

    move-result-object v2

    .line 27
    .local v2, "eventMessage":Lio/sentry/protocol/Message;
    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v2}, Lio/sentry/protocol/Message;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "stringMessage":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 30
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1
    invoke-virtual {v2}, Lio/sentry/protocol/Message;->getFormatted()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "formattedMessage":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 34
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v3    # "stringMessage":Ljava/lang/String;
    .end local v4    # "formattedMessage":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    .line 38
    .local v3, "throwable":Ljava/lang/Throwable;
    if-eqz v3, :cond_3

    .line 39
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/FilterString;

    .line 43
    .local v5, "filter":Lio/sentry/FilterString;
    invoke-virtual {v5}, Lio/sentry/FilterString;->getFilterString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 44
    return v6

    .line 46
    .end local v5    # "filter":Lio/sentry/FilterString;
    :cond_4
    goto :goto_0

    .line 48
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/FilterString;

    .line 49
    .restart local v5    # "filter":Lio/sentry/FilterString;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 50
    .local v8, "message":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lio/sentry/FilterString;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 51
    return v6

    .line 53
    .end local v8    # "message":Ljava/lang/String;
    :cond_6
    goto :goto_2

    .line 54
    .end local v5    # "filter":Lio/sentry/FilterString;
    :cond_7
    goto :goto_1

    .line 56
    :cond_8
    return v0

    .line 21
    .end local v1    # "possibleMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "eventMessage":Lio/sentry/protocol/Message;
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_9
    :goto_3
    return v0
.end method
