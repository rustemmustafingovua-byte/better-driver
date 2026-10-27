.class abstract Lio/sentry/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# static fields
.field protected static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field protected final directory:Lio/sentry/util/LazyDirectory;

.field private final maxSize:I

.field protected options:Lio/sentry/SentryOptions;

.field protected final serializer:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/ISerializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/cache/CacheStrategy;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "directoryPath"    # Ljava/lang/String;
    .param p3, "maxSize"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/cache/CacheStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/cache/CacheStrategy$$ExternalSyntheticLambda0;-><init>(Lio/sentry/cache/CacheStrategy;)V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v0, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/util/LazyEvaluator;

    .line 50
    const-string v0, "Directory is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    const-string v0, "SentryOptions is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 52
    new-instance v0, Lio/sentry/util/LazyDirectory;

    invoke-direct {v0, p2}, Lio/sentry/util/LazyDirectory;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/cache/CacheStrategy;->directory:Lio/sentry/util/LazyDirectory;

    .line 53
    iput p3, p0, Lio/sentry/cache/CacheStrategy;->maxSize:I

    .line 54
    return-void
.end method

.method private buildNewEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/SentryEnvelopeItem;)Lio/sentry/SentryEnvelope;
    .locals 3
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "sessionItem"    # Lio/sentry/SentryEnvelopeItem;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "newEnvelopeItems":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryEnvelopeItem;

    .line 282
    .local v2, "newEnvelopeItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v2    # "newEnvelopeItem":Lio/sentry/SentryEnvelopeItem;
    goto :goto_0

    .line 284
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v1, Lio/sentry/SentryEnvelope;

    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object v1
.end method

.method private getFirstSession(Lio/sentry/SentryEnvelope;)Lio/sentry/Session;
    .locals 3
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 226
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryEnvelopeItem;

    .line 227
    .local v1, "item":Lio/sentry/SentryEnvelopeItem;
    invoke-direct {p0, v1}, Lio/sentry/cache/CacheStrategy;->isSessionType(Lio/sentry/SentryEnvelopeItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0, v1}, Lio/sentry/cache/CacheStrategy;->readSession(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;

    move-result-object v0

    return-object v0

    .line 234
    .end local v1    # "item":Lio/sentry/SentryEnvelopeItem;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isSessionType(Lio/sentry/SentryEnvelopeItem;)Z
    .locals 2
    .param p1, "item"    # Lio/sentry/SentryEnvelopeItem;

    .line 248
    if-nez p1, :cond_0

    .line 249
    const/4 v0, 0x0

    return v0

    .line 252
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    invoke-virtual {v0, v1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isValidEnvelope(Lio/sentry/SentryEnvelope;)Z
    .locals 1
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 290
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isValidSession(Lio/sentry/Session;)Z
    .locals 2
    .param p1, "session"    # Lio/sentry/Session;

    .line 238
    invoke-virtual {p1}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object v0

    sget-object v1, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    invoke-virtual {v0, v1}, Lio/sentry/Session$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 239
    return v1

    .line 242
    :cond_0
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "sessionId":Ljava/lang/String;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic lambda$sortFilesOldestToNewest$1(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p0, "f1"    # Ljava/io/File;
    .param p1, "f2"    # Ljava/io/File;

    .line 81
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private moveInitFlagIfNecessary(Ljava/io/File;[Ljava/io/File;)V
    .locals 18
    .param p1, "currentFile"    # Ljava/io/File;
    .param p2, "notDeletedFiles"    # [Ljava/io/File;

    .line 120
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lio/sentry/cache/CacheStrategy;->readEnvelope(Ljava/io/File;)Lio/sentry/SentryEnvelope;

    move-result-object v3

    .line 122
    .local v3, "currentEnvelope":Lio/sentry/SentryEnvelope;
    if-eqz v3, :cond_11

    invoke-direct {v1, v3}, Lio/sentry/cache/CacheStrategy;->isValidEnvelope(Lio/sentry/SentryEnvelope;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v17, v3

    goto/16 :goto_8

    .line 126
    :cond_0
    iget-object v0, v1, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 127
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->CACHE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    .line 128
    invoke-interface {v0, v4, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    .line 130
    invoke-direct {v1, v3}, Lio/sentry/cache/CacheStrategy;->getFirstSession(Lio/sentry/SentryEnvelope;)Lio/sentry/Session;

    move-result-object v4

    .line 132
    .local v4, "currentSession":Lio/sentry/Session;
    if-eqz v4, :cond_10

    invoke-direct {v1, v4}, Lio/sentry/cache/CacheStrategy;->isValidSession(Lio/sentry/Session;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    goto/16 :goto_7

    .line 137
    :cond_1
    invoke-virtual {v4}, Lio/sentry/Session;->getInit()Ljava/lang/Boolean;

    move-result-object v5

    .line 138
    .local v5, "currentSessionInit":Ljava/lang/Boolean;
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    goto/16 :goto_6

    .line 143
    :cond_2
    array-length v6, v2

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_e

    aget-object v8, v2, v7

    .line 144
    .local v8, "notDeletedFile":Ljava/io/File;
    invoke-direct {v1, v8}, Lio/sentry/cache/CacheStrategy;->readEnvelope(Ljava/io/File;)Lio/sentry/SentryEnvelope;

    move-result-object v9

    .line 146
    .local v9, "envelope":Lio/sentry/SentryEnvelope;
    if-eqz v9, :cond_c

    invoke-direct {v1, v9}, Lio/sentry/cache/CacheStrategy;->isValidEnvelope(Lio/sentry/SentryEnvelope;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    goto/16 :goto_4

    .line 150
    :cond_3
    const/4 v10, 0x0

    .line 151
    .local v10, "newSessionItem":Lio/sentry/SentryEnvelopeItem;
    invoke-virtual {v9}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 153
    .local v11, "itemsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/sentry/SentryEnvelopeItem;>;"
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 154
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/sentry/SentryEnvelopeItem;

    .line 156
    .local v12, "envelopeItem":Lio/sentry/SentryEnvelopeItem;
    invoke-direct {v1, v12}, Lio/sentry/cache/CacheStrategy;->isSessionType(Lio/sentry/SentryEnvelopeItem;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    goto :goto_1

    .line 160
    :cond_4
    invoke-direct {v1, v12}, Lio/sentry/cache/CacheStrategy;->readSession(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;

    move-result-object v13

    .line 162
    .local v13, "session":Lio/sentry/Session;
    if-eqz v13, :cond_9

    invoke-direct {v1, v13}, Lio/sentry/cache/CacheStrategy;->isValidSession(Lio/sentry/Session;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 163
    goto :goto_1

    .line 166
    :cond_5
    invoke-virtual {v13}, Lio/sentry/Session;->getInit()Ljava/lang/Boolean;

    move-result-object v14

    .line 167
    .local v14, "init":Ljava/lang/Boolean;
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    iget-object v0, v1, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 169
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 170
    invoke-virtual {v4}, Lio/sentry/Session;->getSessionId()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v15, "Session %s has 2 times the init flag."

    invoke-interface {v0, v6, v15, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    return-void

    .line 174
    :cond_6
    invoke-virtual {v4}, Lio/sentry/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 175
    invoke-virtual {v4}, Lio/sentry/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lio/sentry/Session;->getSessionId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {v13}, Lio/sentry/Session;->setInitAsTrue()V

    .line 178
    :try_start_0
    iget-object v0, v1, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISerializer;

    invoke-static {v0, v13}, Lio/sentry/SentryEnvelopeItem;->fromSession(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v0

    move-object v10, v0

    .line 181
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    goto :goto_3

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    iget-object v15, v1, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 184
    invoke-virtual {v15}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v15

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 189
    invoke-virtual {v4}, Lio/sentry/Session;->getSessionId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v3

    .end local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .local v17, "currentEnvelope":Lio/sentry/SentryEnvelope;
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v3

    .line 185
    move-object/from16 v16, v4

    .end local v4    # "currentSession":Lio/sentry/Session;
    .local v16, "currentSession":Lio/sentry/Session;
    const-string v4, "Failed to create new envelope item for the session %s"

    invoke-interface {v15, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 175
    .end local v16    # "currentSession":Lio/sentry/Session;
    .end local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v4    # "currentSession":Lio/sentry/Session;
    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .end local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .end local v4    # "currentSession":Lio/sentry/Session;
    .restart local v16    # "currentSession":Lio/sentry/Session;
    .restart local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    goto :goto_2

    .line 174
    .end local v16    # "currentSession":Lio/sentry/Session;
    .end local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v4    # "currentSession":Lio/sentry/Session;
    :cond_8
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 194
    .end local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .end local v4    # "currentSession":Lio/sentry/Session;
    .end local v12    # "envelopeItem":Lio/sentry/SentryEnvelopeItem;
    .end local v13    # "session":Lio/sentry/Session;
    .end local v14    # "init":Ljava/lang/Boolean;
    .restart local v16    # "currentSession":Lio/sentry/Session;
    .restart local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    :goto_2
    move-object/from16 v2, p2

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto/16 :goto_1

    .line 162
    .end local v16    # "currentSession":Lio/sentry/Session;
    .end local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v4    # "currentSession":Lio/sentry/Session;
    .restart local v12    # "envelopeItem":Lio/sentry/SentryEnvelopeItem;
    .restart local v13    # "session":Lio/sentry/Session;
    :cond_9
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .end local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .end local v4    # "currentSession":Lio/sentry/Session;
    .restart local v16    # "currentSession":Lio/sentry/Session;
    .restart local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    move-object/from16 v2, p2

    goto/16 :goto_1

    .line 153
    .end local v12    # "envelopeItem":Lio/sentry/SentryEnvelopeItem;
    .end local v13    # "session":Lio/sentry/Session;
    .end local v16    # "currentSession":Lio/sentry/Session;
    .end local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v4    # "currentSession":Lio/sentry/Session;
    :cond_a
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 196
    .end local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .end local v4    # "currentSession":Lio/sentry/Session;
    .restart local v16    # "currentSession":Lio/sentry/Session;
    .restart local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    :goto_3
    if-eqz v10, :cond_d

    .line 197
    invoke-direct {v1, v9, v10}, Lio/sentry/cache/CacheStrategy;->buildNewEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/SentryEnvelopeItem;)Lio/sentry/SentryEnvelope;

    move-result-object v0

    .line 199
    .local v0, "newEnvelope":Lio/sentry/SentryEnvelope;
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 200
    .local v2, "notDeletedFileTimestamp":J
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_b

    .line 201
    iget-object v4, v1, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 202
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 206
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 203
    const-string v12, "File can\'t be deleted: %s"

    invoke-interface {v4, v6, v12, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_b
    invoke-direct {v1, v0, v8, v2, v3}, Lio/sentry/cache/CacheStrategy;->saveNewEnvelope(Lio/sentry/SentryEnvelope;Ljava/io/File;J)V

    .line 210
    goto :goto_5

    .line 146
    .end local v0    # "newEnvelope":Lio/sentry/SentryEnvelope;
    .end local v2    # "notDeletedFileTimestamp":J
    .end local v10    # "newSessionItem":Lio/sentry/SentryEnvelopeItem;
    .end local v11    # "itemsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/sentry/SentryEnvelopeItem;>;"
    .end local v16    # "currentSession":Lio/sentry/Session;
    .end local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v4    # "currentSession":Lio/sentry/Session;
    :cond_c
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 143
    .end local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .end local v4    # "currentSession":Lio/sentry/Session;
    .end local v8    # "notDeletedFile":Ljava/io/File;
    .end local v9    # "envelope":Lio/sentry/SentryEnvelope;
    .restart local v16    # "currentSession":Lio/sentry/Session;
    .restart local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    :cond_d
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    .end local v16    # "currentSession":Lio/sentry/Session;
    .end local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v4    # "currentSession":Lio/sentry/Session;
    :cond_e
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 213
    .end local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .end local v4    # "currentSession":Lio/sentry/Session;
    .restart local v16    # "currentSession":Lio/sentry/Session;
    .restart local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    :goto_5
    return-void

    .line 138
    .end local v16    # "currentSession":Lio/sentry/Session;
    .end local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v4    # "currentSession":Lio/sentry/Session;
    :cond_f
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 139
    .end local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .end local v4    # "currentSession":Lio/sentry/Session;
    .restart local v16    # "currentSession":Lio/sentry/Session;
    .restart local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    :goto_6
    return-void

    .line 132
    .end local v5    # "currentSessionInit":Ljava/lang/Boolean;
    .end local v16    # "currentSession":Lio/sentry/Session;
    .end local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v4    # "currentSession":Lio/sentry/Session;
    :cond_10
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 133
    .end local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .end local v4    # "currentSession":Lio/sentry/Session;
    .restart local v16    # "currentSession":Lio/sentry/Session;
    .restart local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    :goto_7
    return-void

    .line 122
    .end local v16    # "currentSession":Lio/sentry/Session;
    .end local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    :cond_11
    move-object/from16 v17, v3

    .line 123
    .end local v3    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    .restart local v17    # "currentEnvelope":Lio/sentry/SentryEnvelope;
    :goto_8
    return-void
.end method

.method private readEnvelope(Ljava/io/File;)Lio/sentry/SentryEnvelope;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 216
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v1}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISerializer;

    invoke-interface {v1, v0}, Lio/sentry/ISerializer;->deserializeEnvelope(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    return-object v1

    .line 216
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "file":Ljava/io/File;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 218
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to deserialize the envelope."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private readSession(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;
    .locals 4
    .param p1, "item"    # Lio/sentry/SentryEnvelopeItem;

    .line 256
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 258
    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Lio/sentry/cache/CacheStrategy;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 259
    .local v0, "reader":Ljava/io/Reader;
    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v1}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISerializer;

    const-class v2, Lio/sentry/Session;

    invoke-interface {v1, v0, v2}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 259
    return-object v1

    .line 256
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "item":Lio/sentry/SentryEnvelopeItem;
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 260
    .end local v0    # "reader":Ljava/io/Reader;
    .restart local p1    # "item":Lio/sentry/SentryEnvelopeItem;
    :catchall_2
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to deserialize the session."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private saveNewEnvelope(Lio/sentry/SentryEnvelope;Ljava/io/File;J)V
    .locals 4
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "timestamp"    # J

    .line 268
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 269
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v1}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISerializer;

    invoke-interface {v1, p1, v0}, Lio/sentry/ISerializer;->serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V

    .line 271
    invoke-virtual {p2, p3, p4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 274
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .line 268
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    .end local p2    # "file":Ljava/io/File;
    .end local p3    # "timestamp":J
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 272
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    .restart local p2    # "file":Ljava/io/File;
    .restart local p3    # "timestamp":J
    :catchall_2
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to serialize the new envelope to the disk."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private sortFilesOldestToNewest([Ljava/io/File;)V
    .locals 2
    .param p1, "files"    # [Ljava/io/File;

    .line 80
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 81
    new-instance v0, Lio/sentry/cache/CacheStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/sentry/cache/CacheStrategy$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method protected isDirectoryValid()Z
    .locals 5

    .line 62
    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->directory:Lio/sentry/util/LazyDirectory;

    invoke-virtual {v0}, Lio/sentry/util/LazyDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    .line 63
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 64
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 65
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 66
    const-string v4, "The directory for caching files is inaccessible.: %s"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$new$0$io-sentry-cache-CacheStrategy()Lio/sentry/ISerializer;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v0

    return-object v0
.end method

.method protected rotateCacheIfNeeded([Ljava/io/File;)V
    .locals 9
    .param p1, "files"    # [Ljava/io/File;

    .line 91
    array-length v0, p1

    .line 92
    .local v0, "length":I
    iget v1, p0, Lio/sentry/cache/CacheStrategy;->maxSize:I

    if-lt v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 94
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 95
    const-string v4, "Cache folder if full (respecting maxSize). Rotating files"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget v1, p0, Lio/sentry/cache/CacheStrategy;->maxSize:I

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 98
    .local v1, "totalToBeDeleted":I
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->sortFilesOldestToNewest([Ljava/io/File;)V

    .line 100
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    .line 103
    .local v2, "notDeletedFiles":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 104
    aget-object v4, p1, v3

    .line 107
    .local v4, "file":Ljava/io/File;
    invoke-direct {p0, v4, v2}, Lio/sentry/cache/CacheStrategy;->moveInitFlagIfNecessary(Ljava/io/File;[Ljava/io/File;)V

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    iget-object v5, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 111
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 112
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "File can\'t be deleted: %s"

    invoke-interface {v5, v6, v8, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "totalToBeDeleted":I
    .end local v2    # "notDeletedFiles":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_1
    return-void
.end method
