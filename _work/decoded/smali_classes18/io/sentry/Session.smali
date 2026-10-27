.class public final Lio/sentry/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Session$State;,
        Lio/sentry/Session$JsonKeys;,
        Lio/sentry/Session$Deserializer;
    }
.end annotation


# instance fields
.field private abnormalMechanism:Ljava/lang/String;

.field private final distinctId:Ljava/lang/String;

.field private duration:Ljava/lang/Double;

.field private final environment:Ljava/lang/String;

.field private final errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private hasNonTerminatingUnhandledError:Z

.field private init:Ljava/lang/Boolean;

.field private final ipAddress:Ljava/lang/String;

.field private final release:Ljava/lang/String;

.field private sequence:Ljava/lang/Long;

.field private final sessionId:Ljava/lang/String;

.field private final sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final started:Ljava/util/Date;

.field private status:Lio/sentry/Session$State;

.field private timestamp:Ljava/util/Date;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lio/sentry/Session$State;
    .param p2, "started"    # Ljava/util/Date;
    .param p3, "timestamp"    # Ljava/util/Date;
    .param p4, "errorCount"    # I
    .param p5, "distinctId"    # Ljava/lang/String;
    .param p6, "sessionId"    # Ljava/lang/String;
    .param p7, "init"    # Ljava/lang/Boolean;
    .param p8, "sequence"    # Ljava/lang/Long;
    .param p9, "duration"    # Ljava/lang/Double;
    .param p10, "ipAddress"    # Ljava/lang/String;
    .param p11, "userAgent"    # Ljava/lang/String;
    .param p12, "environment"    # Ljava/lang/String;
    .param p13, "release"    # Ljava/lang/String;
    .param p14, "abnormalMechanism"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/Session;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 99
    iput-object p1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    .line 100
    iput-object p2, p0, Lio/sentry/Session;->started:Ljava/util/Date;

    .line 101
    iput-object p3, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    iput-object p5, p0, Lio/sentry/Session;->distinctId:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lio/sentry/Session;->sessionId:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    .line 106
    iput-object p8, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    .line 107
    iput-object p9, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    .line 108
    iput-object p10, p0, Lio/sentry/Session;->ipAddress:Ljava/lang/String;

    .line 109
    iput-object p11, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    .line 110
    iput-object p12, p0, Lio/sentry/Session;->environment:Ljava/lang/String;

    .line 111
    iput-object p13, p0, Lio/sentry/Session;->release:Ljava/lang/String;

    .line 112
    iput-object p14, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "distinctId"    # Ljava/lang/String;
    .param p2, "user"    # Lio/sentry/protocol/User;
    .param p3, "environment"    # Ljava/lang/String;
    .param p4, "release"    # Ljava/lang/String;

    .line 120
    sget-object v1, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    .line 122
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v2

    .line 123
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v3

    .line 126
    invoke-static {}, Lio/sentry/SentryUUID;->generateSentryId()Ljava/lang/String;

    move-result-object v6

    .line 127
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 130
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    .line 120
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v5, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v0 .. v14}, Lio/sentry/Session;-><init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method static synthetic access$002(Lio/sentry/Session;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/sentry/Session;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lio/sentry/Session;->hasNonTerminatingUnhandledError:Z

    return p1
.end method

.method private calculateDurationTime(Ljava/util/Date;)D
    .locals 6
    .param p1, "timestamp"    # Ljava/util/Date;

    .line 284
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lio/sentry/Session;->started:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 285
    .local v0, "diff":J
    long-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method private getSequenceTimestamp(Ljava/util/Date;)J
    .locals 4
    .param p1, "timestamp"    # Ljava/util/Date;

    .line 359
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 362
    .local v0, "sequence":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 363
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 365
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public clone()Lio/sentry/Session;
    .locals 15

    .line 375
    new-instance v0, Lio/sentry/Session;

    iget-object v1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    iget-object v2, p0, Lio/sentry/Session;->started:Ljava/util/Date;

    iget-object v3, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    iget-object v4, p0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 380
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lio/sentry/Session;->distinctId:Ljava/lang/String;

    iget-object v6, p0, Lio/sentry/Session;->sessionId:Ljava/lang/String;

    iget-object v7, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    iget-object v8, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    iget-object v9, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    iget-object v10, p0, Lio/sentry/Session;->ipAddress:Ljava/lang/String;

    iget-object v11, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    iget-object v12, p0, Lio/sentry/Session;->environment:Ljava/lang/String;

    iget-object v13, p0, Lio/sentry/Session;->release:Ljava/lang/String;

    iget-object v14, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    invoke-direct/range {v0 .. v14}, Lio/sentry/Session;-><init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .local v0, "session":Lio/sentry/Session;
    iget-boolean v1, p0, Lio/sentry/Session;->hasNonTerminatingUnhandledError:Z

    iput-boolean v1, v0, Lio/sentry/Session;->hasNonTerminatingUnhandledError:Z

    .line 392
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 1

    .line 246
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Session;->end(Ljava/util/Date;)V

    .line 247
    return-void
.end method

.method public end(Ljava/util/Date;)V
    .locals 3
    .param p1, "timestamp"    # Ljava/util/Date;

    .line 255
    iget-object v0, p0, Lio/sentry/Session;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 256
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    .line 259
    iget-object v1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    sget-object v2, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    if-ne v1, v2, :cond_1

    .line 260
    iget-boolean v1, p0, Lio/sentry/Session;->hasNonTerminatingUnhandledError:Z

    if-eqz v1, :cond_0

    sget-object v1, Lio/sentry/Session$State;->Unhandled:Lio/sentry/Session$State;

    goto :goto_0

    :cond_0
    sget-object v1, Lio/sentry/Session$State;->Exited:Lio/sentry/Session$State;

    :goto_0
    iput-object v1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    .line 263
    :cond_1
    if-eqz p1, :cond_2

    .line 264
    iput-object p1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    goto :goto_1

    .line 266
    :cond_2
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    .line 269
    :goto_1
    iget-object v1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    invoke-direct {p0, v1}, Lio/sentry/Session;->calculateDurationTime(Ljava/util/Date;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    .line 271
    iget-object v1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    invoke-direct {p0, v1}, Lio/sentry/Session;->getSequenceTimestamp(Ljava/util/Date;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 274
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    return-void

    .line 255
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v1
.end method

.method public errorCount()I
    .locals 1

    .line 181
    iget-object v0, p0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getAbnormalMechanism()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/sentry/Session;->distinctId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Double;
    .locals 1

    .line 193
    iget-object v0, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lio/sentry/Session;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getInit()Ljava/lang/Boolean;
    .locals 1

    .line 171
    iget-object v0, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lio/sentry/Session;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lio/sentry/Session;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()Ljava/lang/Long;
    .locals 1

    .line 189
    iget-object v0, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lio/sentry/Session;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStarted()Ljava/util/Date;
    .locals 1

    .line 143
    iget-object v0, p0, Lio/sentry/Session;->started:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Lio/sentry/Session$State;
    .locals 1

    .line 185
    iget-object v0, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 241
    iget-object v0, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lio/sentry/Session;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hasNonTerminatingUnhandledError()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lio/sentry/Session;->hasNonTerminatingUnhandledError:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    sget-object v1, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recordNonTerminatingUnhandledError()Z
    .locals 4

    .line 226
    iget-object v0, p0, Lio/sentry/Session;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 227
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    sget-object v2, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_1

    .line 228
    nop

    .line 236
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 228
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 230
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lio/sentry/Session;->hasNonTerminatingUnhandledError:Z

    .line 231
    iget-object v2, p0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 232
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    .line 233
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    .line 234
    iget-object v2, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    invoke-direct {p0, v2}, Lio/sentry/Session;->getSequenceTimestamp(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    nop

    .line 236
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 235
    :cond_2
    return v1

    .line 226
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 421
    iget-object v0, p0, Lio/sentry/Session;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "sid"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 424
    :cond_0
    iget-object v0, p0, Lio/sentry/Session;->distinctId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 425
    const-string v0, "did"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->distinctId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 427
    :cond_1
    iget-object v0, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 428
    const-string v0, "init"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 430
    :cond_2
    const-string v0, "started"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->started:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 431
    const-string v0, "status"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    invoke-virtual {v1}, Lio/sentry/Session$State;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 432
    iget-object v0, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 433
    const-string v0, "seq"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 435
    :cond_3
    const-string v0, "errors"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 436
    iget-object v0, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 437
    const-string v0, "duration"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 439
    :cond_4
    iget-object v0, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 440
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 442
    :cond_5
    iget-object v0, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 443
    const-string v0, "abnormal_mechanism"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 445
    :cond_6
    iget-boolean v0, p0, Lio/sentry/Session;->hasNonTerminatingUnhandledError:Z

    if-eqz v0, :cond_7

    .line 446
    const-string v0, "non_terminating_unhandled_error"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/Session;->hasNonTerminatingUnhandledError:Z

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Z)Lio/sentry/ObjectWriter;

    .line 448
    :cond_7
    const-string v0, "attrs"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 449
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 450
    const-string v0, "release"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->release:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 451
    iget-object v0, p0, Lio/sentry/Session;->environment:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 452
    const-string v0, "environment"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->environment:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 454
    :cond_8
    iget-object v0, p0, Lio/sentry/Session;->ipAddress:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 455
    const-string v0, "ip_address"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->ipAddress:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 457
    :cond_9
    iget-object v0, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 458
    const-string v0, "user_agent"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 460
    :cond_a
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 461
    iget-object v0, p0, Lio/sentry/Session;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 462
    iget-object v0, p0, Lio/sentry/Session;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 463
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/Session;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 464
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 465
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 466
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 468
    :cond_b
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 469
    return-void
.end method

.method public setInitAsTrue()V
    .locals 1

    .line 177
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    .line 178
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 479
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/Session;->unknown:Ljava/util/Map;

    .line 480
    return-void
.end method

.method public update(Lio/sentry/Session$State;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "status"    # Lio/sentry/Session$State;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "addErrorsCount"    # Z

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Lio/sentry/Session$State;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "addErrorsCount"    # Z
    .param p4, "abnormalMechanism"    # Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lio/sentry/Session;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 311
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    .line 312
    .local v1, "sessionHasBeenUpdated":Z
    if-eqz p1, :cond_1

    .line 313
    :try_start_0
    iput-object p1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    .line 316
    sget-object v2, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    if-eq p1, v2, :cond_0

    .line 317
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/sentry/Session;->hasNonTerminatingUnhandledError:Z

    .line 319
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "sessionHasBeenUpdated":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 322
    .restart local v1    # "sessionHasBeenUpdated":Z
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 323
    iput-object p2, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    .line 324
    const/4 v1, 0x1

    .line 326
    :cond_2
    if-eqz p3, :cond_3

    .line 327
    iget-object v2, p0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 328
    const/4 v1, 0x1

    .line 335
    :cond_3
    if-eqz p4, :cond_4

    .line 336
    iput-object p4, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    .line 337
    const/4 v1, 0x1

    .line 340
    :cond_4
    if-eqz v1, :cond_6

    .line 341
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    .line 342
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    .line 343
    iget-object v2, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    if-eqz v2, :cond_6

    .line 344
    iget-object v2, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    invoke-direct {p0, v2}, Lio/sentry/Session;->getSequenceTimestamp(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 309
    .end local v1    # "sessionHasBeenUpdated":Z
    :goto_1
    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v1

    .line 347
    .restart local v1    # "sessionHasBeenUpdated":Z
    :cond_6
    :goto_3
    nop

    .line 348
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 347
    :cond_7
    return v1
.end method
