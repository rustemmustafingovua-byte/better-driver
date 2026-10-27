.class public final Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;
.super Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;
.source "SentryFlutterReplayBreadcrumbConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryFlutterReplayBreadcrumbConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryFlutterReplayBreadcrumbConverter.kt\nio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n518#2,7:142\n508#2:149\n454#2:150\n1266#3,4:151\n1#4:155\n*S KotlinDebug\n*F\n+ 1 SentryFlutterReplayBreadcrumbConverter.kt\nio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter\n*L\n91#1:142,7\n92#1:149\n92#1:150\n92#1:151,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;",
        "Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;",
        "<init>",
        "()V",
        "convert",
        "Lio/sentry/rrweb/RRWebEvent;",
        "breadcrumb",
        "Lio/sentry/Breadcrumb;",
        "newRRWebBreadcrumb",
        "Lio/sentry/rrweb/RRWebBreadcrumbEvent;",
        "doubleTimestamp",
        "",
        "date",
        "Ljava/util/Date;",
        "timestamp",
        "",
        "convertNetworkBreadcrumb",
        "getTouchPathMessage",
        "",
        "maybePath",
        "",
        "Companion",
        "sentry_flutter_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter$Companion;

.field private static final supportedNetworkData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->Companion:Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter$Companion;

    .line 17
    nop

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "status_code"

    const-string v2, "statusCode"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 19
    const-string v1, "method"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 18
    nop

    .line 20
    const-string v1, "response_body_size"

    const-string v2, "responseBodySize"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 18
    nop

    .line 21
    const-string v1, "request_body_size"

    const-string v2, "requestBodySize"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 18
    nop

    .line 17
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->supportedNetworkData:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;-><init>()V

    return-void
.end method

.method private final convertNetworkBreadcrumb(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebEvent;
    .locals 19
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 74
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->convert(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebEvent;

    move-result-object v1

    .line 75
    .local v1, "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    if-eqz v1, :cond_0

    .line 76
    return-object v1

    .line 82
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "start_timestamp"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Number;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 83
    .local v2, "startTimestampMs":Ljava/lang/Number;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v3

    const-string v5, "end_timestamp"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_2

    check-cast v3, Ljava/lang/Number;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 84
    .local v3, "endTimestampMs":Ljava/lang/Number;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v5

    const-string v6, "url"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 85
    .local v5, "url":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    if-nez v5, :cond_4

    move-object/from16 v16, v1

    const/16 v18, 0x0

    goto/16 :goto_7

    .line 90
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    const-string v7, "getData(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    nop

    .local v6, "$this$filterKeys$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 142
    .local v7, "$i$f$filterKeys":I
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 143
    .local v8, "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 144
    .local v10, "entry$iv":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, "key":Ljava/lang/String;
    const/4 v12, 0x0

    .line 91
    .local v12, "$i$a$-filterKeys-SentryFlutterReplayBreadcrumbConverter$convertNetworkBreadcrumb$eventData$1":I
    sget-object v13, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->supportedNetworkData:Ljava/util/Map;

    invoke-interface {v13, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 144
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "$i$a$-filterKeys-SentryFlutterReplayBreadcrumbConverter$convertNetworkBreadcrumb$eventData$1":I
    if-eqz v11, :cond_5

    .line 145
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 148
    .end local v10    # "entry$iv":Ljava/util/Map$Entry;
    :cond_6
    move-object v6, v8

    check-cast v6, Ljava/util/Map;

    .line 92
    .end local v6    # "$this$filterKeys$iv":Ljava/util/Map;
    .end local v7    # "$i$f$filterKeys":I
    .end local v8    # "result$iv":Ljava/util/LinkedHashMap;
    nop

    .local v6, "$this$mapKeys$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 149
    .local v7, "$i$f$mapKeys":I
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    .local v8, "destination$iv$iv":Ljava/util/Map;
    move-object v9, v6

    .local v9, "$this$mapKeysTo$iv$iv":Ljava/util/Map;
    const/4 v10, 0x0

    .line 150
    .local v10, "$i$f$mapKeysTo":I
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    move-object v12, v8

    .local v12, "destination$iv$iv$iv":Ljava/util/Map;
    const/4 v13, 0x0

    .line 151
    .local v13, "$i$f$associateByTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 152
    .local v15, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Ljava/util/Map$Entry;

    const/16 v17, 0x0

    .local v17, "$i$a$-mapKeys-SentryFlutterReplayBreadcrumbConverter$convertNetworkBreadcrumb$eventData$2":I
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    .line 92
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    .local v16, "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    sget-object v1, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->supportedNetworkData:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .end local v4    # "key":Ljava/lang/String;
    .end local v17    # "$i$a$-mapKeys-SentryFlutterReplayBreadcrumbConverter$convertNetworkBreadcrumb$eventData$2":I
    move-object v4, v15

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "it$iv$iv":Ljava/util/Map$Entry;
    const/16 v17, 0x0

    .line 150
    .local v17, "$i$a$-associateByTo-MapsKt__MapsKt$mapKeysTo$1$iv$iv":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 152
    .end local v4    # "it$iv$iv":Ljava/util/Map$Entry;
    .end local v17    # "$i$a$-associateByTo-MapsKt__MapsKt$mapKeysTo$1$iv$iv":I
    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    goto :goto_4

    .line 154
    .end local v15    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    .restart local v1    # "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    :cond_7
    move-object/from16 v16, v1

    const/16 v18, 0x0

    .line 150
    .end local v1    # "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    .end local v11    # "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "destination$iv$iv$iv":Ljava/util/Map;
    .end local v13    # "$i$f$associateByTo":I
    .restart local v16    # "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    nop

    .line 149
    .end local v8    # "destination$iv$iv":Ljava/util/Map;
    .end local v9    # "$this$mapKeysTo$iv$iv":Ljava/util/Map;
    .end local v10    # "$i$f$mapKeysTo":I
    nop

    .line 93
    .end local v6    # "$this$mapKeys$iv":Ljava/util/Map;
    .end local v7    # "$i$f$mapKeys":I
    invoke-static {v12}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 89
    nop

    .line 98
    .local v1, "eventData":Ljava/util/Map;
    invoke-virtual/range {p1 .. p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v4

    const-string v6, "request"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Ljava/util/Map;

    if-eqz v7, :cond_8

    check-cast v4, Ljava/util/Map;

    goto :goto_5

    :cond_8
    move-object/from16 v4, v18

    :goto_5
    if-eqz v4, :cond_9

    .line 155
    .local v4, "it":Ljava/util/Map;
    const/4 v7, 0x0

    .line 98
    .local v7, "$i$a$-let-SentryFlutterReplayBreadcrumbConverter$convertNetworkBreadcrumb$1":I
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v4    # "it":Ljava/util/Map;
    .end local v7    # "$i$a$-let-SentryFlutterReplayBreadcrumbConverter$convertNetworkBreadcrumb$1":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v4

    const-string v6, "response"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Ljava/util/Map;

    if-eqz v7, :cond_a

    check-cast v4, Ljava/util/Map;

    goto :goto_6

    :cond_a
    move-object/from16 v4, v18

    :goto_6
    if-eqz v4, :cond_b

    .line 155
    .restart local v4    # "it":Ljava/util/Map;
    const/4 v7, 0x0

    .line 99
    .local v7, "$i$a$-let-SentryFlutterReplayBreadcrumbConverter$convertNetworkBreadcrumb$2":I
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v4    # "it":Ljava/util/Map;
    .end local v7    # "$i$a$-let-SentryFlutterReplayBreadcrumbConverter$convertNetworkBreadcrumb$2":I
    :cond_b
    new-instance v4, Lio/sentry/rrweb/RRWebSpanEvent;

    invoke-direct {v4}, Lio/sentry/rrweb/RRWebSpanEvent;-><init>()V

    move-object v6, v4

    .local v6, "$this$convertNetworkBreadcrumb_u24lambda_u244":Lio/sentry/rrweb/RRWebSpanEvent;
    const/4 v7, 0x0

    .line 102
    .local v7, "$i$a$-apply-SentryFlutterReplayBreadcrumbConverter$convertNetworkBreadcrumb$3":I
    const-string v8, "resource.http"

    invoke-virtual {v6, v8}, Lio/sentry/rrweb/RRWebSpanEvent;->setOp(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lio/sentry/rrweb/RRWebSpanEvent;->setTimestamp(J)V

    .line 104
    invoke-virtual {v6, v5}, Lio/sentry/rrweb/RRWebSpanEvent;->setDescription(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->doubleTimestamp(J)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lio/sentry/rrweb/RRWebSpanEvent;->setStartTimestamp(D)V

    .line 106
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->doubleTimestamp(J)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lio/sentry/rrweb/RRWebSpanEvent;->setEndTimestamp(D)V

    .line 107
    invoke-virtual {v6, v1}, Lio/sentry/rrweb/RRWebSpanEvent;->setData(Ljava/util/Map;)V

    .line 108
    nop

    .line 101
    .end local v6    # "$this$convertNetworkBreadcrumb_u24lambda_u244":Lio/sentry/rrweb/RRWebSpanEvent;
    .end local v7    # "$i$a$-apply-SentryFlutterReplayBreadcrumbConverter$convertNetworkBreadcrumb$3":I
    check-cast v4, Lio/sentry/rrweb/RRWebEvent;

    return-object v4

    .line 85
    .end local v16    # "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    .local v1, "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    :cond_c
    move-object/from16 v16, v1

    const/16 v18, 0x0

    .line 86
    .end local v1    # "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    .restart local v16    # "rrWebEvent":Lio/sentry/rrweb/RRWebEvent;
    :goto_7
    return-object v18
.end method

.method private final doubleTimestamp(J)D
    .locals 4
    .param p1, "timestamp"    # J

    .line 71
    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private final doubleTimestamp(Ljava/util/Date;)D
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .line 69
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->doubleTimestamp(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private final getTouchPathMessage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "maybePath"    # Ljava/lang/Object;

    .line 112
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "message":Ljava/lang/StringBuilder;
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ge v3, v1, :cond_8

    .line 118
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 119
    .local v3, "item":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 120
    goto/16 :goto_2

    .line 123
    :cond_1
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    const-string v5, "element"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "?"

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    const-string v5, "label"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    const-string v5, "name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 126
    .local v4, "identifier":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_1
    if-eqz v5, :cond_6

    .line 127
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x14

    if-le v5, v7, :cond_5

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0x11

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "substring(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    :cond_5
    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_6
    if-lez v1, :cond_7

    .line 134
    const-string v5, " > "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .end local v3    # "item":Ljava/lang/Object;
    .end local v4    # "identifier":Ljava/lang/Object;
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    .end local v0    # "message":Ljava/lang/StringBuilder;
    :cond_9
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private final newRRWebBreadcrumb(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    .locals 5
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 60
    new-instance v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;-><init>()V

    move-object v1, v0

    .local v1, "$this$newRRWebBreadcrumb_u24lambda_u240":Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-apply-SentryFlutterReplayBreadcrumbConverter$newRRWebBreadcrumb$1":I
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setCategory(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 63
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setData(Ljava/util/Map;)V

    .line 64
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setTimestamp(J)V

    .line 65
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    const-string v4, "getTimestamp(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->doubleTimestamp(Ljava/util/Date;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setBreadcrumbTimestamp(D)V

    .line 66
    const-string v3, "default"

    invoke-virtual {v1, v3}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setBreadcrumbType(Ljava/lang/String;)V

    .line 67
    nop

    .line 60
    .end local v1    # "$this$newRRWebBreadcrumb_u24lambda_u240":Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    .end local v2    # "$i$a$-apply-SentryFlutterReplayBreadcrumbConverter$newRRWebBreadcrumb$1":I
    nop

    .line 67
    return-object v0
.end method


# virtual methods
.method public convert(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebEvent;
    .locals 5
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    const-string v0, "breadcrumb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "navigation"

    sparse-switch v2, :sswitch_data_0

    :goto_0
    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "to"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 33
    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->newRRWebBreadcrumb(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    move-result-object v1

    goto :goto_1

    .line 35
    :cond_1
    nop

    :goto_1
    check-cast v1, Lio/sentry/rrweb/RRWebEvent;

    goto/16 :goto_3

    .line 26
    :sswitch_1
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->convertNetworkBreadcrumb(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebEvent;

    move-result-object v1

    goto :goto_3

    .line 26
    :sswitch_2
    const-string v2, "sentry.transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 29
    :cond_3
    goto :goto_3

    .line 26
    :sswitch_3
    const-string v2, "sentry.event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 28
    :cond_4
    goto :goto_3

    .line 26
    :sswitch_4
    const-string v2, "ui.click"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 39
    :cond_5
    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->newRRWebBreadcrumb(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$convert_u24lambda_u240":Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    const/4 v2, 0x0

    .line 40
    .local v2, "$i$a$-apply-SentryFlutterReplayBreadcrumbConverter$convert$1":I
    const-string v3, "ui.tap"

    invoke-virtual {v1, v3}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setCategory(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "path"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;->getTouchPathMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setMessage(Ljava/lang/String;)V

    .line 42
    nop

    .line 39
    .end local v1    # "$this$convert_u24lambda_u240":Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    .end local v2    # "$i$a$-apply-SentryFlutterReplayBreadcrumbConverter$convert$1":I
    move-object v1, v0

    check-cast v1, Lio/sentry/rrweb/RRWebEvent;

    goto :goto_3

    .line 45
    :goto_2
    invoke-super {p0, p1}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->convert(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebEvent;

    move-result-object v0

    .line 48
    .local v0, "nativeBreadcrumb":Lio/sentry/rrweb/RRWebEvent;
    instance-of v2, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    if-eqz v2, :cond_6

    .line 49
    move-object v2, v0

    check-cast v2, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    invoke-virtual {v2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 50
    return-object v1

    .line 54
    :cond_6
    move-object v1, v0

    goto :goto_3

    .line 27
    .end local v0    # "nativeBreadcrumb":Lio/sentry/rrweb/RRWebEvent;
    :cond_7
    nop

    .line 26
    :goto_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7f837e52 -> :sswitch_4
        -0xf09ec35 -> :sswitch_3
        -0x91af4b1 -> :sswitch_2
        0x310888 -> :sswitch_1
        0x6f060a14 -> :sswitch_0
    .end sparse-switch
.end method
