.class public final Lio/sentry/featureflags/FeatureFlagBuffer;
.super Ljava/lang/Object;
.source "FeatureFlagBuffer.java"

# interfaces
.implements Lio/sentry/featureflags/IFeatureFlagBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    }
.end annotation


# instance fields
.field private volatile flags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final maxSize:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/featureflags/FeatureFlagBuffer;-><init>(ILjava/util/List;)V

    .line 42
    return-void
.end method

.method private constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "flags":Ljava/util/List;, "Ljava/util/List<Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 45
    iput p1, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->maxSize:I

    .line 46
    iput-object p2, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->flags:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static create(Lio/sentry/SentryOptions;)Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 2
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 95
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMaxFeatureFlags()I

    move-result v0

    .line 96
    .local v0, "maxFeatureFlags":I
    if-lez v0, :cond_0

    .line 97
    new-instance v1, Lio/sentry/featureflags/FeatureFlagBuffer;

    invoke-direct {v1, v0}, Lio/sentry/featureflags/FeatureFlagBuffer;-><init>(I)V

    return-object v1

    .line 99
    :cond_0
    invoke-static {}, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->getInstance()Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static merged(ILio/sentry/featureflags/FeatureFlagBuffer;Lio/sentry/featureflags/FeatureFlagBuffer;Lio/sentry/featureflags/FeatureFlagBuffer;)Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 22
    .param p0, "maxSize"    # I
    .param p1, "globalBuffer"    # Lio/sentry/featureflags/FeatureFlagBuffer;
    .param p2, "isolationBuffer"    # Lio/sentry/featureflags/FeatureFlagBuffer;
    .param p3, "currentBuffer"    # Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 145
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lio/sentry/featureflags/FeatureFlagBuffer;->flags:Ljava/util/List;

    .line 147
    .local v5, "globalFlags":Ljava/util/List;, "Ljava/util/List<Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    :goto_0
    if-nez v2, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    iget-object v6, v2, Lio/sentry/featureflags/FeatureFlagBuffer;->flags:Ljava/util/List;

    .line 149
    .local v6, "isolationFlags":Ljava/util/List;, "Ljava/util/List<Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    :goto_1
    if-nez v3, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    iget-object v7, v3, Lio/sentry/featureflags/FeatureFlagBuffer;->flags:Ljava/util/List;

    .line 151
    .local v7, "currentFlags":Ljava/util/List;, "Ljava/util/List<Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    :goto_2
    const/4 v8, 0x0

    if-nez v5, :cond_3

    move v9, v8

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .line 152
    .local v9, "globalSize":I
    :goto_3
    if-nez v6, :cond_4

    move v10, v8

    goto :goto_4

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    .line 153
    .local v10, "isolationSize":I
    :goto_4
    if-nez v7, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 156
    .local v8, "currentSize":I
    :goto_5
    if-nez v9, :cond_6

    if-nez v10, :cond_6

    if-nez v8, :cond_6

    .line 157
    invoke-static {}, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->getInstance()Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    move-result-object v4

    return-object v4

    .line 160
    :cond_6
    add-int/lit8 v11, v9, -0x1

    .line 161
    .local v11, "globalIndex":I
    add-int/lit8 v12, v10, -0x1

    .line 162
    .local v12, "isolationIndex":I
    add-int/lit8 v13, v8, -0x1

    .line 166
    .local v13, "currentIndex":I
    if-eqz v5, :cond_8

    if-gez v11, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v14, 0x0

    .line 169
    .local v14, "globalEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    :goto_7
    if-eqz v6, :cond_a

    if-gez v12, :cond_9

    goto :goto_8

    :cond_9
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v15, 0x0

    .line 172
    .local v15, "isolationEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    :goto_9
    if-eqz v7, :cond_c

    if-gez v13, :cond_b

    goto :goto_a

    :cond_b
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    goto :goto_b

    :cond_c
    :goto_a
    const/16 v16, 0x0

    .line 174
    .local v16, "currentEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    :goto_b
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 177
    .local v4, "uniqueFlags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    :goto_c
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v1, v0, :cond_1b

    if-nez v14, :cond_d

    if-nez v15, :cond_d

    if-eqz v16, :cond_1b

    .line 180
    :cond_d
    const/4 v1, 0x0

    .line 181
    .local v1, "entryToAdd":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    const/16 v17, 0x0

    .line 184
    .local v17, "selectedBuffer":Lio/sentry/ScopeType;
    if-eqz v14, :cond_e

    .line 185
    move-object v1, v14

    .line 186
    sget-object v17, Lio/sentry/ScopeType;->GLOBAL:Lio/sentry/ScopeType;

    .line 188
    :cond_e
    if-eqz v15, :cond_10

    if-eqz v1, :cond_f

    .line 189
    invoke-static {v15}, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->access$100(Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;)J

    move-result-wide v18

    invoke-static {v1}, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->access$100(Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-ltz v18, :cond_10

    .line 190
    :cond_f
    move-object v1, v15

    .line 191
    sget-object v17, Lio/sentry/ScopeType;->ISOLATION:Lio/sentry/ScopeType;

    .line 193
    :cond_10
    if-eqz v16, :cond_12

    if-eqz v1, :cond_11

    invoke-static/range {v16 .. v16}, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->access$100(Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;)J

    move-result-wide v18

    invoke-static {v1}, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->access$100(Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-ltz v18, :cond_12

    .line 194
    :cond_11
    move-object/from16 v1, v16

    .line 195
    sget-object v17, Lio/sentry/ScopeType;->CURRENT:Lio/sentry/ScopeType;

    move-object/from16 v2, v17

    goto :goto_d

    .line 198
    :cond_12
    move-object/from16 v2, v17

    .end local v17    # "selectedBuffer":Lio/sentry/ScopeType;
    .local v2, "selectedBuffer":Lio/sentry/ScopeType;
    :goto_d
    if-nez v1, :cond_13

    .line 199
    goto :goto_12

    .line 203
    :cond_13
    invoke-static {v1}, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->access$000(Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 204
    invoke-static {v1}, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->access$000(Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_14
    sget-object v3, Lio/sentry/ScopeType;->CURRENT:Lio/sentry/ScopeType;

    if-ne v2, v3, :cond_16

    .line 209
    add-int/lit8 v13, v13, -0x1

    .line 211
    if-eqz v7, :cond_15

    if-ltz v13, :cond_15

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    goto :goto_e

    :cond_15
    const/4 v3, 0x0

    :goto_e
    move-object/from16 v16, v3

    .end local v16    # "currentEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    .local v3, "currentEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    goto :goto_11

    .line 212
    .end local v3    # "currentEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    .restart local v16    # "currentEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    :cond_16
    sget-object v3, Lio/sentry/ScopeType;->ISOLATION:Lio/sentry/ScopeType;

    if-ne v2, v3, :cond_18

    .line 213
    add-int/lit8 v12, v12, -0x1

    .line 215
    if-eqz v6, :cond_17

    if-ltz v12, :cond_17

    .line 216
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    goto :goto_f

    .line 217
    :cond_17
    const/4 v3, 0x0

    :goto_f
    move-object v15, v3

    .end local v15    # "isolationEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    .local v3, "isolationEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    goto :goto_11

    .line 218
    .end local v3    # "isolationEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    .restart local v15    # "isolationEntry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    :cond_18
    sget-object v3, Lio/sentry/ScopeType;->GLOBAL:Lio/sentry/ScopeType;

    if-ne v2, v3, :cond_1a

    .line 219
    add-int/lit8 v11, v11, -0x1

    .line 220
    if-eqz v5, :cond_19

    if-ltz v11, :cond_19

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    :goto_10
    move-object v14, v3

    .line 222
    .end local v1    # "entryToAdd":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    .end local v2    # "selectedBuffer":Lio/sentry/ScopeType;
    :cond_1a
    :goto_11
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto/16 :goto_c

    .line 225
    :cond_1b
    :goto_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 226
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 227
    new-instance v2, Lio/sentry/featureflags/FeatureFlagBuffer;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lio/sentry/featureflags/FeatureFlagBuffer;-><init>(ILjava/util/List;)V

    return-object v2
.end method

.method public static merged(Lio/sentry/SentryOptions;Lio/sentry/featureflags/IFeatureFlagBuffer;Lio/sentry/featureflags/IFeatureFlagBuffer;Lio/sentry/featureflags/IFeatureFlagBuffer;)Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 5
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "globalBuffer"    # Lio/sentry/featureflags/IFeatureFlagBuffer;
    .param p2, "isolationBuffer"    # Lio/sentry/featureflags/IFeatureFlagBuffer;
    .param p3, "currentBuffer"    # Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 108
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMaxFeatureFlags()I

    move-result v0

    .line 109
    .local v0, "maxSize":I
    if-gtz v0, :cond_0

    .line 110
    invoke-static {}, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->getInstance()Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    move-result-object v1

    return-object v1

    .line 113
    :cond_0
    nop

    .line 115
    instance-of v1, p1, Lio/sentry/featureflags/FeatureFlagBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lio/sentry/featureflags/FeatureFlagBuffer;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 116
    :goto_0
    instance-of v3, p2, Lio/sentry/featureflags/FeatureFlagBuffer;

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Lio/sentry/featureflags/FeatureFlagBuffer;

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 117
    :goto_1
    instance-of v4, p3, Lio/sentry/featureflags/FeatureFlagBuffer;

    if-eqz v4, :cond_3

    move-object v2, p3

    check-cast v2, Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 113
    :cond_3
    invoke-static {v0, v1, v3, v2}, Lio/sentry/featureflags/FeatureFlagBuffer;->merged(ILio/sentry/featureflags/FeatureFlagBuffer;Lio/sentry/featureflags/FeatureFlagBuffer;Lio/sentry/featureflags/FeatureFlagBuffer;)Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 51
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 54
    :cond_0
    iget-object v0, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 55
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->flags:Ljava/util/List;

    .line 56
    .local v1, "current":Ljava/util/List;, "Ljava/util/List<Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .local v2, "updated":Ljava/util/List;, "Ljava/util/List<Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    .line 58
    .local v4, "entry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    invoke-static {v4}, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->access$000(Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 59
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v4    # "entry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    :cond_1
    goto :goto_0

    .line 62
    :cond_2
    new-instance v3, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-direct {v3, p1, v4, v5, v6}, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;-><init>(Ljava/lang/String;ZJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->maxSize:I

    if-le v3, v4, :cond_3

    .line 65
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 68
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->flags:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v1    # "current":Ljava/util/List;, "Ljava/util/List<Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    .end local v2    # "updated":Ljava/util/List;, "Ljava/util/List<Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 70
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    return-void

    .line 54
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1

    .line 52
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_6
    :goto_2
    return-void
.end method

.method public clear()V
    .locals 3

    .line 74
    iget-object v0, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 75
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->flags:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 77
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 74
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public clone()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 3

    .line 91
    new-instance v0, Lio/sentry/featureflags/FeatureFlagBuffer;

    iget v1, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->maxSize:I

    iget-object v2, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->flags:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lio/sentry/featureflags/FeatureFlagBuffer;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lio/sentry/featureflags/FeatureFlagBuffer;->clone()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureFlags()Lio/sentry/protocol/FeatureFlags;
    .locals 5

    .line 81
    iget-object v0, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->flags:Ljava/util/List;

    .line 82
    .local v0, "snapshot":Ljava/util/List;, "Ljava/util/List<Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v1, "featureFlags":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/FeatureFlag;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    .line 84
    .local v3, "entry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    invoke-virtual {v3}, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->toFeatureFlag()Lio/sentry/protocol/FeatureFlag;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "entry":Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
    goto :goto_0

    .line 86
    :cond_0
    new-instance v2, Lio/sentry/protocol/FeatureFlags;

    invoke-direct {v2, v1}, Lio/sentry/protocol/FeatureFlags;-><init>(Ljava/util/List;)V

    return-object v2
.end method
