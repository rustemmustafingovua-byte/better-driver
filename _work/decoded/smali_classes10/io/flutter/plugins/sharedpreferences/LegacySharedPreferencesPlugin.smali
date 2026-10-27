.class public final Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;
.super Ljava/lang/Object;
.source "LegacySharedPreferencesPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$Companion;,
        Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$ListEncoder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegacySharedPreferencesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacySharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,188:1\n221#2,2:189\n*S KotlinDebug\n*F\n+ 1 LegacySharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin\n*L\n111#1:189,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 22\u00020\u00012\u00020\u0002:\u000212B\u0011\u0008\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015H\u0096@\u00a2\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010\u001bJ\u001e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u001dH\u0096@\u00a2\u0006\u0002\u0010\u001eJ\u001e\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020 H\u0096@\u00a2\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010#J\u001e\u0010$\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010\u001bJ$\u0010%\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170&H\u0097@\u00a2\u0006\u0002\u0010\'J2\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020*0)2\u0006\u0010+\u001a\u00020\u00172\u000e\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010&H\u0096@\u00a2\u0006\u0002\u0010\'J&\u0010-\u001a\u00020\u00152\u0006\u0010+\u001a\u00020\u00172\u000e\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010&H\u0096@\u00a2\u0006\u0002\u0010\'J,\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020*0)2\u0006\u0010+\u001a\u00020\u00172\u000e\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010/H\u0002J\u0018\u00100\u001a\u00020*2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020*H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;",
        "listEncoder",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;",
        "<init>",
        "(Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V",
        "()V",
        "preferences",
        "Landroid/content/SharedPreferences;",
        "backgroundDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "setUp",
        "",
        "context",
        "Landroid/content/Context;",
        "onAttachedToEngine",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "setBool",
        "",
        "key",
        "",
        "value",
        "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setString",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setInt",
        "",
        "(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setDouble",
        "",
        "(Ljava/lang/String;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "remove",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setEncodedStringList",
        "setDeprecatedStringList",
        "",
        "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAll",
        "",
        "",
        "prefix",
        "allowList",
        "clear",
        "getAllPrefs",
        "",
        "transformPref",
        "ListEncoder",
        "Companion",
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


# static fields
.field private static final BIG_INTEGER_PREFIX:Ljava/lang/String; = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy"

.field public static final Companion:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$Companion;


# instance fields
.field private final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->Companion:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    new-instance v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$ListEncoder;

    invoke-direct {v0}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$ListEncoder;-><init>()V

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    invoke-direct {p0, v0}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V
    .locals 4
    .param p1, "listEncoder"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    const-string v0, "listEncoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    .line 33
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism$default(Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 30
    return-void
.end method

.method public static final synthetic access$getAllPrefs(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "allowList"    # Ljava/util/Set;

    .line 27
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->getAllPrefs(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getListEncoder$p(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

    .line 27
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    return-object v0
.end method

.method public static final synthetic access$getPreferences$p(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

    .line 27
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private final getAllPrefs(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .locals 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "allowList"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$getAllPrefs_u24lambda_u240":Ljava/util/Map;
    const/4 v2, 0x0

    .line 111
    .local v2, "$i$a$-buildMap-LegacySharedPreferencesPlugin$getAllPrefs$1":I
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->preferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v3, "preferences"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    const-string v5, "getAll(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v3, "$this$forEach$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 189
    .local v5, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "element$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .local v8, "$i$a$-forEach-LegacySharedPreferencesPlugin$getAllPrefs$1$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 112
    .local v10, "value":Ljava/lang/Object;
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v9, p1, v11, v12, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 113
    if-eqz v10, :cond_2

    .line 114
    if-eqz p2, :cond_1

    invoke-interface {p2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 115
    :cond_1
    invoke-direct {p0, v9, v10}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->transformPref(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_2
    nop

    .line 189
    .end local v8    # "$i$a$-forEach-LegacySharedPreferencesPlugin$getAllPrefs$1$1":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    nop

    .end local v7    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 190
    :cond_3
    nop

    .line 118
    .end local v3    # "$this$forEach$iv":Ljava/util/Map;
    .end local v5    # "$i$f$forEach":I
    nop

    .line 110
    .end local v1    # "$this$getAllPrefs_u24lambda_u240":Ljava/util/Map;
    .end local v2    # "$i$a$-buildMap-LegacySharedPreferencesPlugin$getAllPrefs$1":I
    invoke-static {v0}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final setUp(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    const-string v0, "FlutterSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->preferences:Landroid/content/SharedPreferences;

    .line 39
    nop

    .line 40
    :try_start_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;

    invoke-direct {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;-><init>()V

    move-object v1, p0

    check-cast v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->register$default(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;Ljava/lang/String;ILjava/lang/Object;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Received exception while setting up SharedPreferencesPlugin"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "SharedPreferencesPlugin"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private final transformPref(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 122
    instance-of v0, p2, Ljava/lang/String;

    const-string v1, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 123
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x28

    const-string v5, "substring(...)"

    if-eqz v0, :cond_1

    .line 126
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const-string v6, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu!"

    invoke-static {v0, v6, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    move-object v0, p2

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;->decode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 131
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const-string v6, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy"

    invoke-static {v0, v6, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .local v0, "encoded":Ljava/lang/String;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x24

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 136
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const-string v6, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

    invoke-static {v0, v6, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .local v0, "doubleStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 140
    .end local v0    # "doubleStr":Ljava/lang/String;
    :cond_3
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_5

    .line 145
    move-object v0, p2

    check-cast v0, Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "listValue":Ljava/util/List;
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->preferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_4

    const-string v3, "preferences"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 148
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 149
    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    invoke-interface {v3, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;->encode(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 151
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-object v0

    .line 155
    .end local v0    # "listValue":Ljava/util/List;
    :cond_5
    return-object p2
.end method


# virtual methods
.method public clear(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "allowList"    # Ljava/util/List;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;-><init>(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public getAll(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "allowList"    # Ljava/util/List;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 93
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$getAll$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$getAll$2;-><init>(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->setUp(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;

    invoke-direct {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v1, v2, v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->register$default(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;Ljava/lang/String;ILjava/lang/Object;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;

    .line 52
    return-void
.end method

.method public remove(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$remove$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$remove$2;-><init>(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setBool(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setBool$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setBool$2;-><init>(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecatedStringList(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/List;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Exists for testing purposes only"
    .end annotation

    .line 88
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setDeprecatedStringList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setDeprecatedStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method public setDouble(Ljava/lang/String;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setDouble$2;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move-wide v2, p2

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":D
    .local v2, "value":D
    .local v5, "key":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setDouble$2;-><init>(DLio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 78
    return-object p1
.end method

.method public setEncodedStringList(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setEncodedStringList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setEncodedStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setInt(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setInt$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":J
    .local v3, "key":Ljava/lang/String;
    .local v4, "value":J
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setInt$2;-><init>(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setString$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$setString$2;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    return-object v0
.end method
