.class public final Lio/sentry/SentryThreadFactory;
.super Ljava/lang/Object;
.source "SentryThreadFactory.java"


# instance fields
.field private final sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;


# direct methods
.method public constructor <init>(Lio/sentry/SentryStackTraceFactory;)V
    .locals 0
    .param p1, "sentryStackTraceFactory"    # Lio/sentry/SentryStackTraceFactory;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/sentry/SentryThreadFactory;->sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 29
    return-void
.end method

.method private getSentryThread(Z[Ljava/lang/StackTraceElement;Ljava/lang/Thread;Z)Lio/sentry/protocol/SentryThread;
    .locals 4
    .param p1, "crashed"    # Z
    .param p2, "stackFramesElements"    # [Ljava/lang/StackTraceElement;
    .param p3, "thread"    # Ljava/lang/Thread;
    .param p4, "attachStacktrace"    # Z

    .line 131
    new-instance v0, Lio/sentry/protocol/SentryThread;

    invoke-direct {v0}, Lio/sentry/protocol/SentryThread;-><init>()V

    .line 133
    .local v0, "sentryThread":Lio/sentry/protocol/SentryThread;
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setName(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setPriority(Ljava/lang/Integer;)V

    .line 135
    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setId(Ljava/lang/Long;)V

    .line 136
    invoke-virtual {p3}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setDaemon(Ljava/lang/Boolean;)V

    .line 137
    invoke-virtual {p3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setState(Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setCrashed(Ljava/lang/Boolean;)V

    .line 140
    if-eqz p4, :cond_0

    .line 141
    iget-object v1, p0, Lio/sentry/SentryThreadFactory;->sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lio/sentry/SentryStackTraceFactory;->getStackFrames([Ljava/lang/StackTraceElement;Z)Ljava/util/List;

    move-result-object v1

    .line 144
    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    new-instance v2, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {v2, v1}, Lio/sentry/protocol/SentryStackTrace;-><init>(Ljava/util/List;)V

    .line 147
    .local v2, "sentryStackTrace":Lio/sentry/protocol/SentryStackTrace;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/protocol/SentryStackTrace;->setSnapshot(Ljava/lang/Boolean;)V

    .line 149
    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryThread;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    .line 153
    .end local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    .end local v2    # "sentryStackTrace":Lio/sentry/protocol/SentryStackTrace;
    :cond_0
    return-object v0
.end method


# virtual methods
.method getCurrentThread(Z)Ljava/util/List;
    .locals 4
    .param p1, "attachStackTrace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 41
    .local v1, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, Lio/sentry/SentryThreadFactory;->getCurrentThreads(Ljava/util/Map;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method getCurrentThreads(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .param p2, "attachStackTrace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 67
    .local p1, "mechanismThreadIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    nop

    .line 68
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lio/sentry/SentryThreadFactory;->getCurrentThreads(Ljava/util/Map;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCurrentThreads(Ljava/util/List;ZZ)Ljava/util/List;
    .locals 1
    .param p2, "ignoreCurrentThread"    # Z
    .param p3, "attachStackTrace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 60
    .local p1, "mechanismThreadIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    nop

    .line 61
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0, p1, p2, p3}, Lio/sentry/SentryThreadFactory;->getCurrentThreads(Ljava/util/Map;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCurrentThreads(Ljava/util/Map;Ljava/util/List;ZZ)Ljava/util/List;
    .locals 8
    .param p3, "ignoreCurrentThread"    # Z
    .param p4, "attachStackTrace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 90
    .local p1, "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .local p2, "mechanismThreadIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 92
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryThread;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 94
    .local v1, "currentThread":Ljava/lang/Thread;
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 98
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 104
    .local v3, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 105
    .local v4, "thread":Ljava/lang/Thread;
    if-ne v4, v1, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    .line 108
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p3, :cond_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 111
    .local v5, "crashed":Z
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    invoke-direct {p0, v5, v6, v7, p4}, Lio/sentry/SentryThreadFactory;->getSentryThread(Z[Ljava/lang/StackTraceElement;Ljava/lang/Thread;Z)Lio/sentry/protocol/SentryThread;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v4    # "thread":Ljava/lang/Thread;
    .end local v5    # "crashed":Z
    goto :goto_0

    .line 115
    :cond_4
    return-object v0
.end method
