.class public final Lio/sentry/MainEventProcessor;
.super Ljava/lang/Object;
.source "MainEventProcessor.java"

# interfaces
.implements Lio/sentry/internal/eventprocessor/SentryEventProcessor;


# instance fields
.field private final options:Lio/sentry/SentryOptions;

.field private final sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

.field private final sentryThreadFactory:Lio/sentry/SentryThreadFactory;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 29
    new-instance v0, Lio/sentry/SentryStackTraceFactory;

    iget-object v1, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-direct {v0, v1}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    .line 32
    .local v0, "sentryStackTraceFactory":Lio/sentry/SentryStackTraceFactory;
    new-instance v1, Lio/sentry/SentryExceptionFactory;

    invoke-direct {v1, v0}, Lio/sentry/SentryExceptionFactory;-><init>(Lio/sentry/SentryStackTraceFactory;)V

    iput-object v1, p0, Lio/sentry/MainEventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    .line 33
    new-instance v1, Lio/sentry/SentryThreadFactory;

    invoke-direct {v1, v0}, Lio/sentry/SentryThreadFactory;-><init>(Lio/sentry/SentryStackTraceFactory;)V

    iput-object v1, p0, Lio/sentry/MainEventProcessor;->sentryThreadFactory:Lio/sentry/SentryThreadFactory;

    .line 34
    return-void
.end method

.method private isCachedHint(Lio/sentry/Hint;)Z
    .locals 1
    .param p1, "hint"    # Lio/sentry/Hint;

    .line 259
    const-class v0, Lio/sentry/hints/Cached;

    invoke-static {p1, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private mergeUser(Lio/sentry/SentryBaseEvent;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 192
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    .line 193
    .local v0, "user":Lio/sentry/protocol/User;
    if-nez v0, :cond_0

    .line 194
    new-instance v1, Lio/sentry/protocol/User;

    invoke-direct {v1}, Lio/sentry/protocol/User;-><init>()V

    move-object v0, v1

    .line 195
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 197
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDataCollectionResolver()Lio/sentry/DataCollectionResolver;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollectionResolver;->isUserInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const-string v1, "{{auto}}"

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    .line 200
    :cond_1
    return-void
.end method

.method private processNonCachedEvent(Lio/sentry/SentryBaseEvent;)V
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 88
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setRelease(Lio/sentry/SentryBaseEvent;)V

    .line 89
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setEnvironment(Lio/sentry/SentryBaseEvent;)V

    .line 90
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setServerName(Lio/sentry/SentryBaseEvent;)V

    .line 91
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setDist(Lio/sentry/SentryBaseEvent;)V

    .line 92
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setSdk(Lio/sentry/SentryBaseEvent;)V

    .line 93
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setTags(Lio/sentry/SentryBaseEvent;)V

    .line 94
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->mergeUser(Lio/sentry/SentryBaseEvent;)V

    .line 95
    return-void
.end method

.method private setCommons(Lio/sentry/SentryBaseEvent;)V
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 135
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setPlatform(Lio/sentry/SentryBaseEvent;)V

    .line 136
    return-void
.end method

.method private setDebugMeta(Lio/sentry/SentryBaseEvent;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 52
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDebugMeta()Lio/sentry/protocol/DebugMeta;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-static {v0, v1}, Lio/sentry/protocol/DebugMeta;->buildDebugMeta(Lio/sentry/protocol/DebugMeta;Lio/sentry/SentryOptions;)Lio/sentry/protocol/DebugMeta;

    move-result-object v0

    .line 53
    .local v0, "debugMeta":Lio/sentry/protocol/DebugMeta;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setDebugMeta(Lio/sentry/protocol/DebugMeta;)V

    .line 56
    :cond_0
    return-void
.end method

.method private setDist(Lio/sentry/SentryBaseEvent;)V
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 168
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method

.method private setEnvironment(Lio/sentry/SentryBaseEvent;)V
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 152
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setEnvironment(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method private setExceptions(Lio/sentry/SentryEvent;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 203
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowableMechanism()Ljava/lang/Throwable;

    move-result-object v0

    .line 204
    .local v0, "throwable":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lio/sentry/MainEventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    invoke-virtual {v1, v0}, Lio/sentry/SentryExceptionFactory;->getSentryExceptions(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/SentryEvent;->setExceptions(Ljava/util/List;)V

    .line 207
    :cond_0
    return-void
.end method

.method private setModules(Lio/sentry/SentryEvent;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 59
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/internal/modules/IModulesLoader;->getOrLoadModules()Ljava/util/Map;

    move-result-object v0

    .line 60
    .local v0, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getModules()Ljava/util/Map;

    move-result-object v1

    .line 65
    .local v1, "eventModules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 66
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setModules(Ljava/util/Map;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70
    :goto_0
    return-void
.end method

.method private setPlatform(Lio/sentry/SentryBaseEvent;)V
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 139
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "java"

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setPlatform(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method private setRelease(Lio/sentry/SentryBaseEvent;)V
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 146
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setRelease(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method private setSdk(Lio/sentry/SentryBaseEvent;)V
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 174
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setSdk(Lio/sentry/protocol/SdkVersion;)V

    .line 177
    :cond_0
    return-void
.end method

.method private setServerName(Lio/sentry/SentryBaseEvent;)V
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 158
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getServerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setServerName(Ljava/lang/String;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isAttachServerName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getServerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getHostnameCache()Lio/sentry/HostnameCache;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/HostnameCache;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setServerName(Ljava/lang/String;)V

    .line 165
    :cond_1
    return-void
.end method

.method private setTags(Lio/sentry/SentryBaseEvent;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 180
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 183
    :cond_0
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 184
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 189
    :cond_2
    :goto_1
    return-void
.end method

.method private setThreads(Lio/sentry/SentryEvent;Lio/sentry/Hint;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 210
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, "mechanismThreadIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object v1

    .line 217
    .local v1, "eventExceptions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentryException;

    .line 219
    .local v3, "item":Lio/sentry/protocol/SentryException;
    invoke-virtual {v3}, Lio/sentry/protocol/SentryException;->getMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lio/sentry/protocol/SentryException;->getThreadId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 220
    if-nez v0, :cond_0

    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 223
    :cond_0
    invoke-virtual {v3}, Lio/sentry/protocol/SentryException;->getThreadId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v3    # "item":Lio/sentry/protocol/SentryException;
    :cond_1
    goto :goto_0

    .line 230
    :cond_2
    iget-object v2, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isAttachThreads()Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Lio/sentry/hints/AbnormalExit;

    invoke-static {p2, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 241
    :cond_3
    iget-object v2, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isAttachStacktrace()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_4

    .line 242
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 243
    :cond_4
    invoke-direct {p0, p2}, Lio/sentry/MainEventProcessor;->isCachedHint(Lio/sentry/Hint;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 246
    iget-object v2, p0, Lio/sentry/MainEventProcessor;->sentryThreadFactory:Lio/sentry/SentryThreadFactory;

    iget-object v3, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->isAttachStacktrace()Z

    move-result v3

    invoke-virtual {v2, v3}, Lio/sentry/SentryThreadFactory;->getCurrentThread(Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/sentry/SentryEvent;->setThreads(Ljava/util/List;)V

    goto :goto_2

    .line 231
    :cond_5
    :goto_1
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v2

    .line 232
    .local v2, "sentrySdkHint":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 233
    .local v3, "ignoreCurrentThread":Z
    iget-object v4, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->isAttachStacktrace()Z

    move-result v4

    .line 234
    .local v4, "attachStacktrace":Z
    instance-of v5, v2, Lio/sentry/hints/AbnormalExit;

    if-eqz v5, :cond_6

    .line 235
    move-object v5, v2

    check-cast v5, Lio/sentry/hints/AbnormalExit;

    invoke-interface {v5}, Lio/sentry/hints/AbnormalExit;->ignoreCurrentThread()Z

    move-result v3

    .line 236
    const/4 v4, 0x1

    .line 238
    :cond_6
    iget-object v5, p0, Lio/sentry/MainEventProcessor;->sentryThreadFactory:Lio/sentry/SentryThreadFactory;

    .line 239
    invoke-virtual {v5, v0, v3, v4}, Lio/sentry/SentryThreadFactory;->getCurrentThreads(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v5

    .line 238
    invoke-virtual {p1, v5}, Lio/sentry/SentryEvent;->setThreads(Ljava/util/List;)V

    .line 241
    .end local v2    # "sentrySdkHint":Ljava/lang/Object;
    .end local v3    # "ignoreCurrentThread":Z
    .end local v4    # "attachStacktrace":Z
    nop

    .line 249
    .end local v0    # "mechanismThreadIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "eventExceptions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    :cond_7
    :goto_2
    return-void
.end method

.method private shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z
    .locals 4
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 74
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 78
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 82
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 79
    const-string v3, "Event was cached so not applying data relevant to the current app execution/version: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getOrder()Ljava/lang/Long;
    .locals 2

    .line 264
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 38
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;)V

    .line 39
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setExceptions(Lio/sentry/SentryEvent;)V

    .line 40
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setDebugMeta(Lio/sentry/SentryBaseEvent;)V

    .line 41
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setModules(Lio/sentry/SentryEvent;)V

    .line 43
    invoke-direct {p0, p1, p2}, Lio/sentry/MainEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lio/sentry/MainEventProcessor;->setThreads(Lio/sentry/SentryEvent;Lio/sentry/Hint;)V

    .line 48
    :cond_0
    return-object p1
.end method

.method public process(Lio/sentry/SentryLogEvent;)Lio/sentry/SentryLogEvent;
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryLogEvent;

    .line 131
    return-object p1
.end method

.method public process(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryReplayEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 113
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;)V

    .line 118
    invoke-direct {p0, p1, p2}, Lio/sentry/MainEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;)V

    .line 120
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    .line 121
    .local v0, "replaySdkVersion":Lio/sentry/protocol/SdkVersion;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1, v0}, Lio/sentry/SentryReplayEvent;->setSdk(Lio/sentry/protocol/SdkVersion;)V

    .line 126
    .end local v0    # "replaySdkVersion":Lio/sentry/protocol/SdkVersion;
    :cond_0
    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 1
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 100
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;)V

    .line 101
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setDebugMeta(Lio/sentry/SentryBaseEvent;)V

    .line 103
    invoke-direct {p0, p1, p2}, Lio/sentry/MainEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;)V

    .line 107
    :cond_0
    return-object p1
.end method
