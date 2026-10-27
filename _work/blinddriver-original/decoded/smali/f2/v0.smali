.class public final Lf2/v0;
.super Lu9/p;
.source "SourceFile"


# static fields
.field public static final x:Lt8/o;

.field public static final y:Lf2/t0;


# instance fields
.field public final n:Landroid/view/Choreographer;

.field public final o:Landroid/os/Handler;

.field public final p:Ljava/lang/Object;

.field public final q:Lu8/k;

.field public r:Ljava/util/ArrayList;

.field public s:Ljava/util/ArrayList;

.field public t:Z

.field public u:Z

.field public final v:Lf2/u0;

.field public final w:Lf2/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lf2/l0;->r:Lf2/l0;

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lf2/v0;->x:Lt8/o;

    new-instance v0, Lf2/t0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf2/t0;-><init>(I)V

    sput-object v0, Lf2/v0;->y:Lf2/t0;

    return-void
.end method

.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lu9/p;-><init>()V

    iput-object p1, p0, Lf2/v0;->n:Landroid/view/Choreographer;

    iput-object p2, p0, Lf2/v0;->o:Landroid/os/Handler;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf2/v0;->p:Ljava/lang/Object;

    new-instance p2, Lu8/k;

    invoke-direct {p2}, Lu8/k;-><init>()V

    iput-object p2, p0, Lf2/v0;->q:Lu8/k;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lf2/v0;->r:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lf2/v0;->s:Ljava/util/ArrayList;

    new-instance p2, Lf2/u0;

    invoke-direct {p2, p0}, Lf2/u0;-><init>(Lf2/v0;)V

    iput-object p2, p0, Lf2/v0;->v:Lf2/u0;

    new-instance p2, Lf2/x0;

    invoke-direct {p2, p1, p0}, Lf2/x0;-><init>(Landroid/view/Choreographer;Lf2/v0;)V

    iput-object p2, p0, Lf2/v0;->w:Lf2/x0;

    return-void
.end method

.method public static final V(Lf2/v0;)V
    .locals 4

    :cond_0
    iget-object v0, p0, Lf2/v0;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf2/v0;->q:Lu8/k;

    invoke-virtual {v1}, Lu8/k;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lu8/k;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lf2/v0;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lf2/v0;->q:Lu8/k;

    invoke-virtual {v1}, Lu8/k;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lu8/k;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    :goto_2
    check-cast v1, Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    iget-object v0, p0, Lf2/v0;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lf2/v0;->q:Lu8/k;

    invoke-virtual {v1}, Lu8/k;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf2/v0;->t:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    :goto_3
    monitor-exit v0

    if-nez v1, :cond_0

    return-void

    :goto_4
    monitor-exit v0

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final R(Ly8/h;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Lf2/v0;->p:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lf2/v0;->q:Lu8/k;

    invoke-virtual {v0, p2}, Lu8/k;->addLast(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lf2/v0;->t:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lf2/v0;->t:Z

    iget-object v0, p0, Lf2/v0;->o:Landroid/os/Handler;

    iget-object v1, p0, Lf2/v0;->v:Lf2/u0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lf2/v0;->u:Z

    if-nez v0, :cond_0

    iput-boolean p2, p0, Lf2/v0;->u:Z

    iget-object p2, p0, Lf2/v0;->n:Landroid/view/Choreographer;

    iget-object p0, p0, Lf2/v0;->v:Lf2/u0;

    invoke-virtual {p2, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p0
.end method
