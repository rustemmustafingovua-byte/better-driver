.class public final Lio/sentry/Baggage;
.super Ljava/lang/Object;
.source "Baggage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Baggage$DSCKeys;,
        Lio/sentry/Baggage$DecimalFormatterThreadLocal;
    }
.end annotation


# static fields
.field static final CHARSET:Ljava/lang/String; = "UTF-8"

.field static final MAX_BAGGAGE_LIST_MEMBER_COUNT:Ljava/lang/Integer;

.field static final MAX_BAGGAGE_STRING_LENGTH:Ljava/lang/Integer;

.field static final SENTRY_BAGGAGE_PREFIX:Ljava/lang/String; = "sentry-"

.field private static final decimalFormatter:Lio/sentry/Baggage$DecimalFormatterThreadLocal;


# instance fields
.field private final keyValues:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyValuesLock:Lio/sentry/util/AutoClosableReentrantLock;

.field final logger:Lio/sentry/ILogger;

.field private mutable:Z

.field private sampleRand:Ljava/lang/Double;

.field private sampleRate:Ljava/lang/Double;

.field private final shouldFreeze:Z

.field private final thirdPartyHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/sentry/Baggage;->MAX_BAGGAGE_STRING_LENGTH:Ljava/lang/Integer;

    .line 33
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/sentry/Baggage;->MAX_BAGGAGE_LIST_MEMBER_COUNT:Ljava/lang/Integer;

    .line 45
    new-instance v0, Lio/sentry/Baggage$DecimalFormatterThreadLocal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/Baggage$DecimalFormatterThreadLocal;-><init>(Lio/sentry/Baggage$1;)V

    sput-object v0, Lio/sentry/Baggage;->decimalFormatter:Lio/sentry/Baggage$DecimalFormatterThreadLocal;

    return-void
.end method

.method public constructor <init>(Lio/sentry/Baggage;)V
    .locals 8
    .param p1, "baggage"    # Lio/sentry/Baggage;

    .line 212
    iget-object v1, p1, Lio/sentry/Baggage;->keyValues:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lio/sentry/Baggage;->sampleRate:Ljava/lang/Double;

    iget-object v3, p1, Lio/sentry/Baggage;->sampleRand:Ljava/lang/Double;

    iget-object v4, p1, Lio/sentry/Baggage;->thirdPartyHeader:Ljava/lang/String;

    iget-boolean v5, p1, Lio/sentry/Baggage;->mutable:Z

    iget-boolean v6, p1, Lio/sentry/Baggage;->shouldFreeze:Z

    iget-object v7, p1, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/sentry/Baggage;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;ZZLio/sentry/ILogger;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 8
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 207
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v7, p1

    .end local p1    # "logger":Lio/sentry/ILogger;
    .local v7, "logger":Lio/sentry/ILogger;
    invoke-direct/range {v0 .. v7}, Lio/sentry/Baggage;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;ZZLio/sentry/ILogger;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;ZZLio/sentry/ILogger;)V
    .locals 1
    .param p2, "sampleRate"    # Ljava/lang/Double;
    .param p3, "sampleRand"    # Ljava/lang/Double;
    .param p4, "thirdPartyHeader"    # Ljava/lang/String;
    .param p5, "isMutable"    # Z
    .param p6, "shouldFreeze"    # Z
    .param p7, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "ZZ",
            "Lio/sentry/ILogger;",
            ")V"
        }
    .end annotation

    .line 230
    .local p1, "keyValues":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/Baggage;->keyValuesLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 231
    iput-object p1, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/concurrent/ConcurrentHashMap;

    .line 232
    iput-object p2, p0, Lio/sentry/Baggage;->sampleRate:Ljava/lang/Double;

    .line 233
    iput-object p3, p0, Lio/sentry/Baggage;->sampleRand:Ljava/lang/Double;

    .line 234
    iput-object p7, p0, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    .line 235
    iput-object p4, p0, Lio/sentry/Baggage;->thirdPartyHeader:Ljava/lang/String;

    .line 236
    iput-boolean p5, p0, Lio/sentry/Baggage;->mutable:Z

    .line 237
    iput-boolean p6, p0, Lio/sentry/Baggage;->shouldFreeze:Z

    .line 238
    return-void
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 341
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 335
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromEvent(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/SentryOptions;)Lio/sentry/Baggage;
    .locals 6
    .param p0, "event"    # Lio/sentry/SentryBaseEvent;
    .param p1, "transaction"    # Ljava/lang/String;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 183
    new-instance v0, Lio/sentry/Baggage;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/Baggage;-><init>(Lio/sentry/ILogger;)V

    .line 184
    .local v0, "baggage":Lio/sentry/Baggage;
    invoke-virtual {p0}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    .line 185
    .local v1, "trace":Lio/sentry/SpanContext;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lio/sentry/Baggage;->setTraceId(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/Dsn;->getPublicKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/Baggage;->setPublicKey(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/Baggage;->setRelease(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lio/sentry/SentryBaseEvent;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/Baggage;->setEnvironment(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEffectiveOrgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/Baggage;->setOrgId(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Lio/sentry/Baggage;->setTransaction(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v2}, Lio/sentry/Baggage;->setSampleRate(Ljava/lang/Double;)V

    .line 193
    invoke-virtual {v0, v2}, Lio/sentry/Baggage;->setSampled(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v2}, Lio/sentry/Baggage;->setSampleRand(Ljava/lang/Double;)V

    .line 195
    invoke-virtual {p0}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    const-string v3, "replay_id"

    invoke-virtual {v2, v3}, Lio/sentry/protocol/Contexts;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 196
    .local v2, "replayId":Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v5}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 197
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/sentry/Baggage;->setReplayId(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/sentry/protocol/Contexts;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_1
    invoke-virtual {v0}, Lio/sentry/Baggage;->freeze()V

    .line 202
    return-object v0
.end method

.method public static fromHeader(Ljava/lang/String;)Lio/sentry/Baggage;
    .locals 2
    .param p0, "headerValue"    # Ljava/lang/String;

    .line 61
    nop

    .line 62
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 61
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/sentry/Baggage;->fromHeader(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object v0

    return-object v0
.end method

.method public static fromHeader(Ljava/lang/String;Lio/sentry/ILogger;)Lio/sentry/Baggage;
    .locals 1
    .param p0, "headerValue"    # Ljava/lang/String;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lio/sentry/Baggage;->fromHeader(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object v0

    return-object v0
.end method

.method public static fromHeader(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/Baggage;
    .locals 19
    .param p0, "headerValue"    # Ljava/lang/String;
    .param p1, "includeThirdPartyValues"    # Z
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 106
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 108
    .local v3, "keyValues":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 109
    .local v10, "thirdPartyKeyValueStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 111
    .local v2, "shouldFreeze":Z
    const/4 v4, 0x0

    .line 112
    .local v4, "sampleRate":Ljava/lang/Double;
    const/4 v5, 0x0

    .line 114
    .local v5, "sampleRand":Ljava/lang/Double;
    const-string v6, ","

    if-eqz v1, :cond_6

    .line 117
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 118
    .local v7, "keyValueStrings":[Ljava/lang/String;
    array-length v8, v7

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v8, :cond_5

    aget-object v0, v7, v12

    move-object v13, v0

    .line 119
    .local v13, "keyValueString":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v14, "sentry-"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    .line 123
    :try_start_1
    const-string v0, "="

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "separatorIndex":I
    invoke-virtual {v13, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 125
    .local v14, "key":Ljava/lang/String;
    invoke-static {v14}, Lio/sentry/Baggage;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 126
    .local v15, "keyDecoded":Ljava/lang/String;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v13, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, "value":Ljava/lang/String;
    invoke-static {v11}, Lio/sentry/Baggage;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 129
    .local v17, "valueDecoded":Ljava/lang/String;
    move/from16 v16, v0

    .end local v0    # "separatorIndex":I
    .local v16, "separatorIndex":I
    const-string v0, "sentry-sample_rate"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v0

    const-string v0, "sentry-sample_rand"

    if-eqz v18, :cond_0

    .line 130
    :try_start_2
    invoke-static/range {v17 .. v17}, Lio/sentry/Baggage;->toDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v4, v18

    move-object/from16 v1, v17

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 132
    invoke-static/range {v17 .. v17}, Lio/sentry/Baggage;->toDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v5, v18

    move-object/from16 v1, v17

    goto :goto_1

    .line 134
    :cond_1
    move-object/from16 v1, v17

    .end local v17    # "valueDecoded":Ljava/lang/String;
    .local v1, "valueDecoded":Ljava/lang/String;
    invoke-virtual {v3, v15, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :goto_1
    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 147
    const/4 v0, 0x1

    move v2, v0

    .end local v2    # "shouldFreeze":Z
    .local v0, "shouldFreeze":Z
    goto :goto_2

    .line 149
    .end local v0    # "shouldFreeze":Z
    .end local v1    # "valueDecoded":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyDecoded":Ljava/lang/String;
    .end local v16    # "separatorIndex":I
    .restart local v2    # "shouldFreeze":Z
    :catchall_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v11, "Unable to decode baggage key value pair %s"

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v9, v1, v0, v11, v14}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    goto :goto_3

    .line 156
    :cond_3
    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    .end local v13    # "keyValueString":Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 162
    .end local v7    # "keyValueStrings":[Ljava/lang/String;
    :cond_5
    move v8, v2

    goto :goto_4

    .line 160
    :catchall_1
    move-exception v0

    .line 161
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Unable to decode baggage header %s"

    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v9, v1, v0, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v8, v2

    goto :goto_4

    .line 114
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    move v8, v2

    .line 165
    .end local v2    # "shouldFreeze":Z
    .local v8, "shouldFreeze":Z
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_5

    .line 167
    :cond_7
    invoke-static {v6, v10}, Lio/sentry/util/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_5
    nop

    .line 173
    .local v6, "thirdPartyHeader":Ljava/lang/String;
    new-instance v2, Lio/sentry/Baggage;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v9}, Lio/sentry/Baggage;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;ZZLio/sentry/ILogger;)V

    return-object v2
.end method

.method public static fromHeader(Ljava/util/List;)Lio/sentry/Baggage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/Baggage;"
        }
    .end annotation

    .line 67
    .local p0, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 68
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 67
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/sentry/Baggage;->fromHeader(Ljava/util/List;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object v0

    return-object v0
.end method

.method public static fromHeader(Ljava/util/List;Lio/sentry/ILogger;)Lio/sentry/Baggage;
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/ILogger;",
            ")",
            "Lio/sentry/Baggage;"
        }
    .end annotation

    .line 81
    .local p0, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lio/sentry/Baggage;->fromHeader(Ljava/util/List;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object v0

    return-object v0
.end method

.method public static fromHeader(Ljava/util/List;ZLio/sentry/ILogger;)Lio/sentry/Baggage;
    .locals 2
    .param p1, "includeThirdPartyValues"    # Z
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lio/sentry/ILogger;",
            ")",
            "Lio/sentry/Baggage;"
        }
    .end annotation

    .line 91
    .local p0, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 92
    nop

    .line 93
    const-string v0, ","

    invoke-static {v0, p0}, Lio/sentry/util/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0, p1, p2}, Lio/sentry/Baggage;->fromHeader(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lio/sentry/Baggage;->fromHeader(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object v0

    return-object v0
.end method

.method private static isHighQualityTransactionName(Lio/sentry/protocol/TransactionNameSource;)Z
    .locals 1
    .param p0, "transactionNameSource"    # Lio/sentry/protocol/TransactionNameSource;

    .line 611
    if-eqz p0, :cond_0

    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->URL:Lio/sentry/protocol/TransactionNameSource;

    .line 612
    invoke-virtual {v0, p0}, Lio/sentry/protocol/TransactionNameSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 611
    :goto_0
    return v0
.end method

.method private static sampleRand(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Double;
    .locals 1
    .param p0, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 587
    if-nez p0, :cond_0

    .line 588
    const/4 v0, 0x0

    return-object v0

    .line 591
    :cond_0
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampleRand()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static sampleRate(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Double;
    .locals 1
    .param p0, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 579
    if-nez p0, :cond_0

    .line 580
    const/4 v0, 0x0

    return-object v0

    .line 583
    :cond_0
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static sampleRateToString(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .param p0, "sampleRateAsDouble"    # Ljava/lang/Double;

    .line 595
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const/4 v0, 0x0

    return-object v0

    .line 598
    :cond_0
    sget-object v0, Lio/sentry/Baggage;->decimalFormatter:Lio/sentry/Baggage$DecimalFormatterThreadLocal;

    invoke-virtual {v0}, Lio/sentry/Baggage$DecimalFormatterThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sampled(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 602
    if-nez p0, :cond_0

    .line 603
    const/4 v0, 0x0

    return-object v0

    .line 606
    :cond_0
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static toDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 5
    .param p0, "stringValue"    # Ljava/lang/String;

    .line 617
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 619
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 620
    .local v1, "doubleValue":D
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 625
    .end local v1    # "doubleValue":D
    :cond_0
    goto :goto_0

    .line 623
    :catch_0
    move-exception v1

    .line 624
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-object v0

    .line 627
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public forceSetReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 3
    .param p1, "replayId"    # Lio/sentry/protocol/SentryId;

    .line 470
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, p1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "sentry-replay_id"

    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_0
    return-void
.end method

.method public forceSetSampleRate(Ljava/lang/Double;)V
    .locals 0
    .param p1, "sampleRate"    # Ljava/lang/Double;

    .line 432
    iput-object p1, p0, Lio/sentry/Baggage;->sampleRate:Ljava/lang/Double;

    .line 433
    return-void
.end method

.method public freeze()V
    .locals 1

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/Baggage;->mutable:Z

    .line 243
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 346
    if-nez p1, :cond_0

    .line 347
    const/4 v0, 0x0

    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 375
    const-string v0, "sentry-environment"

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrgId()Ljava/lang/String;
    .locals 1

    .line 477
    const-string v0, "sentry-org_id"

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 365
    const-string v0, "sentry-public_key"

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 385
    const-string v0, "sentry-release"

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplayId()Ljava/lang/String;
    .locals 1

    .line 454
    const-string v0, "sentry-replay_id"

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRand()Ljava/lang/Double;
    .locals 1

    .line 437
    iget-object v0, p0, Lio/sentry/Baggage;->sampleRand:Ljava/lang/Double;

    return-object v0
.end method

.method public getSampleRate()Ljava/lang/Double;
    .locals 1

    .line 415
    iget-object v0, p0, Lio/sentry/Baggage;->sampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getSampled()Ljava/lang/String;
    .locals 1

    .line 420
    const-string v0, "sentry-sampled"

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThirdPartyHeader()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lio/sentry/Baggage;->thirdPartyHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 355
    const-string v0, "sentry-trace_id"

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .line 405
    const-string v0, "sentry-transaction"

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 504
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 505
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/sentry/Baggage;->keyValuesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 506
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v2, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 507
    .local v3, "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 508
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 509
    .local v5, "value":Ljava/lang/String;
    sget-object v6, Lio/sentry/Baggage$DSCKeys;->ALL:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 510
    if-eqz v5, :cond_0

    .line 511
    const-string v6, "sentry-"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "unknownKey":Ljava/lang/String;
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    .end local v3    # "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "unknownKey":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 516
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 517
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-object v0

    .line 505
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 395
    const-string v0, "sentry-user_id"

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMutable()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lio/sentry/Baggage;->mutable:Z

    return v0
.end method

.method public isShouldFreeze()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lio/sentry/Baggage;->shouldFreeze:Z

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 493
    iget-boolean v0, p0, Lio/sentry/Baggage;->mutable:Z

    if-eqz v0, :cond_1

    .line 494
    if-nez p2, :cond_0

    .line 495
    iget-object v0, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lio/sentry/Baggage;->keyValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_1
    :goto_0
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 1
    .param p1, "environment"    # Ljava/lang/String;

    .line 380
    const-string v0, "sentry-environment"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public setOrgId(Ljava/lang/String;)V
    .locals 1
    .param p1, "orgId"    # Ljava/lang/String;

    .line 482
    const-string v0, "sentry-org_id"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/lang/String;

    .line 370
    const-string v0, "sentry-public_key"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 1
    .param p1, "release"    # Ljava/lang/String;

    .line 390
    const-string v0, "sentry-release"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public setReplayId(Ljava/lang/String;)V
    .locals 1
    .param p1, "replayId"    # Ljava/lang/String;

    .line 459
    const-string v0, "sentry-replay_id"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public setSampleRand(Ljava/lang/Double;)V
    .locals 1
    .param p1, "sampleRand"    # Ljava/lang/Double;

    .line 442
    invoke-virtual {p0}, Lio/sentry/Baggage;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iput-object p1, p0, Lio/sentry/Baggage;->sampleRand:Ljava/lang/Double;

    .line 445
    :cond_0
    return-void
.end method

.method public setSampleRate(Ljava/lang/Double;)V
    .locals 1
    .param p1, "sampleRate"    # Ljava/lang/Double;

    .line 425
    invoke-virtual {p0}, Lio/sentry/Baggage;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iput-object p1, p0, Lio/sentry/Baggage;->sampleRate:Ljava/lang/Double;

    .line 428
    :cond_0
    return-void
.end method

.method public setSampled(Ljava/lang/String;)V
    .locals 1
    .param p1, "sampled"    # Ljava/lang/String;

    .line 449
    const-string v0, "sentry-sampled"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 1
    .param p1, "traceId"    # Ljava/lang/String;

    .line 360
    const-string v0, "sentry-trace_id"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 1
    .param p1, "transaction"    # Ljava/lang/String;

    .line 410
    const-string v0, "sentry-transaction"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .line 400
    const-string v0, "sentry-user_id"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Baggage;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public setValuesFromSamplingDecision(Lio/sentry/TracesSamplingDecision;)V
    .locals 1
    .param p1, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 545
    if-nez p1, :cond_0

    .line 546
    return-void

    .line 549
    :cond_0
    invoke-static {p1}, Lio/sentry/Baggage;->sampled(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/StringUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setSampled(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Lio/sentry/TracesSamplingDecision;->getSampleRand()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 552
    invoke-static {p1}, Lio/sentry/Baggage;->sampleRand(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setSampleRand(Ljava/lang/Double;)V

    .line 555
    :cond_1
    invoke-virtual {p1}, Lio/sentry/TracesSamplingDecision;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 556
    invoke-static {p1}, Lio/sentry/Baggage;->sampleRate(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->forceSetSampleRate(Ljava/lang/Double;)V

    .line 558
    :cond_2
    return-void
.end method

.method public setValuesFromScope(Lio/sentry/IScope;Lio/sentry/SentryOptions;)V
    .locals 3
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 563
    invoke-interface {p1}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v0

    .line 564
    .local v0, "propagationContext":Lio/sentry/PropagationContext;
    invoke-interface {p1}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    .line 565
    .local v1, "replayId":Lio/sentry/protocol/SentryId;
    invoke-virtual {v0}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/sentry/Baggage;->setTraceId(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/Dsn;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/sentry/Baggage;->setPublicKey(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/sentry/Baggage;->setRelease(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/sentry/Baggage;->setEnvironment(Ljava/lang/String;)V

    .line 569
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v2, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 570
    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/sentry/Baggage;->setReplayId(Ljava/lang/String;)V

    .line 572
    :cond_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEffectiveOrgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/sentry/Baggage;->setOrgId(Ljava/lang/String;)V

    .line 573
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lio/sentry/Baggage;->setTransaction(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, v2}, Lio/sentry/Baggage;->setSampleRate(Ljava/lang/Double;)V

    .line 575
    invoke-virtual {p0, v2}, Lio/sentry/Baggage;->setSampled(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public setValuesFromTransaction(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V
    .locals 1
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "replayId"    # Lio/sentry/protocol/SentryId;
    .param p3, "sentryOptions"    # Lio/sentry/SentryOptions;
    .param p4, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;
    .param p5, "transactionName"    # Ljava/lang/String;
    .param p6, "transactionNameSource"    # Lio/sentry/protocol/TransactionNameSource;

    .line 528
    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setTraceId(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Dsn;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setPublicKey(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setRelease(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setEnvironment(Ljava/lang/String;)V

    .line 532
    invoke-static {p6}, Lio/sentry/Baggage;->isHighQualityTransactionName(Lio/sentry/protocol/TransactionNameSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setTransaction(Ljava/lang/String;)V

    .line 533
    if-eqz p2, :cond_1

    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, p2}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    invoke-virtual {p2}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setReplayId(Ljava/lang/String;)V

    .line 536
    :cond_1
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getEffectiveOrgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setOrgId(Ljava/lang/String;)V

    .line 537
    invoke-static {p4}, Lio/sentry/Baggage;->sampleRate(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setSampleRate(Ljava/lang/Double;)V

    .line 538
    invoke-static {p4}, Lio/sentry/Baggage;->sampled(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/StringUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setSampled(Ljava/lang/String;)V

    .line 539
    invoke-static {p4}, Lio/sentry/Baggage;->sampleRand(Lio/sentry/TracesSamplingDecision;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Baggage;->setSampleRand(Ljava/lang/Double;)V

    .line 540
    return-void
.end method

.method public toHeaderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "thirdPartyBaggageHeaderString"    # Ljava/lang/String;

    .line 265
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 266
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 267
    .local v0, "separator":Ljava/lang/String;
    const/4 v4, 0x0

    .line 269
    .local v4, "listMemberCount":I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const/16 v5, 0x2c

    invoke-static {v2, v5}, Lio/sentry/util/StringUtils;->countOf(Ljava/lang/String;C)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 272
    const-string v0, ","

    move v5, v4

    move-object v4, v0

    goto :goto_0

    .line 276
    :cond_0
    move v5, v4

    move-object v4, v0

    .end local v0    # "separator":Ljava/lang/String;
    .local v4, "separator":Ljava/lang/String;
    .local v5, "listMemberCount":I
    :goto_0
    iget-object v0, v1, Lio/sentry/Baggage;->keyValuesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v6

    .line 277
    .local v6, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v7, v1, Lio/sentry/Baggage;->keyValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v7, v0

    .line 278
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 279
    .end local v6    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    const-string v6, "sentry-sample_rate"

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v8, "sentry-sample_rand"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 284
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, v1, Lio/sentry/Baggage;->sampleRate:Ljava/lang/Double;

    invoke-static {v0}, Lio/sentry/Baggage;->sampleRateToString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .local v0, "value":Ljava/lang/String;
    goto :goto_2

    .line 286
    .end local v0    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, v1, Lio/sentry/Baggage;->sampleRand:Ljava/lang/Double;

    invoke-static {v0}, Lio/sentry/Baggage;->sampleRateToString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_2

    .line 289
    .end local v0    # "value":Ljava/lang/String;
    :cond_3
    iget-object v0, v1, Lio/sentry/Baggage;->keyValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 292
    .local v11, "value":Ljava/lang/String;
    :goto_2
    if-eqz v11, :cond_6

    .line 293
    sget-object v0, Lio/sentry/Baggage;->MAX_BAGGAGE_LIST_MEMBER_COUNT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v5, v0, :cond_4

    .line 294
    iget-object v0, v1, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    sget-object v12, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    sget-object v13, Lio/sentry/Baggage;->MAX_BAGGAGE_LIST_MEMBER_COUNT:Ljava/lang/Integer;

    filled-new-array {v10, v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Not adding baggage value %s as the total number of list members would exceed the maximum of %s."

    invoke-interface {v0, v12, v14, v13}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v16, v4

    move/from16 v18, v5

    goto/16 :goto_5

    .line 301
    :cond_4
    :try_start_1
    invoke-direct {v1, v10}, Lio/sentry/Baggage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "encodedKey":Ljava/lang/String;
    invoke-direct {v1, v11}, Lio/sentry/Baggage;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 303
    .local v12, "encodedValue":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 305
    .local v13, "encodedKeyValue":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 306
    .local v14, "valueLength":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/2addr v15, v14

    .line 307
    .local v15, "totalLengthIfValueAdded":I
    sget-object v16, Lio/sentry/Baggage;->MAX_BAGGAGE_STRING_LENGTH:Ljava/lang/Integer;

    move-object/from16 v17, v0

    .end local v0    # "encodedKey":Ljava/lang/String;
    .local v17, "encodedKey":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v15, v0, :cond_5

    .line 308
    iget-object v0, v1, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v16, v4

    .end local v4    # "separator":Ljava/lang/String;
    .local v16, "separator":Ljava/lang/String;
    :try_start_2
    const-string v4, "Not adding baggage value %s as the total header value length would exceed the maximum of %s."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v18, v5

    .end local v5    # "listMemberCount":I
    .local v18, "listMemberCount":I
    :try_start_3
    sget-object v5, Lio/sentry/Baggage;->MAX_BAGGAGE_STRING_LENGTH:Ljava/lang/Integer;

    filled-new-array {v10, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v2, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v4, v16

    move/from16 v5, v18

    goto :goto_3

    .line 318
    .end local v12    # "encodedValue":Ljava/lang/String;
    .end local v13    # "encodedKeyValue":Ljava/lang/String;
    .end local v14    # "valueLength":I
    .end local v15    # "totalLengthIfValueAdded":I
    .end local v17    # "encodedKey":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move/from16 v5, v18

    goto :goto_4

    .end local v18    # "listMemberCount":I
    .restart local v5    # "listMemberCount":I
    :catchall_1
    move-exception v0

    move/from16 v18, v5

    .end local v5    # "listMemberCount":I
    .restart local v18    # "listMemberCount":I
    goto :goto_4

    .line 314
    .end local v16    # "separator":Ljava/lang/String;
    .end local v18    # "listMemberCount":I
    .restart local v4    # "separator":Ljava/lang/String;
    .restart local v5    # "listMemberCount":I
    .restart local v12    # "encodedValue":Ljava/lang/String;
    .restart local v13    # "encodedKeyValue":Ljava/lang/String;
    .restart local v14    # "valueLength":I
    .restart local v15    # "totalLengthIfValueAdded":I
    .restart local v17    # "encodedKey":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v4

    move/from16 v18, v5

    .end local v4    # "separator":Ljava/lang/String;
    .end local v5    # "listMemberCount":I
    .restart local v16    # "separator":Ljava/lang/String;
    .restart local v18    # "listMemberCount":I
    add-int/lit8 v5, v18, 0x1

    .line 315
    .end local v18    # "listMemberCount":I
    .restart local v5    # "listMemberCount":I
    :try_start_4
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, ","
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v4, v0

    .line 325
    .end local v12    # "encodedValue":Ljava/lang/String;
    .end local v13    # "encodedKeyValue":Ljava/lang/String;
    .end local v14    # "valueLength":I
    .end local v15    # "totalLengthIfValueAdded":I
    .end local v16    # "separator":Ljava/lang/String;
    .end local v17    # "encodedKey":Ljava/lang/String;
    .restart local v4    # "separator":Ljava/lang/String;
    :goto_3
    goto :goto_6

    .line 318
    .end local v4    # "separator":Ljava/lang/String;
    .restart local v16    # "separator":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v16    # "separator":Ljava/lang/String;
    .restart local v4    # "separator":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v5

    .line 319
    .end local v4    # "separator":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v16    # "separator":Ljava/lang/String;
    :goto_4
    iget-object v2, v1, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v12, "Unable to encode baggage key value pair (key=%s,value=%s)."

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v2, v4, v0, v12, v13}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v4, v16

    goto :goto_6

    .line 292
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v16    # "separator":Ljava/lang/String;
    .restart local v4    # "separator":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v4

    move/from16 v18, v5

    .line 328
    .end local v4    # "separator":Ljava/lang/String;
    .end local v5    # "listMemberCount":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .restart local v16    # "separator":Ljava/lang/String;
    .restart local v18    # "listMemberCount":I
    :goto_5
    move-object/from16 v4, v16

    move/from16 v5, v18

    .end local v16    # "separator":Ljava/lang/String;
    .end local v18    # "listMemberCount":I
    .restart local v4    # "separator":Ljava/lang/String;
    .restart local v5    # "listMemberCount":I
    :goto_6
    move-object/from16 v2, p1

    goto/16 :goto_1

    .line 329
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    .end local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_8

    :try_start_5
    invoke-interface {v6}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    throw v2
.end method

.method public toTraceContext()Lio/sentry/TraceContext;
    .locals 13

    .line 633
    invoke-virtual {p0}, Lio/sentry/Baggage;->getTraceId()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "traceIdString":Ljava/lang/String;
    invoke-virtual {p0}, Lio/sentry/Baggage;->getReplayId()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "replayIdString":Ljava/lang/String;
    invoke-virtual {p0}, Lio/sentry/Baggage;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    .line 637
    .local v4, "publicKey":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 638
    move-object v3, v2

    new-instance v2, Lio/sentry/TraceContext;

    move-object v5, v3

    new-instance v3, Lio/sentry/protocol/SentryId;

    invoke-direct {v3, v0}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 642
    move-object v6, v5

    invoke-virtual {p0}, Lio/sentry/Baggage;->getRelease()Ljava/lang/String;

    move-result-object v5

    .line 643
    move-object v7, v6

    invoke-virtual {p0}, Lio/sentry/Baggage;->getEnvironment()Ljava/lang/String;

    move-result-object v6

    .line 644
    move-object v8, v7

    invoke-virtual {p0}, Lio/sentry/Baggage;->getUserId()Ljava/lang/String;

    move-result-object v7

    .line 645
    move-object v9, v8

    invoke-virtual {p0}, Lio/sentry/Baggage;->getTransaction()Ljava/lang/String;

    move-result-object v8

    .line 646
    invoke-virtual {p0}, Lio/sentry/Baggage;->getSampleRate()Ljava/lang/Double;

    move-result-object v10

    invoke-static {v10}, Lio/sentry/Baggage;->sampleRateToString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v10

    .line 647
    move-object v11, v9

    move-object v9, v10

    invoke-virtual {p0}, Lio/sentry/Baggage;->getSampled()Ljava/lang/String;

    move-result-object v10

    .line 648
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v11, Lio/sentry/protocol/SentryId;

    invoke-direct {v11, v1}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 649
    :goto_0
    invoke-virtual {p0}, Lio/sentry/Baggage;->getSampleRand()Ljava/lang/Double;

    move-result-object v12

    invoke-static {v12}, Lio/sentry/Baggage;->sampleRateToString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v2 .. v12}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;Ljava/lang/String;)V

    .line 650
    .local v2, "traceContext":Lio/sentry/TraceContext;
    invoke-virtual {p0}, Lio/sentry/Baggage;->getUnknown()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/TraceContext;->setUnknown(Ljava/util/Map;)V

    .line 651
    return-object v2

    .line 637
    .end local v2    # "traceContext":Lio/sentry/TraceContext;
    :cond_1
    move-object v11, v2

    .line 653
    return-object v11
.end method
