.class public Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;
.super Ljava/lang/Object;
.source "DefaultReplayBreadcrumbConverter.kt"

# interfaces
.implements Lio/sentry/ReplayBreadcrumbConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;,
        Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$ReplayBeforeBreadcrumbCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultReplayBreadcrumbConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultReplayBreadcrumbConverter.kt\nio/sentry/android/replay/DefaultReplayBreadcrumbConverter\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,293:1\n487#2,7:294\n1#3:301\n1557#4:302\n1628#4,3:303\n1557#4:306\n1628#4,3:307\n*S KotlinDebug\n*F\n+ 1 DefaultReplayBreadcrumbConverter.kt\nio/sentry/android/replay/DefaultReplayBreadcrumbConverter\n*L\n169#1:294,7\n247#1:302\n247#1:303,3\n266#1:306\n266#1:307,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u0000 \u00162\u00020\u0001:\u0002\u0016\u0017B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0008H\u0016J\u000c\u0010\u0011\u001a\u00020\u0012*\u00020\u0008H\u0002J\u000c\u0010\u0013\u001a\u00020\r*\u00020\rH\u0002J\u000c\u0010\u0014\u001a\u00020\u0015*\u00020\u0008H\u0002RN\u0010\u0006\u001aB\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u0008\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\n0\n \t* \u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u0008\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\n0\n\u0018\u00010\u000b0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;",
        "Lio/sentry/ReplayBreadcrumbConverter;",
        "options",
        "Lio/sentry/SentryOptions;",
        "(Lio/sentry/SentryOptions;)V",
        "()V",
        "httpNetworkDetails",
        "",
        "Lio/sentry/Breadcrumb;",
        "kotlin.jvm.PlatformType",
        "Lio/sentry/util/network/NetworkRequestData;",
        "",
        "lastConnectivityState",
        "",
        "convert",
        "Lio/sentry/rrweb/RRWebEvent;",
        "breadcrumb",
        "isValidForRRWebSpan",
        "",
        "snakeToCamelCase",
        "toRRWebSpanEvent",
        "Lio/sentry/rrweb/RRWebSpanEvent;",
        "Companion",
        "ReplayBeforeBreadcrumbCallback",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;

.field private static final MAX_HTTP_NETWORK_DETAILS:I = 0x20

.field private static final snakecasePattern$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlin/text/Regex;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedNetworkData:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final httpNetworkDetails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/sentry/Breadcrumb;",
            "Lio/sentry/util/network/NetworkRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private lastConnectivityState:Ljava/lang/String;

.field private options:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->Companion:Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->$stable:I

    .line 29
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion$snakecasePattern$2;->INSTANCE:Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion$snakecasePattern$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->snakecasePattern$delegate:Lkotlin/Lazy;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .local v1, "$this$supportedNetworkData_u24lambda_u240":Ljava/util/HashSet;
    const/4 v2, 0x0

    .line 33
    .local v2, "$i$a$-apply-DefaultReplayBreadcrumbConverter$Companion$supportedNetworkData$1":I
    const-string v3, "status_code"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v3, "method"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v3, "response_content_length"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v3, "request_content_length"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v3, "http.response_content_length"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v3, "http.request_content_length"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    nop

    .line 32
    .end local v1    # "$this$supportedNetworkData_u24lambda_u240":Ljava/util/HashSet;
    .end local v2    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$Companion$supportedNetworkData$1":I
    sput-object v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->supportedNetworkData:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    nop

    .line 82
    new-instance v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;

    invoke-direct {v0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->httpNetworkDetails:Ljava/util/Map;

    .line 18
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 3
    .param p1, "options"    # Lio/sentry/SentryOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;-><init>()V

    .line 23
    iput-object p1, p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->options:Lio/sentry/SentryOptions;

    .line 24
    iget-object v0, p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->options:Lio/sentry/SentryOptions;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$ReplayBeforeBreadcrumbCallback;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getBeforeBreadcrumb()Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$ReplayBeforeBreadcrumbCallback;-><init>(Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V

    check-cast v1, Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions;->setBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V

    .line 25
    :goto_0
    return-void
.end method

.method public static final synthetic access$getHttpNetworkDetails$p(Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;

    .line 18
    iget-object v0, p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->httpNetworkDetails:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getSnakecasePattern$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 18
    sget-object v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->snakecasePattern$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final isValidForRRWebSpan(Lio/sentry/Breadcrumb;)Z
    .locals 5
    .param p1, "$this$isValidForRRWebSpan"    # Lio/sentry/Breadcrumb;

    .line 196
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_3

    .line 197
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v3, "getData(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "http.start_timestamp"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "http.end_timestamp"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    nop

    .line 196
    :goto_3
    return v1
.end method

.method private final snakeToCamelCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "$this$snakeToCamelCase"    # Ljava/lang/String;

    .line 202
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v1, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->Companion:Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;

    invoke-static {v1}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;->access$getSnakecasePattern(Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;)Lkotlin/text/Regex;

    move-result-object v1

    sget-object v2, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$snakeToCamelCase$1;->INSTANCE:Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$snakeToCamelCase$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final toRRWebSpanEvent(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebSpanEvent;
    .locals 34
    .param p1, "$this$toRRWebSpanEvent"    # Lio/sentry/Breadcrumb;

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 207
    .local v1, "breadcrumb":Lio/sentry/Breadcrumb;
    invoke-virtual {v1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "http.start_timestamp"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 208
    .local v2, "httpStartTimestamp":Ljava/lang/Object;
    invoke-virtual {v1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "http.end_timestamp"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 210
    .local v3, "httpEndTimestamp":Ljava/lang/Object;
    new-instance v4, Lio/sentry/rrweb/RRWebSpanEvent;

    invoke-direct {v4}, Lio/sentry/rrweb/RRWebSpanEvent;-><init>()V

    move-object v5, v4

    .local v5, "$this$toRRWebSpanEvent_u24lambda_u240":Lio/sentry/rrweb/RRWebSpanEvent;
    const/4 v6, 0x0

    .line 211
    .local v6, "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    invoke-virtual {v1}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lio/sentry/rrweb/RRWebSpanEvent;->setTimestamp(J)V

    .line 212
    const-string v7, "resource.http"

    invoke-virtual {v5, v7}, Lio/sentry/rrweb/RRWebSpanEvent;->setOp(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v7

    const-string v8, "url"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lio/sentry/rrweb/RRWebSpanEvent;->setDescription(Ljava/lang/String;)V

    .line 216
    nop

    .line 217
    instance-of v7, v2, Ljava/lang/Double;

    const-string v8, "null cannot be cast to non-null type kotlin.Long"

    const-wide v9, 0x408f400000000000L    # 1000.0

    if-eqz v7, :cond_0

    .line 218
    move-object v7, v2

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    div-double/2addr v11, v9

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v11, v9

    .line 216
    :goto_0
    invoke-virtual {v5, v11, v12}, Lio/sentry/rrweb/RRWebSpanEvent;->setStartTimestamp(D)V

    .line 223
    nop

    .line 224
    instance-of v7, v3, Ljava/lang/Double;

    if-eqz v7, :cond_1

    .line 225
    move-object v7, v3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    div-double/2addr v7, v9

    goto :goto_1

    .line 227
    :cond_1
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v3

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v9

    .line 223
    :goto_1
    invoke-virtual {v5, v7, v8}, Lio/sentry/rrweb/RRWebSpanEvent;->setEndTimestamp(D)V

    .line 230
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 232
    .local v7, "breadcrumbData":Ljava/util/Map;
    iget-object v8, v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->httpNetworkDetails:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/sentry/util/network/NetworkRequestData;

    .line 235
    .local v8, "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    if-eqz v8, :cond_14

    move-object v9, v8

    .local v9, "networkData":Lio/sentry/util/network/NetworkRequestData;
    const/4 v10, 0x0

    .line 236
    .local v10, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1":I
    invoke-virtual {v9}, Lio/sentry/util/network/NetworkRequestData;->getMethod()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 301
    .local v11, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 236
    .local v12, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$1":I
    const-string v13, "method"

    invoke-interface {v7, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$1":I
    :cond_2
    invoke-virtual {v9}, Lio/sentry/util/network/NetworkRequestData;->getStatusCode()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 301
    .local v11, "it":Ljava/lang/Integer;
    const/4 v12, 0x0

    .line 237
    .local v12, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$2":I
    const-string v13, "statusCode"

    invoke-interface {v7, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v11    # "it":Ljava/lang/Integer;
    .end local v12    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$2":I
    :cond_3
    invoke-virtual {v9}, Lio/sentry/util/network/NetworkRequestData;->getRequestBodySize()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 301
    .local v11, "it":Ljava/lang/Long;
    const/4 v12, 0x0

    .line 238
    .local v12, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$3":I
    const-string v13, "requestBodySize"

    invoke-interface {v7, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v11    # "it":Ljava/lang/Long;
    .end local v12    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$3":I
    :cond_4
    invoke-virtual {v9}, Lio/sentry/util/network/NetworkRequestData;->getResponseBodySize()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 301
    .restart local v11    # "it":Ljava/lang/Long;
    const/4 v12, 0x0

    .line 239
    .local v12, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$4":I
    const-string v13, "responseBodySize"

    invoke-interface {v7, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v11    # "it":Ljava/lang/Long;
    .end local v12    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$4":I
    :cond_5
    invoke-virtual {v9}, Lio/sentry/util/network/NetworkRequestData;->getRequest()Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    move-result-object v11

    const-string v12, "headers"

    const-string v14, "warnings"

    const-string v15, "getHeaders(...)"

    const-string v13, "body"

    move-object/from16 v17, v1

    .end local v1    # "breadcrumb":Lio/sentry/Breadcrumb;
    .local v17, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "size"

    if-eqz v11, :cond_c

    .local v11, "request":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    const/16 v18, 0x0

    .line 242
    .local v18, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$5":I
    new-instance v19, Ljava/util/LinkedHashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v20, v2

    .end local v2    # "httpStartTimestamp":Ljava/lang/Object;
    .local v20, "httpStartTimestamp":Ljava/lang/Object;
    move-object/from16 v2, v19

    check-cast v2, Ljava/util/Map;

    .line 243
    .local v2, "requestData":Ljava/util/Map;
    invoke-virtual {v11}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->getSize()Ljava/lang/Long;

    move-result-object v19

    if-eqz v19, :cond_6

    move-object/from16 v21, v19

    .line 301
    .local v21, "it":Ljava/lang/Long;
    const/16 v19, 0x0

    .line 243
    .local v19, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$5$1":I
    move-object/from16 v22, v3

    move-object/from16 v3, v21

    .end local v21    # "it":Ljava/lang/Long;
    .local v3, "it":Ljava/lang/Long;
    .local v22, "httpEndTimestamp":Ljava/lang/Object;
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "it":Ljava/lang/Long;
    .end local v19    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$5$1":I
    goto :goto_2

    .end local v22    # "httpEndTimestamp":Ljava/lang/Object;
    .local v3, "httpEndTimestamp":Ljava/lang/Object;
    :cond_6
    move-object/from16 v22, v3

    .line 244
    .end local v3    # "httpEndTimestamp":Ljava/lang/Object;
    .restart local v22    # "httpEndTimestamp":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v11}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->getBody()Lio/sentry/util/network/NetworkBody;

    move-result-object v3

    if-eqz v3, :cond_9

    .local v3, "it":Lio/sentry/util/network/NetworkBody;
    const/16 v19, 0x0

    .line 245
    .local v19, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$5$2":I
    move-object/from16 v21, v3

    .end local v3    # "it":Lio/sentry/util/network/NetworkBody;
    .local v21, "it":Lio/sentry/util/network/NetworkBody;
    invoke-virtual/range {v21 .. v21}, Lio/sentry/util/network/NetworkBody;->getBody()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual/range {v21 .. v21}, Lio/sentry/util/network/NetworkBody;->getWarnings()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    .local v3, "warnings":Ljava/util/List;
    const/16 v23, 0x0

    .line 247
    .local v23, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$5$2$1":I
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v24, v3

    .end local v3    # "warnings":Ljava/util/List;
    .local v24, "warnings":Ljava/util/List;
    move-object/from16 v3, v24

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/16 v25, 0x0

    .line 302
    .local v25, "$i$f$map":I
    move-object/from16 v26, v4

    new-instance v4, Ljava/util/ArrayList;

    move/from16 v27, v6

    move-object/from16 v28, v8

    const/16 v6, 0xa

    .end local v6    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .end local v8    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    .local v27, "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .local v28, "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 303
    .local v8, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_7

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    .line 304
    .local v30, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v31, v30

    check-cast v31, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    .local v31, "warning":Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;
    const/16 v32, 0x0

    .line 247
    .local v32, "$i$a$-map-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$5$2$1$1":I
    move-object/from16 v33, v3

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .local v33, "$this$map$iv":Ljava/lang/Iterable;
    invoke-virtual/range {v31 .. v31}, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 304
    .end local v31    # "warning":Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;
    .end local v32    # "$i$a$-map-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$5$2$1$1":I
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v33

    goto :goto_3

    .line 305
    .end local v30    # "item$iv$iv":Ljava/lang/Object;
    .end local v33    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v3    # "$this$map$iv":Ljava/lang/Iterable;
    :cond_7
    move-object/from16 v33, v3

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    .restart local v33    # "$this$map$iv":Ljava/lang/Iterable;
    move-object v3, v4

    check-cast v3, Ljava/util/List;

    .line 302
    nop

    .line 247
    .end local v25    # "$i$f$map":I
    .end local v33    # "$this$map$iv":Ljava/lang/Iterable;
    invoke-interface {v2, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    nop

    .end local v23    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$5$2$1":I
    .end local v24    # "warnings":Ljava/util/List;
    goto :goto_4

    .line 246
    .end local v27    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .end local v28    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    .local v6, "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .local v8, "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    :cond_8
    move-object/from16 v26, v4

    move/from16 v27, v6

    move-object/from16 v28, v8

    .end local v6    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .end local v8    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    .restart local v27    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .restart local v28    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    :goto_4
    nop

    .line 248
    nop

    .end local v19    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$5$2":I
    .end local v21    # "it":Lio/sentry/util/network/NetworkBody;
    goto :goto_5

    .line 244
    .end local v27    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .end local v28    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    .restart local v6    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .restart local v8    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    :cond_9
    move-object/from16 v26, v4

    move/from16 v27, v6

    move-object/from16 v28, v8

    .end local v6    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .end local v8    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    .restart local v27    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .restart local v28    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    :goto_5
    nop

    .line 251
    invoke-virtual {v11}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 252
    invoke-virtual {v11}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_a
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 256
    const-string v3, "request"

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_b
    nop

    .end local v2    # "requestData":Ljava/util/Map;
    .end local v11    # "request":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .end local v18    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$5":I
    goto :goto_6

    .line 241
    .end local v20    # "httpStartTimestamp":Ljava/lang/Object;
    .end local v22    # "httpEndTimestamp":Ljava/lang/Object;
    .end local v27    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .end local v28    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    .local v2, "httpStartTimestamp":Ljava/lang/Object;
    .local v3, "httpEndTimestamp":Ljava/lang/Object;
    .restart local v6    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .restart local v8    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    :cond_c
    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v6

    move-object/from16 v28, v8

    .end local v2    # "httpStartTimestamp":Ljava/lang/Object;
    .end local v3    # "httpEndTimestamp":Ljava/lang/Object;
    .end local v6    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .end local v8    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    .restart local v20    # "httpStartTimestamp":Ljava/lang/Object;
    .restart local v22    # "httpEndTimestamp":Ljava/lang/Object;
    .restart local v27    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .restart local v28    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    :goto_6
    nop

    .line 260
    invoke-virtual {v9}, Lio/sentry/util/network/NetworkRequestData;->getResponse()Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    move-result-object v2

    if-eqz v2, :cond_13

    .local v2, "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    const/4 v3, 0x0

    .line 261
    .local v3, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$6":I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 262
    .local v4, "responseData":Ljava/util/Map;
    invoke-virtual {v2}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->getSize()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 301
    .local v6, "it":Ljava/lang/Long;
    const/4 v8, 0x0

    .line 262
    .local v8, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$6$1":I
    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .end local v6    # "it":Ljava/lang/Long;
    .end local v8    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$6$1":I
    :cond_d
    invoke-virtual {v2}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->getBody()Lio/sentry/util/network/NetworkBody;

    move-result-object v1

    if-eqz v1, :cond_10

    .local v1, "it":Lio/sentry/util/network/NetworkBody;
    const/4 v6, 0x0

    .line 264
    .local v6, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$6$2":I
    invoke-virtual {v1}, Lio/sentry/util/network/NetworkBody;->getBody()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v1}, Lio/sentry/util/network/NetworkBody;->getWarnings()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_f

    .local v8, "warnings":Ljava/util/List;
    const/4 v11, 0x0

    .line 266
    .local v11, "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$6$2$1":I
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v8

    check-cast v13, Ljava/lang/Iterable;

    .local v13, "$this$map$iv":Ljava/lang/Iterable;
    const/16 v18, 0x0

    .line 306
    .local v18, "$i$f$map":I
    move-object/from16 v19, v1

    .end local v1    # "it":Lio/sentry/util/network/NetworkBody;
    .local v19, "it":Lio/sentry/util/network/NetworkBody;
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v21, v2

    const/16 v2, 0xa

    .end local v2    # "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .local v21, "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    invoke-static {v13, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv$iv":Ljava/util/Collection;
    move-object v2, v13

    .local v2, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 307
    .local v16, "$i$f$mapTo":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 308
    .local v24, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v24

    check-cast v25, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    .local v25, "warning":Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;
    const/16 v29, 0x0

    .line 266
    .local v29, "$i$a$-map-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$6$2$1$1":I
    move-object/from16 v30, v2

    .end local v2    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v30, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    invoke-virtual/range {v25 .. v25}, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 308
    .end local v25    # "warning":Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;
    .end local v29    # "$i$a$-map-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$6$2$1$1":I
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v30

    goto :goto_7

    .line 309
    .end local v24    # "item$iv$iv":Ljava/lang/Object;
    .end local v30    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v2    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :cond_e
    move-object/from16 v30, v2

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .end local v2    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$mapTo":I
    check-cast v1, Ljava/util/List;

    .line 306
    nop

    .line 266
    .end local v13    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v18    # "$i$f$map":I
    invoke-interface {v4, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    nop

    .end local v8    # "warnings":Ljava/util/List;
    .end local v11    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$6$2$1":I
    goto :goto_8

    .line 265
    .end local v19    # "it":Lio/sentry/util/network/NetworkBody;
    .end local v21    # "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .local v1, "it":Lio/sentry/util/network/NetworkBody;
    .local v2, "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    :cond_f
    move-object/from16 v19, v1

    move-object/from16 v21, v2

    .end local v1    # "it":Lio/sentry/util/network/NetworkBody;
    .end local v2    # "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .restart local v19    # "it":Lio/sentry/util/network/NetworkBody;
    .restart local v21    # "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    :goto_8
    nop

    .line 267
    nop

    .end local v6    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$6$2":I
    .end local v19    # "it":Lio/sentry/util/network/NetworkBody;
    goto :goto_9

    .line 263
    .end local v21    # "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .restart local v2    # "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    :cond_10
    move-object/from16 v21, v2

    .end local v2    # "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .restart local v21    # "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    :goto_9
    nop

    .line 270
    invoke-virtual/range {v21 .. v21}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 271
    invoke-virtual/range {v21 .. v21}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v4, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_11
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 275
    const-string v1, "response"

    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_12
    nop

    .line 260
    .end local v3    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1$6":I
    .end local v4    # "responseData":Ljava/util/Map;
    .end local v21    # "response":Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    nop

    .line 277
    :cond_13
    nop

    .end local v9    # "networkData":Lio/sentry/util/network/NetworkRequestData;
    .end local v10    # "$i$a$-let-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1$1":I
    goto :goto_a

    .line 235
    .end local v17    # "breadcrumb":Lio/sentry/Breadcrumb;
    .end local v20    # "httpStartTimestamp":Ljava/lang/Object;
    .end local v22    # "httpEndTimestamp":Ljava/lang/Object;
    .end local v27    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .end local v28    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    .local v1, "breadcrumb":Lio/sentry/Breadcrumb;
    .local v2, "httpStartTimestamp":Ljava/lang/Object;
    .local v3, "httpEndTimestamp":Ljava/lang/Object;
    .local v6, "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .local v8, "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    :cond_14
    move-object/from16 v17, v1

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v6

    move-object/from16 v28, v8

    .end local v1    # "breadcrumb":Lio/sentry/Breadcrumb;
    .end local v2    # "httpStartTimestamp":Ljava/lang/Object;
    .end local v3    # "httpEndTimestamp":Ljava/lang/Object;
    .end local v6    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .end local v8    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    .restart local v17    # "breadcrumb":Lio/sentry/Breadcrumb;
    .restart local v20    # "httpStartTimestamp":Ljava/lang/Object;
    .restart local v22    # "httpEndTimestamp":Ljava/lang/Object;
    .restart local v27    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .restart local v28    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    :goto_a
    nop

    .line 281
    invoke-virtual/range {v17 .. v17}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getData(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .local v8, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 282
    .local v2, "value":Ljava/lang/Object;
    sget-object v3, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->supportedNetworkData:Ljava/util/HashSet;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 284
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "content_length"

    const-string v10, "body_size"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    const/4 v6, 0x2

    const/4 v9, 0x0

    invoke-static {v3, v4, v9, v6, v9}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->snakeToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    nop

    .line 285
    .local v3, "formattedKey":Ljava/lang/String;
    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 289
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "formattedKey":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    :cond_16
    invoke-virtual {v5, v7}, Lio/sentry/rrweb/RRWebSpanEvent;->setData(Ljava/util/Map;)V

    .line 290
    nop

    .line 210
    .end local v5    # "$this$toRRWebSpanEvent_u24lambda_u240":Lio/sentry/rrweb/RRWebSpanEvent;
    .end local v7    # "breadcrumbData":Ljava/util/Map;
    .end local v27    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$toRRWebSpanEvent$1":I
    .end local v28    # "networkDetailData":Lio/sentry/util/network/NetworkRequestData;
    return-object v26
.end method


# virtual methods
.method public convert(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebEvent;
    .locals 16
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    move-object/from16 v0, p0

    const-string v1, "breadcrumb"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "breadcrumbMessage":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 94
    .local v3, "breadcrumbCategory":Ljava/lang/String;
    const/4 v4, 0x0

    .line 95
    .local v4, "breadcrumbLevel":Ljava/lang/Object;
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .line 97
    .local v5, "breadcrumbData":Ljava/util/Map;
    nop

    .line 98
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 99
    invoke-direct/range {p0 .. p1}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->isValidForRRWebSpan(Lio/sentry/Breadcrumb;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    invoke-direct/range {p0 .. p1}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->toRRWebSpanEvent(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebSpanEvent;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lio/sentry/rrweb/RRWebEvent;

    goto :goto_0

    .line 102
    :cond_0
    nop

    .line 99
    :goto_0
    return-object v7

    .line 106
    :cond_1
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v8, "navigation"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, "state"

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v6

    const-string v12, "app.lifecycle"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "app."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_d

    .line 110
    :cond_2
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v6

    const-string v12, "device.orientation"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 111
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v6

    .line 112
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    const-string v8, "position"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 114
    .local v6, "position":Ljava/lang/Object;
    const-string v11, "landscape"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "portrait"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    .line 117
    :cond_3
    return-object v7

    .line 115
    :cond_4
    :goto_1
    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 121
    .end local v6    # "position":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "getData(...)"

    if-eqz v6, :cond_c

    .line 122
    const-string v3, "navigation"

    .line 123
    nop

    .line 124
    nop

    .line 125
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v11, "resumed"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v11, "to"

    if-eqz v6, :cond_8

    .line 126
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    const-string v8, "screen"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_6

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v6, v7

    :goto_2
    if-eqz v6, :cond_7

    const/16 v8, 0x2e

    const/4 v12, 0x2

    invoke-static {v6, v8, v7, v12, v7}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    move-object v6, v7

    goto :goto_3

    .line 128
    :cond_8
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_9

    check-cast v6, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object v6, v7

    goto :goto_3

    .line 129
    :cond_a
    move-object v6, v7

    .line 124
    :goto_3
    if-nez v6, :cond_b

    .line 130
    return-object v7

    .line 123
    :cond_b
    invoke-interface {v5, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 133
    :cond_c
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v6

    const-string v12, "ui.click"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 134
    const-string v3, "ui.tap"

    .line 135
    nop

    .line 136
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    const-string v11, "view.id"

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_d

    .line 137
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    const-string v11, "view.tag"

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 136
    if-nez v6, :cond_d

    .line 138
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    const-string v11, "view.class"

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 136
    :cond_d
    nop

    .line 138
    instance-of v11, v6, Ljava/lang/String;

    if-eqz v11, :cond_e

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_e
    move-object v6, v7

    .line 136
    :goto_4
    if-nez v6, :cond_f

    .line 139
    return-object v7

    .line 135
    :cond_f
    move-object v1, v6

    .line 141
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_d

    .line 144
    :cond_10
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v12, "system"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v12, "action"

    if-eqz v6, :cond_19

    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v6

    const-string v13, "network.event"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 145
    const-string v3, "device.connectivity"

    .line 146
    nop

    .line 147
    nop

    .line 148
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v12, "NETWORK_LOST"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "offline"

    goto :goto_8

    .line 149
    :cond_11
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "network_type"

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 150
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v12, v6, Ljava/lang/String;

    if-eqz v12, :cond_12

    check-cast v6, Ljava/lang/String;

    goto :goto_5

    :cond_12
    move-object v6, v7

    :goto_5
    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_14

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_13

    goto :goto_6

    :cond_13
    move v6, v9

    goto :goto_7

    :cond_14
    :goto_6
    move v6, v10

    :goto_7
    if-nez v6, :cond_17

    .line 151
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 146
    :goto_8
    invoke-interface {v5, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v6, v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->lastConnectivityState:Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 161
    return-object v7

    .line 164
    :cond_15
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_16

    check-cast v6, Ljava/lang/String;

    goto :goto_9

    :cond_16
    move-object v6, v7

    :goto_9
    iput-object v6, v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->lastConnectivityState:Ljava/lang/String;

    goto/16 :goto_d

    .line 153
    :cond_17
    return-object v7

    .line 156
    :cond_18
    return-object v7

    .line 167
    :cond_19
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v11, "BATTERY_CHANGED"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 168
    const-string v3, "device.battery"

    .line 169
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v6, "$this$filterKeys$iv":Ljava/util/Map;
    const/4 v8, 0x0

    .line 294
    .local v8, "$i$f$filterKeys":I
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 295
    .local v11, "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 296
    .local v13, "entry$iv":Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "it":Ljava/lang/String;
    const/4 v15, 0x0

    .line 169
    .local v15, "$i$a$-filterKeys-DefaultReplayBreadcrumbConverter$convert$1":I
    const-string v7, "level"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string v7, "charging"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_b

    :cond_1a
    move v7, v9

    goto :goto_c

    :cond_1b
    :goto_b
    move v7, v10

    .line 296
    .end local v14    # "it":Ljava/lang/String;
    .end local v15    # "$i$a$-filterKeys-DefaultReplayBreadcrumbConverter$convert$1":I
    :goto_c
    if-eqz v7, :cond_1c

    .line 297
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v7, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    goto :goto_a

    .line 296
    :cond_1c
    const/4 v7, 0x0

    goto :goto_a

    .line 300
    .end local v13    # "entry$iv":Ljava/util/Map$Entry;
    :cond_1d
    move-object v6, v11

    check-cast v6, Ljava/util/Map;

    .line 169
    .end local v6    # "$this$filterKeys$iv":Ljava/util/Map;
    .end local v8    # "$i$f$filterKeys":I
    .end local v11    # "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_d

    .line 173
    :cond_1e
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v4

    .line 176
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 180
    :goto_d
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_1f

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_20

    :cond_1f
    move v9, v10

    :cond_20
    if-nez v9, :cond_21

    .line 181
    new-instance v6, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    invoke-direct {v6}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;-><init>()V

    move-object v7, v6

    .local v7, "$this$convert_u24lambda_u241":Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    const/4 v8, 0x0

    .line 182
    .local v8, "$i$a$-apply-DefaultReplayBreadcrumbConverter$convert$2":I
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setTimestamp(J)V

    .line 183
    invoke-virtual {v2}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double/2addr v9, v11

    invoke-virtual {v7, v9, v10}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setBreadcrumbTimestamp(D)V

    .line 184
    const-string v9, "default"

    invoke-virtual {v7, v9}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setBreadcrumbType(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v7, v3}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setCategory(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v7, v1}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setMessage(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v7, v4}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 188
    invoke-virtual {v7, v5}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setData(Ljava/util/Map;)V

    .line 189
    nop

    .line 181
    .end local v7    # "$this$convert_u24lambda_u241":Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    .end local v8    # "$i$a$-apply-DefaultReplayBreadcrumbConverter$convert$2":I
    move-object v7, v6

    check-cast v7, Lio/sentry/rrweb/RRWebEvent;

    goto :goto_e

    .line 191
    :cond_21
    const/4 v7, 0x0

    .line 180
    :goto_e
    return-object v7
.end method
