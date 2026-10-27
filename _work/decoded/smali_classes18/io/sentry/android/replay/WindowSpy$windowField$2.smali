.class final Lio/sentry/android/replay/WindowSpy$windowField$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Windows.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/WindowSpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindows.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Windows.kt\nio/sentry/android/replay/WindowSpy$windowField$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Field;",
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
.field public static final INSTANCE:Lio/sentry/android/replay/WindowSpy$windowField$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/WindowSpy$windowField$2;

    invoke-direct {v0}, Lio/sentry/android/replay/WindowSpy$windowField$2;-><init>()V

    sput-object v0, Lio/sentry/android/replay/WindowSpy$windowField$2;->INSTANCE:Lio/sentry/android/replay/WindowSpy$windowField$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lio/sentry/android/replay/WindowSpy$windowField$2;->invoke()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Field;
    .locals 7

    .line 72
    sget-object v0, Lio/sentry/android/replay/WindowSpy;->INSTANCE:Lio/sentry/android/replay/WindowSpy;

    invoke-static {v0}, Lio/sentry/android/replay/WindowSpy;->access$getDecorViewClass(Lio/sentry/android/replay/WindowSpy;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .local v0, "decorViewClass":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$a$-let-WindowSpy$windowField$2$1":I
    nop

    .line 74
    :try_start_0
    const-string v3, "mWindow"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v4, v3

    .line 210
    .local v4, "$this$invoke_u24lambda_u240_u240":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .line 74
    .local v5, "$i$a$-apply-WindowSpy$windowField$2$1$1":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .end local v4    # "$this$invoke_u24lambda_u240_u240":Ljava/lang/reflect/Field;
    .end local v5    # "$i$a$-apply-WindowSpy$windowField$2$1$1":I
    goto :goto_0

    .line 75
    :catch_0
    move-exception v3

    .line 77
    .local v3, "ignored":Ljava/lang/NoSuchFieldException;
    nop

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected exception retrieving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#mWindow on API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    .line 76
    const-string v6, "WindowSpy"

    invoke-static {v6, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    nop

    .line 82
    .end local v3    # "ignored":Ljava/lang/NoSuchFieldException;
    :goto_0
    nop

    .line 72
    .end local v0    # "decorViewClass":Ljava/lang/Class;
    .end local v2    # "$i$a$-let-WindowSpy$windowField$2$1":I
    nop

    .line 83
    :cond_0
    return-object v1
.end method
