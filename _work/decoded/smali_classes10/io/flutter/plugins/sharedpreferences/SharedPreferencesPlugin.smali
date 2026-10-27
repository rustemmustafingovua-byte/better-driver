.class public final Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
.super Ljava/lang/Object;
.source "SharedPreferencesPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedPreferencesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 5 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 6 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,553:1\n1#2:554\n1915#3,2:555\n49#4:557\n51#4:561\n49#4:562\n51#4:566\n46#5:558\n51#5:560\n46#5:563\n51#5:565\n105#6:559\n105#6:564\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin\n*L\n261#1:555,2\n274#1:557\n274#1:561\n279#1:562\n279#1:566\n274#1:558\n274#1:560\n279#1:563\n279#1:565\n274#1:559\n279#1:564\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\u0011\u0008\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0003\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J&\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010\u001dJ&\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010\u001fJ\u001e\u0010 \u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0082@\u00a2\u0006\u0002\u0010!J&\u0010\"\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010$J&\u0010%\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010\'J&\u0010(\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010\u001fJ,\u0010)\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180*2\u0006\u0010\u001b\u001a\u00020\u001cH\u0097@\u00a2\u0006\u0002\u0010+J&\u0010,\u001a\u00020\u00112\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010*2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010.J2\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u000201002\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010*2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010.J \u00102\u001a\u0004\u0018\u00010#2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u00103J \u00104\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u00103J \u00105\u001a\u0004\u0018\u00010&2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u00103J \u00106\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u00103J \u00107\u001a\u0004\u0018\u0001082\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u00103J&\u00109\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010*2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u00103J,\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00180*2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010*2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010.J*\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u000201002\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010*H\u0082@\u00a2\u0006\u0002\u0010<J\u001a\u0010=\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030?\u0018\u00010>H\u0082@\u00a2\u0006\u0002\u0010@J\u001c\u0010A\u001a\u0004\u0018\u0001012\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030?H\u0082@\u00a2\u0006\u0002\u0010BR\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;",
        "<init>",
        "()V",
        "listEncoder",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;",
        "(Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V",
        "context",
        "Landroid/content/Context;",
        "backend",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;",
        "legacyPlugin",
        "Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;",
        "backgroundDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "setUp",
        "",
        "onAttachedToEngine",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "setBool",
        "key",
        "",
        "value",
        "",
        "options",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
        "(Ljava/lang/String;ZLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setString",
        "(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dataStoreSetString",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setInt",
        "",
        "(Ljava/lang/String;JLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setDouble",
        "",
        "(Ljava/lang/String;DLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setEncodedStringList",
        "setDeprecatedStringList",
        "",
        "(Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clear",
        "allowList",
        "(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAll",
        "",
        "",
        "getInt",
        "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBool",
        "getDouble",
        "getString",
        "getStringList",
        "Lio/flutter/plugins/sharedpreferences/StringListResult;",
        "getPlatformEncodedStringList",
        "getKeys",
        "getPrefs",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readAllKeys",
        "",
        "Landroidx/datastore/preferences/core/Preferences$Key;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getValueByKey",
        "(Landroidx/datastore/preferences/core/Preferences$Key;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shared_preferences_android_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private backend:Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;

.field private final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private context:Landroid/content/Context;

.field private legacyPlugin:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

.field private listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism$default(Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 50
    new-instance v0, Lio/flutter/plugins/sharedpreferences/ListEncoder;

    invoke-direct {v0}, Lio/flutter/plugins/sharedpreferences/ListEncoder;-><init>()V

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    iput-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    .line 44
    return-void
.end method

.method public constructor <init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V
    .locals 1
    .param p1, "listEncoder"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    const-string v0, "listEncoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;-><init>()V

    .line 54
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    .line 55
    return-void
.end method

.method public static final synthetic access$dataStoreSetString(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->dataStoreSetString(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    .line 44
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getListEncoder$p(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    .line 44
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    return-object v0
.end method

.method public static final synthetic access$getPrefs(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    .param p1, "allowList"    # Ljava/util/List;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 44
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->getPrefs(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getValueByKey(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Landroidx/datastore/preferences/core/Preferences$Key;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    .param p1, "key"    # Landroidx/datastore/preferences/core/Preferences$Key;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 44
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->getValueByKey(Landroidx/datastore/preferences/core/Preferences$Key;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readAllKeys(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 44
    invoke-direct {p0, p1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->readAllKeys(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final dataStoreSetString(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    .line 103
    .local v0, "stringKey":Landroidx/datastore/preferences/core/Preferences$Key;
    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-static {v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->getSharedPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v1

    new-instance v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$dataStoreSetString$2;

    invoke-direct {v3, v0, p2, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$dataStoreSetString$2;-><init>(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3, p3}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 104
    return-object v1
.end method

.method private final getPrefs(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .param p1, "allowList"    # Ljava/util/List;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;

    iget v3, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;

    invoke-direct {v2, v0, v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Lkotlin/coroutines/Continuation;)V

    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 256
    iget v5, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local p0    # "this":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local p0    # "this":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    :pswitch_0
    iget v5, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->I$1:I

    .local v5, "$i$a$-forEach-SharedPreferencesPlugin$getPrefs$2":I
    iget v6, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->I$0:I

    .local v6, "$i$f$forEach":I
    iget-object v7, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$7:Ljava/lang/Object;

    check-cast v7, Landroidx/datastore/preferences/core/Preferences$Key;

    .local v7, "key":Landroidx/datastore/preferences/core/Preferences$Key;
    iget-object v8, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$6:Ljava/lang/Object;

    .local v8, "element$iv":Ljava/lang/Object;
    iget-object v9, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$5:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v11, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/Set;

    .local v11, "keys":Ljava/util/Set;
    iget-object v12, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    .local v12, "filteredMap":Ljava/util/Map;
    iget-object v13, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/util/Set;

    .local v13, "allowSet":Ljava/util/Set;
    iget-object v14, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .end local p1    # "allowList":Ljava/util/List;
    .local v14, "allowList":Ljava/util/List;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v15, v5

    move-object v5, v0

    move-object v0, v3

    goto/16 :goto_4

    .end local v5    # "$i$a$-forEach-SharedPreferencesPlugin$getPrefs$2":I
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "key":Landroidx/datastore/preferences/core/Preferences$Key;
    .end local v8    # "element$iv":Ljava/lang/Object;
    .end local v10    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v11    # "keys":Ljava/util/Set;
    .end local v12    # "filteredMap":Ljava/util/Map;
    .end local v13    # "allowSet":Ljava/util/Set;
    .end local v14    # "allowList":Ljava/util/List;
    .restart local p1    # "allowList":Ljava/util/List;
    :pswitch_1
    iget-object v5, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .local v5, "filteredMap":Ljava/util/Map;
    iget-object v6, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    .local v6, "allowSet":Ljava/util/Set;
    iget-object v7, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .end local p1    # "allowList":Ljava/util/List;
    .local v7, "allowList":Ljava/util/List;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v3

    goto :goto_2

    .end local v5    # "filteredMap":Ljava/util/Map;
    .end local v6    # "allowSet":Ljava/util/Set;
    .end local v7    # "allowList":Ljava/util/List;
    .restart local p1    # "allowList":Ljava/util/List;
    :pswitch_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 257
    if-eqz p1, :cond_1

    move-object/from16 v5, p1

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move-object v6, v5

    .line 258
    .restart local v6    # "allowSet":Ljava/util/Set;
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .line 260
    .restart local v5    # "filteredMap":Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->label:I

    invoke-direct {v0, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->readAllKeys(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_2

    .line 256
    return-object v4

    .line 260
    :cond_2
    move-object v8, v7

    move-object/from16 v7, p1

    .line 256
    .end local p1    # "allowList":Ljava/util/List;
    .restart local v7    # "allowList":Ljava/util/List;
    :goto_2
    check-cast v8, Ljava/util/Set;

    .line 261
    .local v8, "keys":Ljava/util/Set;
    if-eqz v8, :cond_7

    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 555
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move v6, v10

    move-object v5, v0

    move-object v10, v9

    move-object v9, v11

    move-object v11, v8

    .end local v7    # "allowList":Ljava/util/List;
    .end local v8    # "keys":Ljava/util/Set;
    .end local v9    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local p0    # "this":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    .local v5, "this":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    .local v6, "$i$f$forEach":I
    .local v10, "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v11    # "keys":Ljava/util/Set;
    .restart local v12    # "filteredMap":Ljava/util/Map;
    .restart local v13    # "allowSet":Ljava/util/Set;
    .restart local v14    # "allowList":Ljava/util/List;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v7, v8

    check-cast v7, Landroidx/datastore/preferences/core/Preferences$Key;

    .local v7, "key":Landroidx/datastore/preferences/core/Preferences$Key;
    const/4 v15, 0x0

    .line 262
    .local v15, "$i$a$-forEach-SharedPreferencesPlugin$getPrefs$2":I
    nop

    .restart local p0    # "this":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$2:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$3:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$4:Ljava/lang/Object;

    iput-object v9, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$5:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$6:Ljava/lang/Object;

    iput-object v7, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->L$7:Ljava/lang/Object;

    iput v6, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->I$0:I

    iput v15, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->I$1:I

    const/4 v0, 0x2

    iput v0, v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->label:I

    invoke-direct {v5, v7, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->getValueByKey(Landroidx/datastore/preferences/core/Preferences$Key;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_3

    .line 256
    .end local p0    # "this":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    return-object v4

    .line 262
    :cond_3
    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    .line 256
    .end local v3    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_4
    nop

    .line 263
    .local v3, "value":Ljava/lang/Object;
    move-object/from16 p1, v0

    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    invoke-virtual {v7}, Landroidx/datastore/preferences/core/Preferences$Key;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v13}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->preferencesFilter(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, v5, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    invoke-static {v3, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->transformPref(Ljava/lang/Object;Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    .local v0, "transformedValue":Ljava/lang/Object;
    if-eqz v0, :cond_4

    .line 266
    move-object/from16 p2, v1

    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    invoke-virtual {v7}, Landroidx/datastore/preferences/core/Preferences$Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 265
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_4
    move-object/from16 p2, v1

    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    goto :goto_5

    .line 263
    .end local v0    # "transformedValue":Ljava/lang/Object;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_5
    move-object/from16 p2, v1

    .line 269
    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_5
    nop

    .line 555
    .end local v3    # "value":Ljava/lang/Object;
    .end local v7    # "key":Landroidx/datastore/preferences/core/Preferences$Key;
    .end local v8    # "element$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-forEach-SharedPreferencesPlugin$getPrefs$2":I
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p2

    goto :goto_3

    .line 556
    .end local p1    # "$result":Ljava/lang/Object;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$result":Ljava/lang/Object;
    :cond_6
    move-object v0, v5

    move-object v8, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    .end local v6    # "$i$f$forEach":I
    .end local v10    # "$this$forEach$iv":Ljava/lang/Iterable;
    goto :goto_6

    .line 261
    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v11    # "keys":Ljava/util/Set;
    .end local v12    # "filteredMap":Ljava/util/Map;
    .end local v13    # "allowSet":Ljava/util/Set;
    .end local v14    # "allowList":Ljava/util/List;
    .local v5, "filteredMap":Ljava/util/Map;
    .local v6, "allowSet":Ljava/util/Set;
    .local v7, "allowList":Ljava/util/List;
    .local v8, "keys":Ljava/util/Set;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_7
    move-object/from16 v0, p0

    .line 270
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "this":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;
    .restart local v1    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_6
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getValueByKey(Landroidx/datastore/preferences/core/Preferences$Key;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Landroidx/datastore/preferences/core/Preferences$Key;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "*>;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->getSharedPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .local v0, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 562
    .local v1, "$i$f$map":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 563
    .local v3, "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 564
    .local v4, "$i$f$unsafeFlow":I
    new-instance v5, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getValueByKey$$inlined$map$1;

    invoke-direct {v5, v2, p1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getValueByKey$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/datastore/preferences/core/Preferences$Key;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 565
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 566
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 279
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    nop

    .line 280
    .local v5, "value":Lkotlinx/coroutines/flow/Flow;
    invoke-static {v5, p2}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final readAllKeys(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "+",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "*>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->getSharedPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .local v0, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 557
    .local v1, "$i$f$map":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 558
    .local v3, "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 559
    .local v4, "$i$f$unsafeFlow":I
    new-instance v5, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$readAllKeys$$inlined$map$1;

    invoke-direct {v5, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$readAllKeys$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 560
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 561
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 274
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    nop

    .line 275
    .local v5, "keys":Lkotlinx/coroutines/flow/Flow;
    invoke-static {v5, p1}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final setUp(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->context:Landroid/content/Context;

    .line 59
    nop

    .line 60
    :try_start_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    invoke-direct {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;-><init>()V

    move-object v1, p0

    check-cast v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    const-string v2, "data_store"

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->register(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    .line 61
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    invoke-direct {v0, p1, v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;-><init>(Landroid/content/Context;Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V

    iput-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backend:Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Received exception while setting up SharedPreferencesPlugin"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "SharedPreferencesPlugin"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public clear(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "allowList"    # Ljava/util/List;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$clear$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$clear$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 160
    return-object v0
.end method

.method public getAll(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "allowList"    # Ljava/util/List;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getAll$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getAll$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBool(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getBool$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getBool$2;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method public getDouble(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$2;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method public getInt(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getInt$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getInt$2;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    return-object v0
.end method

.method public getKeys(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "allowList"    # Ljava/util/List;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getKeys$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getKeys$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformEncodedStringList(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPlatformEncodedStringList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPlatformEncodedStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    return-object v0
.end method

.method public getString(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$2;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    return-object v0
.end method

.method public getStringList(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/flutter/plugins/sharedpreferences/StringListResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getStringList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    return-object v0
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->setUp(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

    invoke-direct {v0}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;-><init>()V

    .line 554
    move-object v1, v0

    .local v1, "it":Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;
    const/4 v2, 0x0

    .line 69
    .local v2, "$i$a$-also-SharedPreferencesPlugin$onAttachedToEngine$1":I
    invoke-virtual {v1, p1}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    .end local v1    # "it":Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;
    .end local v2    # "$i$a$-also-SharedPreferencesPlugin$onAttachedToEngine$1":I
    iput-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->legacyPlugin:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

    .line 70
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    invoke-direct {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;-><init>()V

    const-string v1, "data_store"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->register(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    .line 74
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backend:Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->tearDown()V

    .line 75
    :cond_0
    iput-object v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backend:Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;

    .line 76
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->legacyPlugin:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    .line 77
    :cond_1
    iput-object v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->legacyPlugin:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

    .line 78
    return-void
.end method

.method public setBool(Ljava/lang/String;ZLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setBool$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setBool$2;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 90
    return-object v0
.end method

.method public setDeprecatedStringList(Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/List;
    .param p3, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This is just for testing, use `setEncodedStringList`"
    .end annotation

    .line 142
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setDeprecatedStringList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setDeprecatedStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 146
    return-object v0
.end method

.method public setDouble(Ljava/lang/String;DLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setDouble$2;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p1

    move-wide v4, p2

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":D
    .local v2, "key":Ljava/lang/String;
    .local v4, "value":D
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setDouble$2;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;DLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    return-object p1
.end method

.method public setEncodedStringList(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 133
    return-object v0
.end method

.method public setInt(Ljava/lang/String;JLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$2;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p1

    move-wide v4, p2

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":J
    .local v2, "key":Ljava/lang/String;
    .local v4, "value":J
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$2;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;JLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    return-object p1
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setString$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setString$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 99
    return-object v0
.end method
