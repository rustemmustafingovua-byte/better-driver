.class public Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;
.super Ljava/lang/Object;
.source "ThreadDumpParser.java"


# static fields
.field private static final BEGIN_MANAGED_THREAD_RE:Ljava/util/regex/Pattern;

.field private static final BEGIN_UNMANAGED_NATIVE_THREAD_RE:Ljava/util/regex/Pattern;

.field private static final BLANK_RE:Ljava/util/regex/Pattern;

.field private static final JAVA_RE:Ljava/util/regex/Pattern;

.field private static final JNI_RE:Ljava/util/regex/Pattern;

.field private static final LOCKED_RE:Ljava/util/regex/Pattern;

.field private static final NATIVE_RE:Ljava/util/regex/Pattern;

.field private static final PID_RE:Ljava/util/regex/Pattern;

.field private static final SLEEPING_ON_RE:Ljava/util/regex/Pattern;

.field private static final SYS_TID_RE:Ljava/util/regex/Pattern;

.field private static final WAITING_ON_RE:Ljava/util/regex/Pattern;

.field private static final WAITING_TO_LOCK_HELD_RE:Ljava/util/regex/Pattern;

.field private static final WAITING_TO_LOCK_RE:Ljava/util/regex/Pattern;

.field private static final WAITING_TO_LOCK_UNKNOWN_RE:Ljava/util/regex/Pattern;


# instance fields
.field private final artContextParser:Lio/sentry/android/core/internal/threaddump/ArtContextParser;

.field private final debugImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation
.end field

.field private final isBackground:Z

.field private final options:Lio/sentry/SentryOptions;

.field private processId:Ljava/lang/Long;

.field private final stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

.field private final threads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    nop

    .line 43
    const-string v0, "\"(.*)\" (.*) ?prio=(\\d+)\\s+tid=(\\d+)\\s*(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_MANAGED_THREAD_RE:Ljava/util/regex/Pattern;

    .line 45
    nop

    .line 46
    const-string v0, "\"(.*)\" (.*) ?sysTid=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_UNMANAGED_NATIVE_THREAD_RE:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "----- pid (\\d+) at .*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->PID_RE:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "\\s*\\|\\s*sysTid=(\\d+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->SYS_TID_RE:Ljava/util/regex/Pattern;

    .line 65
    nop

    .line 66
    const-string v0, " *(?:native: )?#(\\d+) \\S+ ([0-9a-fA-F]+)\\s+((.*?)(?:\\s+\\(deleted\\))?(?:\\s+\\(offset (.*?)\\))?)(?:\\s+\\((?:\\?\\?\\?|(.*?)(?:\\+(\\d+))?)\\))?(?:\\s+\\(BuildId: (.*?)\\))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->NATIVE_RE:Ljava/util/regex/Pattern;

    .line 88
    nop

    .line 89
    const-string v0, " *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\((.*):([\\d-]+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->JAVA_RE:Ljava/util/regex/Pattern;

    .line 90
    nop

    .line 91
    const-string v0, " *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\(Native method\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->JNI_RE:Ljava/util/regex/Pattern;

    .line 92
    nop

    .line 93
    const-string v0, " *- locked \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->LOCKED_RE:Ljava/util/regex/Pattern;

    .line 94
    nop

    .line 95
    const-string v0, " *- sleeping on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->SLEEPING_ON_RE:Ljava/util/regex/Pattern;

    .line 96
    nop

    .line 97
    const-string v0, " *- waiting on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_ON_RE:Ljava/util/regex/Pattern;

    .line 98
    nop

    .line 99
    const-string v0, " *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_RE:Ljava/util/regex/Pattern;

    .line 101
    nop

    .line 102
    const-string v0, " *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)(?: held by thread (\\d+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_HELD_RE:Ljava/util/regex/Pattern;

    .line 105
    nop

    .line 106
    const-string v0, " *- waiting to lock an unknown object"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_UNKNOWN_RE:Ljava/util/regex/Pattern;

    .line 107
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BLANK_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Z)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "isBackground"    # Z

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lio/sentry/android/core/internal/threaddump/ArtContextParser;

    invoke-direct {v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->artContextParser:Lio/sentry/android/core/internal/threaddump/ArtContextParser;

    .line 127
    iput-object p1, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    .line 128
    iput-boolean p2, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->isBackground:Z

    .line 129
    new-instance v0, Lio/sentry/SentryStackTraceFactory;

    invoke-direct {v0, p1}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->debugImages:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->threads:Ljava/util/List;

    .line 132
    return-void
.end method

.method private combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V
    .locals 4
    .param p1, "thread"    # Lio/sentry/protocol/SentryThread;
    .param p2, "lockReason"    # Lio/sentry/SentryLockReason;

    .line 423
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getHeldLocks()Ljava/util/Map;

    move-result-object v0

    .line 424
    .local v0, "heldLocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLockReason;>;"
    if-nez v0, :cond_0

    .line 425
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 427
    :cond_0
    invoke-virtual {p2}, Lio/sentry/SentryLockReason;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryLockReason;

    .line 428
    .local v1, "prev":Lio/sentry/SentryLockReason;
    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {v1}, Lio/sentry/SentryLockReason;->getType()I

    move-result v2

    invoke-virtual {p2}, Lio/sentry/SentryLockReason;->getType()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/sentry/SentryLockReason;->setType(I)V

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {p2}, Lio/sentry/SentryLockReason;->getAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/sentry/SentryLockReason;

    invoke-direct {v3, p2}, Lio/sentry/SentryLockReason;-><init>(Lio/sentry/SentryLockReason;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :goto_0
    invoke-virtual {p1, v0}, Lio/sentry/protocol/SentryThread;->setHeldLocks(Ljava/util/Map;)V

    .line 435
    return-void
.end method

.method private getInteger(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "matcher"    # Ljava/util/regex/Matcher;
    .param p2, "groupIndex"    # I
    .param p3, "defaultValue"    # Ljava/lang/Integer;

    .line 451
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 453
    :cond_1
    :goto_0
    return-object p3
.end method

.method private getLong(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;
    .locals 3
    .param p1, "matcher"    # Ljava/util/regex/Matcher;
    .param p2, "group"    # I
    .param p3, "defaultValue"    # Ljava/lang/Long;

    .line 440
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 442
    :cond_1
    :goto_0
    return-object p3
.end method

.method private getUInteger(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "matcher"    # Ljava/util/regex/Matcher;
    .param p2, "group"    # I
    .param p3, "defaultValue"    # Ljava/lang/Integer;

    .line 462
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 466
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 467
    .local v1, "parsed":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, p3

    :goto_0
    return-object v2

    .line 464
    .end local v1    # "parsed":Ljava/lang/Integer;
    :cond_2
    :goto_1
    return-object p3
.end method

.method private markThreads()V
    .locals 4

    .line 399
    iget-object v0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->threads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentryThread;

    .line 400
    .local v1, "thread":Lio/sentry/protocol/SentryThread;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lio/sentry/protocol/SentryThread;->isMain()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    const-string v2, "main"

    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryThread;->setName(Ljava/lang/String;)V

    .line 406
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/sentry/protocol/SentryThread;->setCrashed(Ljava/lang/Boolean;)V

    .line 407
    iget-boolean v3, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->isBackground:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryThread;->setCurrent(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 409
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/sentry/protocol/SentryThread;->setCrashed(Ljava/lang/Boolean;)V

    .line 410
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/sentry/protocol/SentryThread;->setCurrent(Ljava/lang/Boolean;)V

    .line 411
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryThread;->setMain(Ljava/lang/Boolean;)V

    .line 413
    .end local v1    # "thread":Lio/sentry/protocol/SentryThread;
    :goto_1
    goto :goto_0

    .line 414
    :cond_1
    return-void
.end method

.method private matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z
    .locals 1
    .param p1, "matcher"    # Ljava/util/regex/Matcher;
    .param p2, "text"    # Ljava/lang/String;

    .line 417
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 418
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private parseStacktrace(Lio/sentry/android/core/internal/threaddump/Lines;Lio/sentry/protocol/SentryThread;)Lio/sentry/protocol/SentryStackTrace;
    .locals 24
    .param p1, "lines"    # Lio/sentry/android/core/internal/threaddump/Lines;
    .param p2, "thread"    # Lio/sentry/protocol/SentryThread;

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v2, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    const/4 v3, 0x0

    .line 250
    .local v3, "lastJavaFrame":Lio/sentry/protocol/SentryStackFrame;
    sget-object v4, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->NATIVE_RE:Ljava/util/regex/Pattern;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 251
    .local v4, "nativeRe":Ljava/util/regex/Matcher;
    sget-object v6, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->JAVA_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 252
    .local v6, "javaRe":Ljava/util/regex/Matcher;
    sget-object v7, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->JNI_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 253
    .local v7, "jniRe":Ljava/util/regex/Matcher;
    sget-object v8, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->LOCKED_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 254
    .local v8, "lockedRe":Ljava/util/regex/Matcher;
    sget-object v9, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_ON_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 255
    .local v9, "waitingOnRe":Ljava/util/regex/Matcher;
    sget-object v10, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->SLEEPING_ON_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 256
    .local v10, "sleepingOnRe":Ljava/util/regex/Matcher;
    sget-object v11, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_HELD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 257
    .local v11, "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    sget-object v12, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 258
    .local v12, "waitingToLockRe":Ljava/util/regex/Matcher;
    sget-object v13, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_UNKNOWN_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 259
    .local v13, "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    sget-object v14, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BLANK_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 260
    .local v14, "blankRe":Ljava/util/regex/Matcher;
    sget-object v15, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->SYS_TID_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 262
    .local v5, "sysTidRe":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/android/core/internal/threaddump/Lines;->hasNext()Z

    move-result v15

    move/from16 v16, v15

    if-eqz v16, :cond_17

    .line 263
    invoke-virtual/range {p1 .. p1}, Lio/sentry/android/core/internal/threaddump/Lines;->next()Lio/sentry/android/core/internal/threaddump/Line;

    move-result-object v15

    .line 264
    .local v15, "line":Lio/sentry/android/core/internal/threaddump/Line;
    if-nez v15, :cond_0

    .line 265
    move-object/from16 v17, v14

    .end local v14    # "blankRe":Ljava/util/regex/Matcher;
    .local v17, "blankRe":Ljava/util/regex/Matcher;
    iget-object v14, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v14}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v14

    move-object/from16 v18, v13

    .end local v13    # "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    .local v18, "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    sget-object v13, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    move-object/from16 v19, v12

    .end local v12    # "waitingToLockRe":Ljava/util/regex/Matcher;
    .local v19, "waitingToLockRe":Ljava/util/regex/Matcher;
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v20, v11

    .end local v11    # "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    .local v20, "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    const-string v11, "Internal error while parsing thread dump."

    invoke-interface {v14, v13, v11, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_5

    .line 268
    .end local v17    # "blankRe":Ljava/util/regex/Matcher;
    .end local v18    # "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    .end local v19    # "waitingToLockRe":Ljava/util/regex/Matcher;
    .end local v20    # "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    .restart local v11    # "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    .restart local v12    # "waitingToLockRe":Ljava/util/regex/Matcher;
    .restart local v13    # "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    .restart local v14    # "blankRe":Ljava/util/regex/Matcher;
    :cond_0
    move-object/from16 v20, v11

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-object/from16 v17, v14

    .end local v11    # "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    .end local v12    # "waitingToLockRe":Ljava/util/regex/Matcher;
    .end local v13    # "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    .end local v14    # "blankRe":Ljava/util/regex/Matcher;
    .restart local v17    # "blankRe":Ljava/util/regex/Matcher;
    .restart local v18    # "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    .restart local v19    # "waitingToLockRe":Ljava/util/regex/Matcher;
    .restart local v20    # "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    iget-object v11, v15, Lio/sentry/android/core/internal/threaddump/Line;->text:Ljava/lang/String;

    .line 269
    .local v11, "text":Ljava/lang/String;
    invoke-direct {v0, v5, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    .line 270
    const/4 v12, 0x1

    invoke-direct {v0, v5, v12, v13}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getLong(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v13

    .line 271
    .local v13, "sysTid":Ljava/lang/Long;
    if-eqz v13, :cond_1

    iget-object v14, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->processId:Ljava/lang/Long;

    invoke-virtual {v13, v14}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 272
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v12}, Lio/sentry/protocol/SentryThread;->setMain(Ljava/lang/Boolean;)V

    .line 274
    .end local v13    # "sysTid":Ljava/lang/Long;
    :cond_1
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_4

    :cond_2
    invoke-direct {v0, v6, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v12

    const/4 v14, 0x2

    if-eqz v12, :cond_3

    .line 275
    new-instance v12, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v12}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    .line 276
    .local v12, "frame":Lio/sentry/protocol/SentryStackFrame;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 277
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 278
    .local v14, "className":Ljava/lang/String;
    move-object/from16 v22, v5

    .end local v5    # "sysTidRe":Ljava/util/regex/Matcher;
    .local v22, "sysTidRe":Ljava/util/regex/Matcher;
    invoke-direct {v0, v13, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->toModuleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "module":Ljava/lang/String;
    invoke-virtual {v12, v5}, Lio/sentry/protocol/SentryStackFrame;->setModule(Ljava/lang/String;)V

    .line 280
    move-object/from16 v16, v13

    const/4 v13, 0x3

    .end local v13    # "packageName":Ljava/lang/String;
    .local v16, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    .line 281
    const/4 v13, 0x4

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/sentry/protocol/SentryStackFrame;->setFilename(Ljava/lang/String;)V

    .line 282
    const/4 v13, 0x5

    move-object/from16 v21, v14

    const/4 v14, 0x0

    .end local v14    # "className":Ljava/lang/String;
    .local v21, "className":Ljava/lang/String;
    invoke-direct {v0, v6, v13, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getUInteger(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/sentry/protocol/SentryStackFrame;->setLineno(Ljava/lang/Integer;)V

    .line 283
    iget-object v13, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    invoke-virtual {v13, v5}, Lio/sentry/SentryStackTraceFactory;->isInApp(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/sentry/protocol/SentryStackFrame;->setInApp(Ljava/lang/Boolean;)V

    .line 284
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    nop

    .line 286
    .end local v3    # "lastJavaFrame":Lio/sentry/protocol/SentryStackFrame;
    .end local v5    # "module":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v21    # "className":Ljava/lang/String;
    .local v12, "lastJavaFrame":Lio/sentry/protocol/SentryStackFrame;
    move-object/from16 v23, v6

    move-object v3, v12

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_4

    .end local v12    # "lastJavaFrame":Lio/sentry/protocol/SentryStackFrame;
    .end local v22    # "sysTidRe":Ljava/util/regex/Matcher;
    .restart local v3    # "lastJavaFrame":Lio/sentry/protocol/SentryStackFrame;
    .local v5, "sysTidRe":Ljava/util/regex/Matcher;
    :cond_3
    move-object/from16 v22, v5

    .end local v5    # "sysTidRe":Ljava/util/regex/Matcher;
    .restart local v22    # "sysTidRe":Ljava/util/regex/Matcher;
    invoke-direct {v0, v4, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 287
    new-instance v5, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v5}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    .line 288
    .local v5, "frame":Lio/sentry/protocol/SentryStackFrame;
    const/4 v13, 0x3

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lio/sentry/protocol/SentryStackFrame;->setPackage(Ljava/lang/String;)V

    .line 289
    const/4 v13, 0x6

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    .line 290
    const/4 v13, 0x7

    const/4 v12, 0x0

    invoke-direct {v0, v4, v13, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getInteger(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Lio/sentry/protocol/SentryStackFrame;->setLineno(Ljava/lang/Integer;)V

    .line 291
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lio/sentry/protocol/SentryStackFrame;->setInstructionAddr(Ljava/lang/String;)V

    .line 292
    const-string v12, "native"

    invoke-virtual {v5, v12}, Lio/sentry/protocol/SentryStackFrame;->setPlatform(Ljava/lang/String;)V

    .line 294
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 295
    .local v12, "buildId":Ljava/lang/String;
    if-nez v12, :cond_4

    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v12}, Lio/sentry/android/core/internal/util/NativeEventUtils;->buildIdToDebugId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, "debugId":Ljava/lang/String;
    :goto_1
    if-eqz v13, :cond_6

    .line 297
    iget-object v14, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->debugImages:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 298
    new-instance v14, Lio/sentry/protocol/DebugImage;

    invoke-direct {v14}, Lio/sentry/protocol/DebugImage;-><init>()V

    .line 299
    .local v14, "debugImage":Lio/sentry/protocol/DebugImage;
    invoke-virtual {v14, v13}, Lio/sentry/protocol/DebugImage;->setDebugId(Ljava/lang/String;)V

    .line 300
    move-object/from16 v23, v6

    .end local v6    # "javaRe":Ljava/util/regex/Matcher;
    .local v23, "javaRe":Ljava/util/regex/Matcher;
    const-string v6, "elf"

    invoke-virtual {v14, v6}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 301
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lio/sentry/protocol/DebugImage;->setCodeFile(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v14, v12}, Lio/sentry/protocol/DebugImage;->setCodeId(Ljava/lang/String;)V

    .line 303
    iget-object v6, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->debugImages:Ljava/util/Map;

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 297
    .end local v14    # "debugImage":Lio/sentry/protocol/DebugImage;
    .end local v23    # "javaRe":Ljava/util/regex/Matcher;
    .restart local v6    # "javaRe":Ljava/util/regex/Matcher;
    :cond_5
    move-object/from16 v23, v6

    .line 306
    .end local v6    # "javaRe":Ljava/util/regex/Matcher;
    .restart local v23    # "javaRe":Ljava/util/regex/Matcher;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "rel:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/protocol/SentryStackFrame;->setAddrMode(Ljava/lang/String;)V

    goto :goto_3

    .line 296
    .end local v23    # "javaRe":Ljava/util/regex/Matcher;
    .restart local v6    # "javaRe":Ljava/util/regex/Matcher;
    :cond_6
    move-object/from16 v23, v6

    .line 309
    .end local v6    # "javaRe":Ljava/util/regex/Matcher;
    .restart local v23    # "javaRe":Ljava/util/regex/Matcher;
    :goto_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const/4 v3, 0x0

    .line 311
    .end local v5    # "frame":Lio/sentry/protocol/SentryStackFrame;
    .end local v12    # "buildId":Ljava/lang/String;
    .end local v13    # "debugId":Ljava/lang/String;
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_4

    .end local v23    # "javaRe":Ljava/util/regex/Matcher;
    .restart local v6    # "javaRe":Ljava/util/regex/Matcher;
    :cond_7
    move-object/from16 v23, v6

    .end local v6    # "javaRe":Ljava/util/regex/Matcher;
    .restart local v23    # "javaRe":Ljava/util/regex/Matcher;
    invoke-direct {v0, v7, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 312
    new-instance v5, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v5}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    .line 313
    .restart local v5    # "frame":Lio/sentry/protocol/SentryStackFrame;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 315
    .local v12, "className":Ljava/lang/String;
    invoke-direct {v0, v6, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->toModuleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 316
    .local v13, "module":Ljava/lang/String;
    invoke-virtual {v5, v13}, Lio/sentry/protocol/SentryStackFrame;->setModule(Ljava/lang/String;)V

    .line 317
    const/4 v14, 0x3

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    .line 318
    iget-object v14, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    invoke-virtual {v14, v13}, Lio/sentry/SentryStackTraceFactory;->isInApp(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v14}, Lio/sentry/protocol/SentryStackFrame;->setInApp(Ljava/lang/Boolean;)V

    .line 319
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v14}, Lio/sentry/protocol/SentryStackFrame;->setNative(Ljava/lang/Boolean;)V

    .line 320
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    nop

    .line 322
    .end local v3    # "lastJavaFrame":Lio/sentry/protocol/SentryStackFrame;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v12    # "className":Ljava/lang/String;
    .end local v13    # "module":Ljava/lang/String;
    .local v5, "lastJavaFrame":Lio/sentry/protocol/SentryStackFrame;
    move-object v3, v5

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_4

    .end local v5    # "lastJavaFrame":Lio/sentry/protocol/SentryStackFrame;
    .restart local v3    # "lastJavaFrame":Lio/sentry/protocol/SentryStackFrame;
    :cond_8
    invoke-direct {v0, v8, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 323
    if-eqz v3, :cond_9

    .line 324
    new-instance v5, Lio/sentry/SentryLockReason;

    invoke-direct {v5}, Lio/sentry/SentryLockReason;-><init>()V

    .line 325
    .local v5, "lock":Lio/sentry/SentryLockReason;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lio/sentry/SentryLockReason;->setType(I)V

    .line 326
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/SentryLockReason;->setAddress(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/SentryLockReason;->setPackageName(Ljava/lang/String;)V

    .line 328
    const/4 v13, 0x3

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/SentryLockReason;->setClassName(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v3, v5}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 330
    invoke-direct {v0, v1, v5}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 331
    .end local v5    # "lock":Lio/sentry/SentryLockReason;
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_4

    .line 323
    :cond_9
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_4

    .line 332
    :cond_a
    invoke-direct {v0, v9, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 333
    if-eqz v3, :cond_b

    .line 334
    new-instance v5, Lio/sentry/SentryLockReason;

    invoke-direct {v5}, Lio/sentry/SentryLockReason;-><init>()V

    .line 335
    .restart local v5    # "lock":Lio/sentry/SentryLockReason;
    invoke-virtual {v5, v14}, Lio/sentry/SentryLockReason;->setType(I)V

    .line 336
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/SentryLockReason;->setAddress(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/SentryLockReason;->setPackageName(Ljava/lang/String;)V

    .line 338
    const/4 v13, 0x3

    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/SentryLockReason;->setClassName(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v3, v5}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 340
    invoke-direct {v0, v1, v5}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 341
    .end local v5    # "lock":Lio/sentry/SentryLockReason;
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_4

    .line 333
    :cond_b
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_4

    .line 342
    :cond_c
    invoke-direct {v0, v10, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 343
    if-eqz v3, :cond_d

    .line 344
    new-instance v5, Lio/sentry/SentryLockReason;

    invoke-direct {v5}, Lio/sentry/SentryLockReason;-><init>()V

    .line 345
    .restart local v5    # "lock":Lio/sentry/SentryLockReason;
    const/4 v13, 0x4

    invoke-virtual {v5, v13}, Lio/sentry/SentryLockReason;->setType(I)V

    .line 346
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/SentryLockReason;->setAddress(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/SentryLockReason;->setPackageName(Ljava/lang/String;)V

    .line 348
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/SentryLockReason;->setClassName(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v3, v5}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 350
    invoke-direct {v0, v1, v5}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 351
    .end local v5    # "lock":Lio/sentry/SentryLockReason;
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_4

    .line 343
    :cond_d
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_4

    .line 352
    :cond_e
    move-object/from16 v5, v20

    .end local v20    # "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    .local v5, "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    invoke-direct {v0, v5, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 353
    if-eqz v3, :cond_f

    .line 354
    new-instance v6, Lio/sentry/SentryLockReason;

    invoke-direct {v6}, Lio/sentry/SentryLockReason;-><init>()V

    .line 355
    .local v6, "lock":Lio/sentry/SentryLockReason;
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Lio/sentry/SentryLockReason;->setType(I)V

    .line 356
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lio/sentry/SentryLockReason;->setAddress(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lio/sentry/SentryLockReason;->setPackageName(Ljava/lang/String;)V

    .line 358
    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lio/sentry/SentryLockReason;->setClassName(Ljava/lang/String;)V

    .line 359
    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-direct {v0, v5, v13, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getLong(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v12}, Lio/sentry/SentryLockReason;->setThreadId(Ljava/lang/Long;)V

    .line 360
    invoke-virtual {v3, v6}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 361
    invoke-direct {v0, v1, v6}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 362
    .end local v6    # "lock":Lio/sentry/SentryLockReason;
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    goto/16 :goto_4

    .line 353
    :cond_f
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    goto/16 :goto_4

    .line 363
    :cond_10
    move-object/from16 v6, v19

    .end local v19    # "waitingToLockRe":Ljava/util/regex/Matcher;
    .local v6, "waitingToLockRe":Ljava/util/regex/Matcher;
    invoke-direct {v0, v6, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 364
    if-eqz v3, :cond_11

    .line 365
    new-instance v12, Lio/sentry/SentryLockReason;

    invoke-direct {v12}, Lio/sentry/SentryLockReason;-><init>()V

    .line 366
    .local v12, "lock":Lio/sentry/SentryLockReason;
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lio/sentry/SentryLockReason;->setType(I)V

    .line 367
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/sentry/SentryLockReason;->setAddress(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/sentry/SentryLockReason;->setPackageName(Ljava/lang/String;)V

    .line 369
    const/4 v13, 0x3

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/sentry/SentryLockReason;->setClassName(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3, v12}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 371
    invoke-direct {v0, v1, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 372
    .end local v12    # "lock":Lio/sentry/SentryLockReason;
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    goto :goto_4

    .line 364
    :cond_11
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    goto :goto_4

    .line 373
    :cond_12
    move-object/from16 v12, v18

    .end local v18    # "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    .local v12, "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    invoke-direct {v0, v12, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 374
    if-eqz v3, :cond_13

    .line 375
    new-instance v13, Lio/sentry/SentryLockReason;

    invoke-direct {v13}, Lio/sentry/SentryLockReason;-><init>()V

    .line 376
    .local v13, "lock":Lio/sentry/SentryLockReason;
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lio/sentry/SentryLockReason;->setType(I)V

    .line 377
    invoke-virtual {v3, v13}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 378
    invoke-direct {v0, v1, v13}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 379
    .end local v13    # "lock":Lio/sentry/SentryLockReason;
    move-object/from16 v13, v17

    goto :goto_4

    .line 374
    :cond_13
    move-object/from16 v13, v17

    goto :goto_4

    .line 380
    :cond_14
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v13, v17

    .end local v17    # "blankRe":Ljava/util/regex/Matcher;
    .local v13, "blankRe":Ljava/util/regex/Matcher;
    invoke-direct {v0, v13, v11}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 381
    goto :goto_5

    .line 383
    .end local v11    # "text":Ljava/lang/String;
    .end local v15    # "line":Lio/sentry/android/core/internal/threaddump/Line;
    :cond_15
    :goto_4
    move-object v11, v5

    move-object v14, v13

    move-object/from16 v5, v22

    move-object v13, v12

    move-object v12, v6

    move-object/from16 v6, v23

    goto/16 :goto_0

    .line 380
    .end local v13    # "blankRe":Ljava/util/regex/Matcher;
    .restart local v11    # "text":Ljava/lang/String;
    .restart local v15    # "line":Lio/sentry/android/core/internal/threaddump/Line;
    .restart local v17    # "blankRe":Ljava/util/regex/Matcher;
    :cond_16
    move-object/from16 v13, v17

    .end local v17    # "blankRe":Ljava/util/regex/Matcher;
    .restart local v13    # "blankRe":Ljava/util/regex/Matcher;
    goto :goto_5

    .line 262
    .end local v15    # "line":Lio/sentry/android/core/internal/threaddump/Line;
    .end local v22    # "sysTidRe":Ljava/util/regex/Matcher;
    .end local v23    # "javaRe":Ljava/util/regex/Matcher;
    .local v5, "sysTidRe":Ljava/util/regex/Matcher;
    .local v6, "javaRe":Ljava/util/regex/Matcher;
    .local v11, "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    .local v12, "waitingToLockRe":Ljava/util/regex/Matcher;
    .local v13, "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    .local v14, "blankRe":Ljava/util/regex/Matcher;
    :cond_17
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v11

    move-object v6, v12

    move-object v12, v13

    move-object v13, v14

    .line 386
    .end local v11    # "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    .end local v14    # "blankRe":Ljava/util/regex/Matcher;
    .local v5, "waitingToLockHeldRe":Ljava/util/regex/Matcher;
    .local v6, "waitingToLockRe":Ljava/util/regex/Matcher;
    .local v12, "waitingToLockUnknownRe":Ljava/util/regex/Matcher;
    .local v13, "blankRe":Ljava/util/regex/Matcher;
    .restart local v22    # "sysTidRe":Ljava/util/regex/Matcher;
    .restart local v23    # "javaRe":Ljava/util/regex/Matcher;
    :goto_5
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 387
    new-instance v11, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {v11, v2}, Lio/sentry/protocol/SentryStackTrace;-><init>(Ljava/util/List;)V

    .line 389
    .local v11, "stackTrace":Lio/sentry/protocol/SentryStackTrace;
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v11, v14}, Lio/sentry/protocol/SentryStackTrace;->setSnapshot(Ljava/lang/Boolean;)V

    .line 390
    return-object v11
.end method

.method private parseThread(Lio/sentry/android/core/internal/threaddump/Lines;)Lio/sentry/protocol/SentryThread;
    .locals 10
    .param p1, "lines"    # Lio/sentry/android/core/internal/threaddump/Lines;

    .line 182
    new-instance v0, Lio/sentry/protocol/SentryThread;

    invoke-direct {v0}, Lio/sentry/protocol/SentryThread;-><init>()V

    .line 184
    .local v0, "sentryThread":Lio/sentry/protocol/SentryThread;
    sget-object v1, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_MANAGED_THREAD_RE:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 185
    .local v1, "beginManagedThreadRe":Ljava/util/regex/Matcher;
    sget-object v3, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_UNMANAGED_NATIVE_THREAD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 188
    .local v2, "beginUnmanagedNativeThreadRe":Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 189
    return-object v4

    .line 191
    :cond_0
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->next()Lio/sentry/android/core/internal/threaddump/Line;

    move-result-object v3

    .line 192
    .local v3, "line":Lio/sentry/android/core/internal/threaddump/Line;
    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 193
    iget-object v6, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v8, "Internal error while parsing thread dump."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-object v4

    .line 196
    :cond_1
    iget-object v6, v3, Lio/sentry/android/core/internal/threaddump/Line;->text:Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "No thread id in the dump, skipping thread."

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    .line 197
    const/4 v6, 0x4

    invoke-direct {p0, v1, v6, v4}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getLong(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    .line 198
    .local v6, "tid":Ljava/lang/Long;
    if-nez v6, :cond_2

    .line 199
    iget-object v8, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v8

    sget-object v9, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v8, v9, v7, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    return-object v4

    .line 203
    :cond_2
    invoke-virtual {v0, v6}, Lio/sentry/protocol/SentryThread;->setId(Ljava/lang/Long;)V

    .line 204
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lio/sentry/protocol/SentryThread;->setName(Ljava/lang/String;)V

    .line 206
    const-string v9, "main"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 207
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lio/sentry/protocol/SentryThread;->setMain(Ljava/lang/Boolean;)V

    .line 209
    :cond_3
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "state":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 213
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 214
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/sentry/protocol/SentryThread;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {v0, v8}, Lio/sentry/protocol/SentryThread;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .end local v6    # "tid":Ljava/lang/Long;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "state":Ljava/lang/String;
    :cond_5
    iget-object v6, v3, Lio/sentry/android/core/internal/threaddump/Line;->text:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 220
    const/4 v6, 0x3

    invoke-direct {p0, v2, v6, v4}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getLong(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    .line 221
    .local v6, "sysTid":Ljava/lang/Long;
    if-nez v6, :cond_6

    .line 222
    iget-object v8, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v8

    sget-object v9, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v8, v9, v7, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    return-object v4

    .line 226
    :cond_6
    invoke-virtual {v0, v6}, Lio/sentry/protocol/SentryThread;->setId(Ljava/lang/Long;)V

    .line 227
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/sentry/protocol/SentryThread;->setName(Ljava/lang/String;)V

    .line 228
    iget-object v5, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->processId:Ljava/lang/Long;

    invoke-virtual {v6, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 229
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/sentry/protocol/SentryThread;->setMain(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 219
    .end local v6    # "sysTid":Ljava/lang/Long;
    :cond_7
    :goto_0
    nop

    .line 234
    :cond_8
    :goto_1
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->parseStacktrace(Lio/sentry/android/core/internal/threaddump/Lines;Lio/sentry/protocol/SentryThread;)Lio/sentry/protocol/SentryStackTrace;

    move-result-object v5

    .line 235
    .local v5, "stackTrace":Lio/sentry/protocol/SentryStackTrace;
    invoke-virtual {v5}, Lio/sentry/protocol/SentryStackTrace;->getFrames()Ljava/util/List;

    move-result-object v6

    .line 236
    .local v6, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_2

    .line 240
    :cond_9
    invoke-virtual {v0, v5}, Lio/sentry/protocol/SentryThread;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    .line 241
    return-object v0

    .line 238
    :cond_a
    :goto_2
    return-object v4
.end method

.method private toModuleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 395
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p2

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getArtContext()Lio/sentry/protocol/ArtContext;
    .locals 1

    .line 146
    iget-object v0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->artContextParser:Lio/sentry/android/core/internal/threaddump/ArtContextParser;

    invoke-virtual {v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v0

    return-object v0
.end method

.method public getDebugImages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->debugImages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getThreads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->threads:Ljava/util/List;

    return-object v0
.end method

.method public parse(Lio/sentry/android/core/internal/threaddump/Lines;)V
    .locals 8
    .param p1, "lines"    # Lio/sentry/android/core/internal/threaddump/Lines;

    .line 151
    sget-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_MANAGED_THREAD_RE:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 152
    .local v0, "beginManagedThreadRe":Ljava/util/regex/Matcher;
    sget-object v2, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_UNMANAGED_NATIVE_THREAD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 153
    .local v2, "beginUnmanagedNativeThreadRe":Ljava/util/regex/Matcher;
    sget-object v3, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->PID_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 155
    .local v1, "pidRe":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 156
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->next()Lio/sentry/android/core/internal/threaddump/Line;

    move-result-object v3

    .line 157
    .local v3, "line":Lio/sentry/android/core/internal/threaddump/Line;
    if-nez v3, :cond_0

    .line 158
    iget-object v4, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Internal error while parsing thread dump."

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return-void

    .line 161
    :cond_0
    iget-object v4, v3, Lio/sentry/android/core/internal/threaddump/Line;->text:Ljava/lang/String;

    .line 164
    .local v4, "text":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0, v2, v4}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    invoke-direct {p0, v1, v4}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getLong(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->processId:Ljava/lang/Long;

    goto :goto_2

    .line 174
    :cond_2
    iget-object v5, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->artContextParser:Lio/sentry/android/core/internal/threaddump/ArtContextParser;

    invoke-virtual {v5, v4}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parseLine(Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->rewind()V

    .line 167
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->parseThread(Lio/sentry/android/core/internal/threaddump/Lines;)Lio/sentry/protocol/SentryThread;

    move-result-object v5

    .line 168
    .local v5, "thread":Lio/sentry/protocol/SentryThread;
    if-eqz v5, :cond_4

    .line 169
    iget-object v6, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->threads:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v5    # "thread":Lio/sentry/protocol/SentryThread;
    :cond_4
    nop

    .line 176
    .end local v3    # "line":Lio/sentry/android/core/internal/threaddump/Line;
    .end local v4    # "text":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 178
    :cond_5
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->markThreads()V

    .line 179
    return-void
.end method
