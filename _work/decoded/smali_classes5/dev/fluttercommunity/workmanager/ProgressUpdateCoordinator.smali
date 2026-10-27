.class public final Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;
.super Ljava/lang/Object;
.source "ProgressUpdateCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressUpdateCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressUpdateCoordinator.kt\ndev/fluttercommunity/workmanager/ProgressUpdateCoordinator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n296#2,2:97\n*S KotlinDebug\n*F\n+ 1 ProgressUpdateCoordinator.kt\ndev/fluttercommunity/workmanager/ProgressUpdateCoordinator\n*L\n79#1:97,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J\u0018\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0008R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R2\u0010\u0006\u001a&\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u0008 \t*\u0012\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u0008\u0018\u00010\n0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;",
        "",
        "<init>",
        "()V",
        "appMessenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "observedUniqueNames",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "",
        "setAppMessenger",
        "",
        "enabled",
        "",
        "messenger",
        "onProgressReported",
        "context",
        "Landroid/content/Context;",
        "uniqueName",
        "workmanager_android_debug"
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
.field public static final INSTANCE:Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;

.field private static volatile appMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private static final observedUniqueNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Mp3JiZ8EknsTUV9HPwIco4Q4sa4(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->onProgressReported$lambda$0$0$1(Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_5WUcpzE7bIfiZ9a4S3YFnLzp7Q(Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->onProgressReported$lambda$0$0(Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c2kT5syq1E7C3K8nPT-B6vNgqgc(Landroidx/work/WorkManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->onProgressReported$lambda$0(Landroidx/work/WorkManager;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;

    invoke-direct {v0}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;-><init>()V

    sput-object v0, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->INSTANCE:Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;

    .line 42
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->observedUniqueNames:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onProgressReported$lambda$0(Landroidx/work/WorkManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "$workManager"    # Landroidx/work/WorkManager;
    .param p1, "$uniqueName"    # Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1}, Landroidx/work/WorkManager;->getWorkInfosForUniqueWorkLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    new-instance v2, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 93
    return-void
.end method

.method private static final onProgressReported$lambda$0$0(Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;
    .locals 9
    .param p0, "$uniqueName"    # Ljava/lang/String;
    .param p1, "workInfos"    # Ljava/util/List;

    .line 79
    if-eqz p1, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroidx/work/WorkInfo;

    .local v5, "it":Landroidx/work/WorkInfo;
    const/4 v6, 0x0

    .line 79
    .local v6, "$i$a$-firstOrNull-ProgressUpdateCoordinator$onProgressReported$1$1$running$1":I
    invoke-virtual {v5}, Landroidx/work/WorkInfo;->getState()Landroidx/work/WorkInfo$State;

    move-result-object v7

    sget-object v8, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 97
    .end local v5    # "it":Landroidx/work/WorkInfo;
    .end local v6    # "$i$a$-firstOrNull-ProgressUpdateCoordinator$onProgressReported$1$1$running$1":I
    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    .line 98
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_2
    move-object v3, v4

    .line 79
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v3, Landroidx/work/WorkInfo;

    if-nez v3, :cond_3

    goto :goto_2

    .line 80
    .local v3, "running":Landroidx/work/WorkInfo;
    :cond_3
    invoke-virtual {v3}, Landroidx/work/WorkInfo;->getProgress()Landroidx/work/Data;

    move-result-object v0

    .line 81
    .local v0, "progress":Landroidx/work/Data;
    invoke-virtual {v0}, Landroidx/work/Data;->getKeyValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 85
    :cond_4
    sget-object v1, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->appMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    if-nez v1, :cond_5

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 86
    .local v1, "currentMessenger":Lio/flutter/plugin/common/BinaryMessenger;
    :cond_5
    invoke-virtual {v0}, Landroidx/work/Data;->getKeyValueMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Ldev/fluttercommunity/workmanager/InputDataUtilsKt;->decodePayload(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 87
    .local v2, "decodedProgress":Ljava/util/Map;
    new-instance v5, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;

    const/4 v6, 0x2

    invoke-direct {v5, v1, v4, v6, v4}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    const-string v4, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String?, kotlin.Any?>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, p0, v2, v4}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;->onProgressUpdate(Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    .line 92
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 79
    .end local v0    # "progress":Landroidx/work/Data;
    .end local v1    # "currentMessenger":Lio/flutter/plugin/common/BinaryMessenger;
    .end local v2    # "decodedProgress":Ljava/util/Map;
    .end local v3    # "running":Landroidx/work/WorkInfo;
    :cond_6
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onProgressReported$lambda$0$0$1(Lkotlin/Result;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Lkotlin/Result;

    .line 91
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final onProgressReported(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    const-string v0, "uniqueName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->appMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    if-nez v0, :cond_0

    return-void

    .line 70
    .local v0, "messenger":Lio/flutter/plugin/common/BinaryMessenger;
    :cond_0
    sget-object v1, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->observedUniqueNames:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    return-void

    .line 74
    :cond_1
    sget-object v1, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Landroidx/work/WorkManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    .line 77
    .local v1, "workManager":Landroidx/work/WorkManager;
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, p2}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda2;-><init>(Landroidx/work/WorkManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void

    .line 74
    .end local v1    # "workManager":Landroidx/work/WorkManager;
    :cond_3
    :goto_0
    return-void
.end method

.method public final setAppMessenger(ZLio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "messenger"    # Lio/flutter/plugin/common/BinaryMessenger;

    const-string v0, "messenger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->appMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 55
    return-void
.end method
