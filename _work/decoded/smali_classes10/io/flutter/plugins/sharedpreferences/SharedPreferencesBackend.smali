.class public final Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;
.super Ljava/lang/Object;
.source "SharedPreferencesPlugin.kt"

# interfaces
.implements Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J&\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0015J&\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0017J&\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u001aJ&\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u001c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u001dJ&\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0017J,\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120 2\u0006\u0010\u000e\u001a\u00020\u000fH\u0097@\u00a2\u0006\u0002\u0010!J&\u0010\"\u001a\u00020\u000b2\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010 2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010$J2\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\'0&2\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010 2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010$J \u0010(\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010)J \u0010*\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010)J \u0010+\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010)J \u0010,\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010)J \u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010)J&\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010 2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010)J,\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00120 2\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010 2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010$R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;",
        "context",
        "Landroid/content/Context;",
        "listEncoder",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;",
        "<init>",
        "(Landroid/content/Context;Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V",
        "backgroundDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "tearDown",
        "",
        "createSharedPreferences",
        "Landroid/content/SharedPreferences;",
        "options",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
        "setBool",
        "key",
        "",
        "value",
        "",
        "(Ljava/lang/String;ZLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setString",
        "(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private context:Landroid/content/Context;

.field private listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listEncoder"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listEncoder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->context:Landroid/content/Context;

    .line 286
    iput-object p2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    .line 288
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism$default(Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 290
    nop

    .line 291
    nop

    .line 292
    :try_start_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    invoke-direct {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;-><init>()V

    move-object v1, p0

    check-cast v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    const-string v2, "shared_preferences"

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->register(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Received exception while setting up SharedPreferencesBackend"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "SharedPreferencesPlugin"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    nop

    .line 284
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 284
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 286
    new-instance p2, Lio/flutter/plugins/sharedpreferences/ListEncoder;

    invoke-direct {p2}, Lio/flutter/plugins/sharedpreferences/ListEncoder;-><init>()V

    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    .line 284
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;-><init>(Landroid/content/Context;Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)V

    .line 287
    return-void
.end method

.method public static final synthetic access$createSharedPreferences(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;
    .param p1, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    .line 284
    invoke-direct {p0, p1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->createSharedPreferences(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getListEncoder$p(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;
    .locals 1
    .param p0, "$this"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;

    .line 284
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->listEncoder:Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    return-object v0
.end method

.method private final createSharedPreferences(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    .line 303
    invoke-virtual {p1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    nop

    .line 306
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 303
    :goto_0
    return-object v0
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

    .line 370
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$clear$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$clear$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 384
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

    .line 391
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getAll$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getAll$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 401
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

    .line 421
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getBool$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getBool$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 428
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

    .line 432
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getDouble$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getDouble$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 439
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

    .line 405
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getInt$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getInt$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 417
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

    .line 496
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getKeys$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getKeys$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 502
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

    .line 479
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getPlatformEncodedStringList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getPlatformEncodedStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 489
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

    .line 443
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getString$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getString$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 450
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

    .line 457
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getStringList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$getStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 473
    return-object v0
.end method

.method public setBool(Ljava/lang/String;ZLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    .line 316
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setBool$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v3, p3

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Z
    .end local p3    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v3, "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v4, "key":Ljava/lang/String;
    .local v5, "value":Z
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setBool$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 318
    return-object p1
.end method

.method public setDeprecatedStringList(Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    .line 363
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/util/List;
    .end local p3    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v3, "value":Ljava/util/List;
    .local v4, "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v5, "key":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 366
    return-object p1
.end method

.method public setDouble(Ljava/lang/String;DLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    .line 342
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDouble$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v3, p4

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":D
    .end local p4    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v3, "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v4, "key":Ljava/lang/String;
    .local v5, "value":D
    invoke-direct/range {v1 .. v7}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDouble$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;DLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 344
    return-object p1
.end method

.method public setEncodedStringList(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    .line 352
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setEncodedStringList$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v3, "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v4, "key":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setEncodedStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 354
    return-object p1
.end method

.method public setInt(Ljava/lang/String;JLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    .line 332
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setInt$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v3, p4

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":J
    .end local p4    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v3, "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v4, "key":Ljava/lang/String;
    .local v5, "value":J
    invoke-direct/range {v1 .. v7}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setInt$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 334
    return-object p1
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    .line 326
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setString$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v3, "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v4, "key":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setString$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 328
    return-object p1
.end method

.method public final tearDown()V
    .locals 3

    .line 299
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    invoke-direct {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;-><init>()V

    const/4 v1, 0x0

    const-string v2, "shared_preferences"

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->register(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    .line 300
    return-void
.end method
