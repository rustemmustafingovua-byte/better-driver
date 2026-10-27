.class public final Lio/sentry/SentryExceptionFactory;
.super Ljava/lang/Object;
.source "SentryExceptionFactory.java"


# instance fields
.field private final sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;


# direct methods
.method public constructor <init>(Lio/sentry/SentryStackTraceFactory;)V
    .locals 0
    .param p1, "sentryStackTraceFactory"    # Lio/sentry/SentryStackTraceFactory;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/sentry/SentryExceptionFactory;->sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 35
    return-void
.end method

.method private getSentryException(Ljava/lang/Throwable;Lio/sentry/protocol/Mechanism;Ljava/lang/Long;Ljava/util/List;Z)Lio/sentry/protocol/SentryException;
    .locals 8
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "exceptionMechanism"    # Lio/sentry/protocol/Mechanism;
    .param p3, "threadId"    # Ljava/lang/Long;
    .param p5, "snapshot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/sentry/protocol/Mechanism;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;Z)",
            "Lio/sentry/protocol/SentryException;"
        }
    .end annotation

    .line 95
    .local p4, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 96
    .local v0, "exceptionPackage":Ljava/lang/Package;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "fullClassName":Ljava/lang/String;
    new-instance v2, Lio/sentry/protocol/SentryException;

    invoke-direct {v2}, Lio/sentry/protocol/SentryException;-><init>()V

    .line 100
    .local v2, "exception":Lio/sentry/protocol/SentryException;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "exceptionMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 105
    :cond_0
    move-object v4, v1

    :goto_0
    nop

    .line 108
    .local v4, "exceptionClassName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 110
    .local v5, "exceptionPackageName":Ljava/lang/String;
    :goto_1
    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 111
    new-instance v6, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {v6, p4}, Lio/sentry/protocol/SentryStackTrace;-><init>(Ljava/util/List;)V

    .line 112
    .local v6, "sentryStackTrace":Lio/sentry/protocol/SentryStackTrace;
    if-eqz p5, :cond_2

    .line 113
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/SentryStackTrace;->setSnapshot(Ljava/lang/Boolean;)V

    .line 115
    :cond_2
    invoke-virtual {v2, v6}, Lio/sentry/protocol/SentryException;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    .line 118
    .end local v6    # "sentryStackTrace":Lio/sentry/protocol/SentryStackTrace;
    :cond_3
    invoke-virtual {v2, p3}, Lio/sentry/protocol/SentryException;->setThreadId(Ljava/lang/Long;)V

    .line 119
    invoke-virtual {v2, v4}, Lio/sentry/protocol/SentryException;->setType(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, p2}, Lio/sentry/protocol/SentryException;->setMechanism(Lio/sentry/protocol/Mechanism;)V

    .line 121
    invoke-virtual {v2, v5}, Lio/sentry/protocol/SentryException;->setModule(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v3}, Lio/sentry/protocol/SentryException;->setValue(Ljava/lang/String;)V

    .line 124
    return-object v2
.end method

.method private getSentryExceptions(Ljava/util/Deque;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lio/sentry/protocol/SentryException;",
            ">;)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 70
    .local p1, "exceptions":Ljava/util/Deque;, "Ljava/util/Deque<Lio/sentry/protocol/SentryException;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method extractExceptionQueue(Ljava/lang/Throwable;)Ljava/util/Deque;
    .locals 6
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Deque<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "throwable":Ljava/lang/Throwable;
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {v0 .. v5}, Lio/sentry/SentryExceptionFactory;->extractExceptionQueueInternal(Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Set;Ljava/util/Deque;Ljava/lang/String;)Ljava/util/Deque;

    move-result-object p1

    return-object p1
.end method

.method extractExceptionQueueInternal(Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Set;Ljava/util/Deque;Ljava/lang/String;)Ljava/util/Deque;
    .locals 20
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "exceptionId"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "mechanismTypeOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Deque<",
            "Lio/sentry/protocol/SentryException;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Deque<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 151
    .local p3, "circularityDetector":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    .local p4, "exceptions":Ljava/util/Deque;, "Ljava/util/Deque<Lio/sentry/protocol/SentryException;>;"
    move-object/from16 v4, p4

    move-object/from16 v0, p1

    .line 152
    .local v0, "currentThrowable":Ljava/lang/Throwable;
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    move-object/from16 v6, p5

    move v7, v1

    .line 155
    .end local p5    # "mechanismTypeOverride":Ljava/lang/String;
    .local v6, "mechanismTypeOverride":Ljava/lang/String;
    .local v7, "parentId":I
    :goto_0
    if-eqz v0, :cond_7

    move-object/from16 v3, p3

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "snapshot":Z
    if-nez v6, :cond_0

    const-string v2, "chained"

    goto :goto_1

    :cond_0
    move-object v2, v6

    :goto_1
    move-object v8, v2

    .line 159
    .local v8, "mechanismType":Ljava/lang/String;
    instance-of v2, v0, Lio/sentry/exception/ExceptionMechanismException;

    if-eqz v2, :cond_1

    .line 161
    move-object v2, v0

    check-cast v2, Lio/sentry/exception/ExceptionMechanismException;

    .line 163
    .local v2, "exceptionMechanismThrowable":Lio/sentry/exception/ExceptionMechanismException;
    invoke-virtual {v2}, Lio/sentry/exception/ExceptionMechanismException;->getExceptionMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v5

    .line 164
    .local v5, "exceptionMechanism":Lio/sentry/protocol/Mechanism;
    invoke-virtual {v2}, Lio/sentry/exception/ExceptionMechanismException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 165
    invoke-virtual {v2}, Lio/sentry/exception/ExceptionMechanismException;->getThread()Ljava/lang/Thread;

    move-result-object v9

    .line 166
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Lio/sentry/exception/ExceptionMechanismException;->isSnapshot()Z

    move-result v1

    .line 167
    .end local v2    # "exceptionMechanismThrowable":Lio/sentry/exception/ExceptionMechanismException;
    move-object v11, v0

    move v15, v1

    move-object v12, v5

    goto :goto_2

    .line 168
    .end local v5    # "exceptionMechanism":Lio/sentry/protocol/Mechanism;
    .end local v9    # "thread":Ljava/lang/Thread;
    :cond_1
    new-instance v2, Lio/sentry/protocol/Mechanism;

    invoke-direct {v2}, Lio/sentry/protocol/Mechanism;-><init>()V

    move-object v5, v2

    .line 169
    .restart local v5    # "exceptionMechanism":Lio/sentry/protocol/Mechanism;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    move-object v11, v0

    move v15, v1

    move-object v12, v5

    .line 172
    .end local v0    # "currentThrowable":Ljava/lang/Throwable;
    .end local v1    # "snapshot":Z
    .end local v5    # "exceptionMechanism":Lio/sentry/protocol/Mechanism;
    .restart local v9    # "thread":Ljava/lang/Thread;
    .local v11, "currentThrowable":Ljava/lang/Throwable;
    .local v12, "exceptionMechanism":Lio/sentry/protocol/Mechanism;
    .local v15, "snapshot":Z
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12}, Lio/sentry/protocol/Mechanism;->isHandled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 173
    .local v0, "includeSentryFrames":Z
    move-object/from16 v10, p0

    iget-object v1, v10, Lio/sentry/SentryExceptionFactory;->sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 175
    invoke-virtual {v11}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2, v0}, Lio/sentry/SentryStackTraceFactory;->getStackFrames([Ljava/lang/StackTraceElement;Z)Ljava/util/List;

    move-result-object v14

    .line 176
    .local v14, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    move-object v13, v1

    .line 177
    .local v13, "threadId":Ljava/lang/Long;
    nop

    .line 178
    invoke-direct/range {v10 .. v15}, Lio/sentry/SentryExceptionFactory;->getSentryException(Ljava/lang/Throwable;Lio/sentry/protocol/Mechanism;Ljava/lang/Long;Ljava/util/List;Z)Lio/sentry/protocol/SentryException;

    move-result-object v1

    .line 179
    .local v1, "exception":Lio/sentry/protocol/SentryException;
    invoke-interface {v4, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v12}, Lio/sentry/protocol/Mechanism;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 182
    invoke-virtual {v12, v8}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 185
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ltz v2, :cond_4

    .line 186
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Lio/sentry/protocol/Mechanism;->setParentId(Ljava/lang/Integer;)V

    .line 189
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v10

    .line 190
    .local v10, "currentExceptionId":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Lio/sentry/protocol/Mechanism;->setExceptionId(Ljava/lang/Integer;)V

    .line 192
    invoke-virtual {v11}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v2

    .line 193
    .local v2, "suppressed":[Ljava/lang/Throwable;
    if-eqz v2, :cond_6

    array-length v5, v2

    if-lez v5, :cond_6

    .line 197
    array-length v5, v2

    const/16 v16, 0x0

    move-object/from16 p5, v6

    move/from16 v6, v16

    .end local v6    # "mechanismTypeOverride":Ljava/lang/String;
    .restart local p5    # "mechanismTypeOverride":Ljava/lang/String;
    :goto_4
    if-ge v6, v5, :cond_5

    move-object/from16 v16, v1

    .end local v1    # "exception":Lio/sentry/protocol/SentryException;
    .local v16, "exception":Lio/sentry/protocol/SentryException;
    aget-object v1, v2, v6

    .line 198
    .local v1, "suppressedThrowable":Ljava/lang/Throwable;
    move/from16 v17, v5

    const-string v5, "suppressed"

    move-object/from16 v18, v2

    move/from16 v19, v17

    move-object/from16 v2, p2

    move-object/from16 v17, v16

    move/from16 v16, v0

    move-object/from16 v0, p0

    .end local v0    # "includeSentryFrames":Z
    .end local v2    # "suppressed":[Ljava/lang/Throwable;
    .local v16, "includeSentryFrames":Z
    .local v17, "exception":Lio/sentry/protocol/SentryException;
    .local v18, "suppressed":[Ljava/lang/Throwable;
    invoke-virtual/range {v0 .. v5}, Lio/sentry/SentryExceptionFactory;->extractExceptionQueueInternal(Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Set;Ljava/util/Deque;Ljava/lang/String;)Ljava/util/Deque;

    .line 197
    .end local v1    # "suppressedThrowable":Ljava/lang/Throwable;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v5, v19

    goto :goto_4

    .end local v16    # "includeSentryFrames":Z
    .end local v17    # "exception":Lio/sentry/protocol/SentryException;
    .end local v18    # "suppressed":[Ljava/lang/Throwable;
    .restart local v0    # "includeSentryFrames":Z
    .local v1, "exception":Lio/sentry/protocol/SentryException;
    .restart local v2    # "suppressed":[Ljava/lang/Throwable;
    :cond_5
    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v0    # "includeSentryFrames":Z
    .end local v1    # "exception":Lio/sentry/protocol/SentryException;
    .end local v2    # "suppressed":[Ljava/lang/Throwable;
    .restart local v16    # "includeSentryFrames":Z
    .restart local v17    # "exception":Lio/sentry/protocol/SentryException;
    .restart local v18    # "suppressed":[Ljava/lang/Throwable;
    goto :goto_5

    .line 193
    .end local v16    # "includeSentryFrames":Z
    .end local v17    # "exception":Lio/sentry/protocol/SentryException;
    .end local v18    # "suppressed":[Ljava/lang/Throwable;
    .end local p5    # "mechanismTypeOverride":Ljava/lang/String;
    .restart local v0    # "includeSentryFrames":Z
    .restart local v1    # "exception":Lio/sentry/protocol/SentryException;
    .restart local v2    # "suppressed":[Ljava/lang/Throwable;
    .restart local v6    # "mechanismTypeOverride":Ljava/lang/String;
    :cond_6
    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 p5, v6

    .line 202
    .end local v0    # "includeSentryFrames":Z
    .end local v1    # "exception":Lio/sentry/protocol/SentryException;
    .end local v2    # "suppressed":[Ljava/lang/Throwable;
    .end local v6    # "mechanismTypeOverride":Ljava/lang/String;
    .restart local v16    # "includeSentryFrames":Z
    .restart local v17    # "exception":Lio/sentry/protocol/SentryException;
    .restart local v18    # "suppressed":[Ljava/lang/Throwable;
    .restart local p5    # "mechanismTypeOverride":Ljava/lang/String;
    :goto_5
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 203
    .end local v11    # "currentThrowable":Ljava/lang/Throwable;
    .local v0, "currentThrowable":Ljava/lang/Throwable;
    move v7, v10

    .line 204
    const/4 v6, 0x0

    .line 205
    .end local v8    # "mechanismType":Ljava/lang/String;
    .end local v10    # "currentExceptionId":I
    .end local v13    # "threadId":Ljava/lang/Long;
    .end local v14    # "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    .end local v15    # "snapshot":Z
    .end local v16    # "includeSentryFrames":Z
    .end local v17    # "exception":Lio/sentry/protocol/SentryException;
    .end local v18    # "suppressed":[Ljava/lang/Throwable;
    .end local p5    # "mechanismTypeOverride":Ljava/lang/String;
    .restart local v6    # "mechanismTypeOverride":Ljava/lang/String;
    move-object/from16 v4, p4

    goto/16 :goto_0

    .line 155
    .end local v9    # "thread":Ljava/lang/Thread;
    .end local v12    # "exceptionMechanism":Lio/sentry/protocol/Mechanism;
    :cond_7
    move-object/from16 p5, v6

    .line 207
    .end local v6    # "mechanismTypeOverride":Ljava/lang/String;
    .restart local p5    # "mechanismTypeOverride":Ljava/lang/String;
    return-object p4
.end method

.method public getSentryExceptions(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lio/sentry/SentryExceptionFactory;->extractExceptionQueue(Ljava/lang/Throwable;)Ljava/util/Deque;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/SentryExceptionFactory;->getSentryExceptions(Ljava/util/Deque;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSentryExceptionsFromThread(Lio/sentry/protocol/SentryThread;Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;)Ljava/util/List;
    .locals 8
    .param p1, "thread"    # Lio/sentry/protocol/SentryThread;
    .param p2, "mechanism"    # Lio/sentry/protocol/Mechanism;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/SentryThread;",
            "Lio/sentry/protocol/Mechanism;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getStacktrace()Lio/sentry/protocol/SentryStackTrace;

    move-result-object v0

    .line 43
    .local v0, "threadStacktrace":Lio/sentry/protocol/SentryStackTrace;
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 46
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .local v1, "exceptions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    nop

    .line 49
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0}, Lio/sentry/protocol/SentryStackTrace;->getFrames()Ljava/util/List;

    move-result-object v6

    .line 48
    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p2

    move-object v3, p3

    .end local p2    # "mechanism":Lio/sentry/protocol/Mechanism;
    .end local p3    # "throwable":Ljava/lang/Throwable;
    .local v3, "throwable":Ljava/lang/Throwable;
    .local v4, "mechanism":Lio/sentry/protocol/Mechanism;
    invoke-direct/range {v2 .. v7}, Lio/sentry/SentryExceptionFactory;->getSentryException(Ljava/lang/Throwable;Lio/sentry/protocol/Mechanism;Ljava/lang/Long;Ljava/util/List;Z)Lio/sentry/protocol/SentryException;

    move-result-object p2

    .line 47
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-object v1
.end method
