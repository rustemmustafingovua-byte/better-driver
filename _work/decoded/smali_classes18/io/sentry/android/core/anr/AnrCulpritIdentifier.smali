.class public Lio/sentry/android/core/anr/AnrCulpritIdentifier;
.super Ljava/lang/Object;
.source "AnrCulpritIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;
    }
.end annotation


# static fields
.field private static final systemAndFrameworkPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    .line 19
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "java.lang"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "java.util"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "android.app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "android.os.Handler"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "android.os.Looper"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "android.view"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "android.widget"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "com.android.internal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "com.google.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "kotlin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    const-string v1, "kotlinx.coroutines"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static identify(Ljava/util/List;)Lio/sentry/android/core/anr/AggregatedStackTrace;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/android/core/anr/AnrStackTrace;",
            ">;)",
            "Lio/sentry/android/core/anr/AggregatedStackTrace;"
        }
    .end annotation

    .line 97
    .local p0, "stacks":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    return-object v1

    .line 102
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v0, "stackTraceMap":Ljava/util/Map;, "Ljava/util/Map<Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;Lio/sentry/android/core/anr/AggregatedStackTrace;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/core/anr/AnrStackTrace;

    .line 104
    .local v3, "stackTrace":Lio/sentry/android/core/anr/AnrStackTrace;
    iget-object v4, v3, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    array-length v4, v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 105
    goto :goto_0

    .line 112
    :cond_1
    const/4 v4, 0x0

    .line 114
    .local v4, "appFramesCount":I
    iget-object v5, v3, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    move v7, v5

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_4

    .line 116
    iget-object v5, v3, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, "topMostClassName":Ljava/lang/String;
    invoke-static {v12}, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->isSystemFrame(Ljava/lang/String;)Z

    move-result v13

    .line 118
    .local v13, "isSystemFrame":Z
    if-nez v13, :cond_2

    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 122
    :cond_2
    iget-object v5, v3, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    array-length v5, v5

    sub-int v14, v5, v7

    .line 123
    .local v14, "totalFrames":I
    int-to-float v5, v4

    int-to-float v6, v14

    div-float v11, v5, v6

    .line 125
    .local v11, "quality":F
    new-instance v5, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;

    iget-object v6, v3, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    iget-object v8, v3, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v5, v6, v7, v8}, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;-><init>([Ljava/lang/StackTraceElement;II)V

    move-object v15, v5

    .line 128
    .local v15, "key":Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/android/core/anr/AggregatedStackTrace;

    .line 129
    .local v5, "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    if-nez v5, :cond_3

    .line 130
    move-object v6, v5

    .end local v5    # "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .local v6, "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    new-instance v5, Lio/sentry/android/core/anr/AggregatedStackTrace;

    move-object v8, v6

    .end local v6    # "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .local v8, "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    iget-object v6, v3, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    iget-object v9, v3, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v16, v8

    move v8, v9

    .end local v8    # "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .local v16, "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    iget-wide v9, v3, Lio/sentry/android/core/anr/AnrStackTrace;->timestampMs:J

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    .end local v16    # "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .local v1, "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    invoke-direct/range {v5 .. v11}, Lio/sentry/android/core/anr/AggregatedStackTrace;-><init>([Ljava/lang/StackTraceElement;IIJF)V

    .line 137
    .end local v1    # "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .restart local v5    # "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    invoke-interface {v0, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 139
    :cond_3
    move-object/from16 v17, v1

    move-object v1, v5

    .end local v5    # "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .restart local v1    # "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    iget-wide v5, v3, Lio/sentry/android/core/anr/AnrStackTrace;->timestampMs:J

    invoke-virtual {v1, v5, v6}, Lio/sentry/android/core/anr/AggregatedStackTrace;->addOccurrence(J)V

    .line 114
    .end local v1    # "aggregatedStackTrace":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .end local v11    # "quality":F
    .end local v12    # "topMostClassName":Ljava/lang/String;
    .end local v13    # "isSystemFrame":Z
    .end local v14    # "totalFrames":I
    .end local v15    # "key":Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v1, v17

    goto :goto_1

    :cond_4
    move-object/from16 v17, v1

    .line 142
    .end local v3    # "stackTrace":Lio/sentry/android/core/anr/AnrStackTrace;
    .end local v4    # "appFramesCount":I
    .end local v7    # "i":I
    goto :goto_0

    .line 144
    :cond_5
    move-object/from16 v17, v1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 145
    return-object v17

    .line 149
    :cond_6
    nop

    .line 150
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/anr/AnrCulpritIdentifier$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/sentry/android/core/anr/AnrCulpritIdentifier$$ExternalSyntheticLambda0;-><init>()V

    .line 149
    invoke-static {v1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/anr/AggregatedStackTrace;

    return-object v1
.end method

.method public static isSystemFrame(Ljava/lang/String;)Z
    .locals 3
    .param p0, "clazz"    # Ljava/lang/String;

    .line 158
    sget-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->systemAndFrameworkPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    .local v1, "systemPackage":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    .end local v1    # "systemPackage":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$identify$0(Lio/sentry/android/core/anr/AggregatedStackTrace;Lio/sentry/android/core/anr/AggregatedStackTrace;)I
    .locals 4
    .param p0, "c1"    # Lio/sentry/android/core/anr/AggregatedStackTrace;
    .param p1, "c2"    # Lio/sentry/android/core/anr/AggregatedStackTrace;

    .line 152
    iget v0, p0, Lio/sentry/android/core/anr/AggregatedStackTrace;->count:I

    int-to-float v0, v0

    iget v1, p0, Lio/sentry/android/core/anr/AggregatedStackTrace;->quality:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lio/sentry/android/core/anr/AggregatedStackTrace;->depth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p1, Lio/sentry/android/core/anr/AggregatedStackTrace;->count:I

    int-to-float v1, v1

    iget v3, p1, Lio/sentry/android/core/anr/AggregatedStackTrace;->quality:F

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    iget v2, p1, Lio/sentry/android/core/anr/AggregatedStackTrace;->depth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method
