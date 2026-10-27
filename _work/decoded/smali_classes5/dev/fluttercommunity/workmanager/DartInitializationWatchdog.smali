.class public final Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;
.super Ljava/lang/Object;
.source "DartInitializationWatchdog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u000f\u001a\u00020\u0008J\u0006\u0010\u0010\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;",
        "",
        "handler",
        "Landroid/os/Handler;",
        "timeoutMillis",
        "",
        "timeoutAction",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroid/os/Handler;JLkotlin/jvm/functions/Function0;)V",
        "armed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "timeoutRunnable",
        "Ljava/lang/Runnable;",
        "arm",
        "disarm",
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


# instance fields
.field private final armed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final handler:Landroid/os/Handler;

.field private final timeoutAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutMillis:J

.field private final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$GUNHTjic9CKeTKgfaQI5jFKER2c(Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;)V
    .locals 0

    invoke-static {p0}, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->timeoutRunnable$lambda$0(Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;JLkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J
    .param p4, "timeoutAction"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeoutAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->handler:Landroid/os/Handler;

    .line 21
    iput-wide p2, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->timeoutMillis:J

    .line 22
    iput-object p4, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->timeoutAction:Lkotlin/jvm/functions/Function0;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->armed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog$$ExternalSyntheticLambda0;-><init>(Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;)V

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->timeoutRunnable:Ljava/lang/Runnable;

    .line 19
    return-void
.end method

.method private static final timeoutRunnable$lambda$0(Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;)V
    .locals 3
    .param p0, "this$0"    # Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;

    .line 27
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->armed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->timeoutAction:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final arm()V
    .locals 4

    .line 34
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->armed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->timeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->timeoutMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :cond_0
    return-void
.end method

.method public final disarm()V
    .locals 3

    .line 41
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->armed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    :cond_0
    return-void
.end method
