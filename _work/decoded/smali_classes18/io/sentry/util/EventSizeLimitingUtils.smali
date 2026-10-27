.class public final Lio/sentry/util/EventSizeLimitingUtils;
.super Ljava/lang/Object;
.source "EventSizeLimitingUtils.java"


# static fields
.field private static final FRAMES_PER_SIDE:I = 0xfa

.field private static final MAX_FRAMES_PER_STACK:I = 0x1f4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSizeOk(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Z
    .locals 4
    .param p0, "event"    # Lio/sentry/SentryEvent;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 111
    nop

    .line 112
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lio/sentry/util/JsonSerializationUtils;->byteSizeOf(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/JsonSerializable;)J

    move-result-wide v0

    .line 113
    .local v0, "size":J
    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static limitEventSize(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/SentryOptions;)Lio/sentry/SentryEvent;
    .locals 6
    .param p0, "event"    # Lio/sentry/SentryEvent;
    .param p1, "hint"    # Lio/sentry/Hint;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 45
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableEventSizeLimiting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return-object p0

    .line 49
    :cond_0
    invoke-static {p0, p2}, Lio/sentry/util/EventSizeLimitingUtils;->isSizeOk(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    return-object p0

    .line 53
    :cond_1
    nop

    .line 54
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Event %s exceeds %d bytes limit. Reducing size by dropping fields."

    .line 58
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    .line 59
    const-wide/32 v4, 0x100000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 55
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    move-object v0, p0

    .line 63
    .local v0, "reducedEvent":Lio/sentry/SentryEvent;
    nop

    .line 64
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getOnOversizedEvent()Lio/sentry/SentryOptions$OnOversizedEventCallback;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    .local v1, "callback":Lio/sentry/SentryOptions$OnOversizedEventCallback;
    if-eqz v1, :cond_3

    .line 67
    :try_start_1
    invoke-interface {v1, v0, p1}, Lio/sentry/SentryOptions$OnOversizedEventCallback;->execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v2

    move-object v0, v2

    .line 68
    invoke-static {v0, p2}, Lio/sentry/util/EventSizeLimitingUtils;->isSizeOk(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 69
    return-object v0

    .line 79
    :cond_2
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Throwable;
    nop

    .line 73
    :try_start_2
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "The onOversizedEvent callback threw an exception. It will be ignored and automatic reduction will continue."

    .line 74
    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    move-object v0, p0

    .line 82
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    invoke-static {v0, p2}, Lio/sentry/util/EventSizeLimitingUtils;->removeAllBreadcrumbs(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Lio/sentry/SentryEvent;

    move-result-object v2

    .line 83
    .end local v0    # "reducedEvent":Lio/sentry/SentryEvent;
    .local v2, "reducedEvent":Lio/sentry/SentryEvent;
    invoke-static {v2, p2}, Lio/sentry/util/EventSizeLimitingUtils;->isSizeOk(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    return-object v2

    .line 87
    :cond_4
    invoke-static {v2, p2}, Lio/sentry/util/EventSizeLimitingUtils;->truncateStackFrames(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Lio/sentry/SentryEvent;

    move-result-object v0

    .line 88
    .end local v2    # "reducedEvent":Lio/sentry/SentryEvent;
    .restart local v0    # "reducedEvent":Lio/sentry/SentryEvent;
    invoke-static {v0, p2}, Lio/sentry/util/EventSizeLimitingUtils;->isSizeOk(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 89
    nop

    .line 90
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Event %s still exceeds size limit after reducing all fields. Event may be rejected by server."

    .line 94
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 91
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :cond_5
    return-object v0

    .line 98
    .end local v0    # "reducedEvent":Lio/sentry/SentryEvent;
    .end local v1    # "callback":Lio/sentry/SentryOptions$OnOversizedEventCallback;
    :catchall_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 100
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 101
    const-string v3, "An error occurred while limiting event size. Event will be sent as-is."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-object p0
.end method

.method private static removeAllBreadcrumbs(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Lio/sentry/SentryEvent;
    .locals 5
    .param p0, "event"    # Lio/sentry/SentryEvent;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 118
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "breadcrumbs":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Breadcrumb;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/sentry/SentryEvent;->setBreadcrumbs(Ljava/util/List;)V

    .line 121
    nop

    .line 122
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 126
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 123
    const-string v4, "Removed breadcrumbs to reduce size of event %s"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-object p0
.end method

.method private static truncateStackFrames(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Lio/sentry/SentryEvent;
    .locals 6
    .param p0, "event"    # Lio/sentry/SentryEvent;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 133
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "exceptions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    if-eqz v0, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/protocol/SentryException;

    .line 136
    .local v2, "exception":Lio/sentry/protocol/SentryException;
    invoke-virtual {v2}, Lio/sentry/protocol/SentryException;->getStacktrace()Lio/sentry/protocol/SentryStackTrace;

    move-result-object v3

    .line 137
    .local v3, "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    if-eqz v3, :cond_0

    .line 138
    const-string v4, "Truncated exception stack frames of event %s"

    invoke-static {v3, p0, p1, v4}, Lio/sentry/util/EventSizeLimitingUtils;->truncateStackFramesInStackTrace(Lio/sentry/protocol/SentryStackTrace;Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;Ljava/lang/String;)V

    .line 141
    .end local v2    # "exception":Lio/sentry/protocol/SentryException;
    .end local v3    # "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, "threads":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryThread;>;"
    if-eqz v1, :cond_3

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentryThread;

    .line 147
    .local v3, "thread":Lio/sentry/protocol/SentryThread;
    invoke-virtual {v3}, Lio/sentry/protocol/SentryThread;->getStacktrace()Lio/sentry/protocol/SentryStackTrace;

    move-result-object v4

    .line 148
    .local v4, "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    if-eqz v4, :cond_2

    .line 149
    const-string v5, "Truncated thread stack frames for event %s"

    invoke-static {v4, p0, p1, v5}, Lio/sentry/util/EventSizeLimitingUtils;->truncateStackFramesInStackTrace(Lio/sentry/protocol/SentryStackTrace;Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;Ljava/lang/String;)V

    .line 152
    .end local v3    # "thread":Lio/sentry/protocol/SentryThread;
    .end local v4    # "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    :cond_2
    goto :goto_1

    .line 155
    :cond_3
    return-object p0
.end method

.method private static truncateStackFramesInStackTrace(Lio/sentry/protocol/SentryStackTrace;Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;Ljava/lang/String;)V
    .locals 5
    .param p0, "stacktrace"    # Lio/sentry/protocol/SentryStackTrace;
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "options"    # Lio/sentry/SentryOptions;
    .param p3, "logMessage"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lio/sentry/protocol/SentryStackTrace;->getFrames()Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_0

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v1, "truncatedFrames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    const/4 v2, 0x0

    const/16 v3, 0xfa

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-virtual {p0, v1}, Lio/sentry/protocol/SentryStackTrace;->setFrames(Ljava/util/List;)V

    .line 169
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, p3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .end local v1    # "truncatedFrames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    :cond_0
    return-void
.end method
