.class public final Lio/sentry/android/ndk/NdkScopeObserver;
.super Lio/sentry/ScopeObserverAdapter;
.source "NdkScopeObserver.java"


# instance fields
.field private final nativeScope:Lio/sentry/ndk/INativeScope;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 28
    new-instance v0, Lio/sentry/ndk/NativeScope;

    invoke-direct {v0}, Lio/sentry/ndk/NativeScope;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/sentry/android/ndk/NdkScopeObserver;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ndk/INativeScope;)V

    .line 29
    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/ndk/INativeScope;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "nativeScope"    # Lio/sentry/ndk/INativeScope;

    .line 31
    invoke-direct {p0}, Lio/sentry/ScopeObserverAdapter;-><init>()V

    .line 32
    const-string v0, "The SentryOptions object is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 33
    const-string v0, "The NativeScope object is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ndk/INativeScope;

    iput-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    .line 34
    return-void
.end method


# virtual methods
.method public addAttachment(Lio/sentry/Attachment;)V
    .locals 8
    .param p1, "attachment"    # Lio/sentry/Attachment;

    .line 152
    invoke-virtual {p1}, Lio/sentry/Attachment;->getPathname()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "pathname":Ljava/lang/String;
    const-string v1, "Scope sync addAttachment has an error."

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget-object v3, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v3

    new-instance v4, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v0}, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda8;-><init>(Lio/sentry/android/ndk/NdkScopeObserver;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p1}, Lio/sentry/Attachment;->getBytes()[B

    move-result-object v3

    .line 163
    .local v3, "bytes":[B
    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {p1}, Lio/sentry/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "filename":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v5

    new-instance v6, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0, v3, v4}, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda9;-><init>(Lio/sentry/android/ndk/NdkScopeObserver;[BLjava/lang/String;)V

    invoke-interface {v5, v6}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    goto :goto_1

    .line 167
    :catchall_1
    move-exception v5

    .line 168
    .local v5, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v6, v7, v5, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 173
    .end local v4    # "filename":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 174
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 175
    const-string v5, "Scope sync addAttachment skips attachment without path or bytes."

    invoke-interface {v1, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 5
    .param p1, "crumb"    # Lio/sentry/Breadcrumb;

    .line 59
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 60
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/ndk/NdkScopeObserver;Lio/sentry/Breadcrumb;)V

    .line 61
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Scope sync addBreadcrumb has an error."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public clearAttachments()V
    .locals 5

    .line 181
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda7;-><init>(Lio/sentry/android/ndk/NdkScopeObserver;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Scope sync clearAttachments has an error."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic lambda$addAttachment$7$io-sentry-android-ndk-NdkScopeObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    invoke-interface {v0, p1}, Lio/sentry/ndk/INativeScope;->addAttachment(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$addAttachment$8$io-sentry-android-ndk-NdkScopeObserver([BLjava/lang/String;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "filename"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    invoke-interface {v0, p1, p2}, Lio/sentry/ndk/INativeScope;->addAttachmentBytes([BLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$addBreadcrumb$1$io-sentry-android-ndk-NdkScopeObserver(Lio/sentry/Breadcrumb;)V
    .locals 8
    .param p1, "crumb"    # Lio/sentry/Breadcrumb;

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "level":Ljava/lang/String;
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryLevel;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 64
    :cond_0
    move-object v2, v0

    .line 67
    .end local v0    # "level":Ljava/lang/String;
    .local v2, "level":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/DateUtils;->getTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "timestamp":Ljava/lang/String;
    const/4 v1, 0x0

    .line 71
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v0

    .line 72
    .local v0, "dataRef":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    iget-object v3, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v3

    invoke-interface {v3, v0}, Lio/sentry/ISerializer;->serialize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 79
    .end local v0    # "dataRef":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    move-object v7, v1

    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 77
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 78
    const-string v7, "Breadcrumb data is not serializable."

    invoke-interface {v3, v4, v0, v7, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v1

    .line 81
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "data":Ljava/lang/String;
    .local v7, "data":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    .line 83
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getType()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-interface/range {v1 .. v7}, Lio/sentry/ndk/INativeScope;->addBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method synthetic lambda$clearAttachments$9$io-sentry-android-ndk-NdkScopeObserver()V
    .locals 1

    .line 181
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    invoke-interface {v0}, Lio/sentry/ndk/INativeScope;->clearAttachments()V

    return-void
.end method

.method synthetic lambda$removeExtra$5$io-sentry-android-ndk-NdkScopeObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    invoke-interface {v0, p1}, Lio/sentry/ndk/INativeScope;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$removeTag$3$io-sentry-android-ndk-NdkScopeObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    invoke-interface {v0, p1}, Lio/sentry/ndk/INativeScope;->removeTag(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setExtra$4$io-sentry-android-ndk-NdkScopeObserver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    invoke-interface {v0, p1, p2}, Lio/sentry/ndk/INativeScope;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setTag$2$io-sentry-android-ndk-NdkScopeObserver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    invoke-interface {v0, p1, p2}, Lio/sentry/ndk/INativeScope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setTrace$6$io-sentry-android-ndk-NdkScopeObserver(Lio/sentry/SpanContext;)V
    .locals 3
    .param p1, "spanContext"    # Lio/sentry/SpanContext;

    .line 143
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    .line 144
    invoke-virtual {p1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SpanId;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-interface {v0, v1, v2}, Lio/sentry/ndk/INativeScope;->setTrace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setUser$0$io-sentry-android-ndk-NdkScopeObserver(Lio/sentry/protocol/User;)V
    .locals 5
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 43
    if-nez p1, :cond_0

    .line 45
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    invoke-interface {v0}, Lio/sentry/ndk/INativeScope;->removeUser()V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/ndk/INativeScope;

    .line 48
    invoke-virtual {p1}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/protocol/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/sentry/protocol/User;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-interface {v0, v1, v2, v3, v4}, Lio/sentry/ndk/INativeScope;->setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 124
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda5;-><init>(Lio/sentry/android/ndk/NdkScopeObserver;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 127
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 128
    const-string v4, "Scope sync removeExtra(%s) has an error."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 106
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/ndk/NdkScopeObserver;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Scope sync removeTag(%s) has an error."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v0, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 115
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/ndk/NdkScopeObserver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Scope sync setExtra(%s) has an error."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v0, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 97
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/ndk/NdkScopeObserver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Scope sync setTag(%s) has an error."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v0, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V
    .locals 5
    .param p1, "spanContext"    # Lio/sentry/SpanContext;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 134
    if-nez p1, :cond_0

    .line 135
    return-void

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 140
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/ndk/NdkScopeObserver;Lio/sentry/SpanContext;)V

    .line 141
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Scope sync setTrace failed."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 5
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 39
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 40
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda6;-><init>(Lio/sentry/android/ndk/NdkScopeObserver;Lio/sentry/protocol/User;)V

    .line 41
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Scope sync setUser has an error."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
