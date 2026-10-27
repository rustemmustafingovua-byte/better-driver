.class final Lio/sentry/android/replay/WindowManagerSpy$windowManagerClass$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Windows.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/WindowManagerSpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/Class;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/sentry/android/replay/WindowManagerSpy$windowManagerClass$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/WindowManagerSpy$windowManagerClass$2;

    invoke-direct {v0}, Lio/sentry/android/replay/WindowManagerSpy$windowManagerClass$2;-><init>()V

    sput-object v0, Lio/sentry/android/replay/WindowManagerSpy$windowManagerClass$2;->INSTANCE:Lio/sentry/android/replay/WindowManagerSpy$windowManagerClass$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 174
    const-string v0, "android.view.WindowManagerGlobal"

    .line 175
    .local v0, "className":Ljava/lang/String;
    nop

    .line 176
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v1

    .line 178
    .local v1, "ignored":Ljava/lang/Throwable;
    const-string v2, "WindowManagerSpy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/4 v2, 0x0

    move-object v1, v2

    .line 180
    .end local v1    # "ignored":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lio/sentry/android/replay/WindowManagerSpy$windowManagerClass$2;->invoke()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
