.class public final Li5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh5/h;

.field public final b:Lu9/p;

.field public final c:Landroid/os/Handler;

.field public final d:Lf7/l;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Li5/a;->c:Landroid/os/Handler;

    new-instance v0, Lf7/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lf7/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Li5/a;->d:Lf7/l;

    new-instance v0, Lh5/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lh5/h;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v0, p0, Li5/a;->a:Lh5/h;

    invoke-static {v0}, Lu9/v;->k(Ljava/util/concurrent/Executor;)Lu9/p;

    move-result-object p1

    iput-object p1, p0, Li5/a;->b:Lu9/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Li5/a;->a:Lh5/h;

    invoke-virtual {p0, p1}, Lh5/h;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
