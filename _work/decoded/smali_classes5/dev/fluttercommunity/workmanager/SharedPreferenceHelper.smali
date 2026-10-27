.class public final Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;
.super Ljava/lang/Object;
.source "SharedPreferenceHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$Companion;,
        Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedPreferenceHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferenceHelper.kt\ndev/fluttercommunity/workmanager/SharedPreferenceHelper\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,57:1\n39#2,12:58\n*S KotlinDebug\n*F\n+ 1 SharedPreferenceHelper.kt\ndev/fluttercommunity/workmanager/SharedPreferenceHelper\n*L\n52#1:58,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u0000 \u00182\u00020\u0001:\u0002\u0017\u0018B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR@\u0010\u000c\u001a4\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00130\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "dispatcherHandleListener",
        "Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;",
        "<init>",
        "(Landroid/content/Context;Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;)V",
        "preferences",
        "Landroid/content/SharedPreferences;",
        "getPreferences",
        "()Landroid/content/SharedPreferences;",
        "preferenceListener",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "sharedPreferences",
        "",
        "key",
        "",
        "saveCallbackDispatcherHandleKey",
        "callbackHandle",
        "",
        "DispatcherHandleListener",
        "Companion",
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
.field private static final CALLBACK_DISPATCHER_HANDLE_KEY:Ljava/lang/String; = "dev.fluttercommunity.workmanager.CALLBACK_DISPATCHER_HANDLE_KEY"

.field public static final Companion:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$Companion;

.field private static final SHARED_PREFS_FILE_NAME:Ljava/lang/String; = "flutter_workmanager_plugin"


# instance fields
.field private final context:Landroid/content/Context;

.field private final dispatcherHandleListener:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;

.field private final preferenceListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7zh_4fANN_WLpZAXtFGWmAtMoYY(Lkotlin/jvm/functions/Function2;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->_init_$lambda$0(Lkotlin/jvm/functions/Function2;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xb2u2kTVKal_jl6BJ9f2jgLXjSQ(Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->preferenceListener$lambda$0(Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->Companion:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dispatcherHandleListener"    # Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcherHandleListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->context:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->dispatcherHandleListener:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;

    .line 33
    new-instance v0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$$ExternalSyntheticLambda0;-><init>(Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;)V

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->preferenceListener:Lkotlin/jvm/functions/Function2;

    .line 41
    nop

    .line 42
    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->preferenceListener:Lkotlin/jvm/functions/Function2;

    new-instance v2, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 45
    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dev.fluttercommunity.workmanager.CALLBACK_DISPATCHER_HANDLE_KEY"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 46
    .local v0, "currentHandle":J
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->dispatcherHandleListener:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;

    invoke-interface {v2, v0, v1}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;->onDispatcherHandleChanged(J)V

    .line 49
    .end local v0    # "currentHandle":J
    :cond_0
    nop

    .line 7
    return-void
.end method

.method private static final _init_$lambda$0(Lkotlin/jvm/functions/Function2;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function2;
    .param p1, "p0"    # Landroid/content/SharedPreferences;
    .param p2, "p1"    # Ljava/lang/String;

    .line 42
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 30
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->context:Landroid/content/Context;

    const-string v1, "flutter_workmanager_plugin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final preferenceListener$lambda$0(Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4
    .param p0, "this$0"    # Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string v0, "dev.fluttercommunity.workmanager.CALLBACK_DISPATCHER_HANDLE_KEY"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->dispatcherHandleListener:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;

    .line 36
    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 35
    invoke-interface {v1, v2, v3}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;->onDispatcherHandleChanged(J)V

    .line 39
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final saveCallbackDispatcherHandleKey(J)V
    .locals 7
    .param p1, "callbackHandle"    # J

    .line 52
    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    .local v0, "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    nop

    .line 59
    const/4 v1, 0x0

    .line 58
    .local v1, "commit$iv":Z
    const/4 v2, 0x0

    .line 62
    .local v2, "$i$f$edit":I
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 63
    .local v3, "editor$iv":Landroid/content/SharedPreferences$Editor;
    move-object v4, v3

    .local v4, "$this$saveCallbackDispatcherHandleKey_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 53
    .local v5, "$i$a$-edit$default-SharedPreferenceHelper$saveCallbackDispatcherHandleKey$1":I
    const-string v6, "dev.fluttercommunity.workmanager.CALLBACK_DISPATCHER_HANDLE_KEY"

    invoke-interface {v4, v6, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 54
    nop

    .line 63
    .end local v4    # "$this$saveCallbackDispatcherHandleKey_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "$i$a$-edit$default-SharedPreferenceHelper$saveCallbackDispatcherHandleKey$1":I
    nop

    .line 64
    nop

    .line 67
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    nop

    .line 55
    .end local v0    # "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    .end local v1    # "commit$iv":Z
    .end local v2    # "$i$f$edit":I
    .end local v3    # "editor$iv":Landroid/content/SharedPreferences$Editor;
    return-void
.end method
