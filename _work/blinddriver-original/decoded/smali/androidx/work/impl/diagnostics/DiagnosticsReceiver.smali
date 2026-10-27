.class public Landroidx/work/impl/diagnostics/DiagnosticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsRcvr"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    const-string p2, "Requesting diagnostics"

    sget-object v1, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p0, "context"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ly4/q;->M(Landroid/content/Context;)Ly4/q;

    move-result-object v3

    const-class p0, Landroidx/work/impl/workers/DiagnosticsWorker;

    new-instance p1, Lx4/u;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lx4/u;-><init>(ILjava/lang/Class;)V

    invoke-virtual {p1}, Lk4/p;->b()Lx4/z;

    move-result-object p0

    check-cast p0, Lx4/v;

    invoke-static {p0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance v2, Ly4/n;

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Ly4/n;-><init>(Ly4/q;Ljava/lang/String;ILjava/util/List;I)V

    invoke-virtual {v2}, Ly4/n;->w()Lx4/j;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enqueue needs at least one WorkRequest."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    const-string p2, "WorkManager is not initialized"

    invoke-virtual {p1, v1, p2, p0}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
