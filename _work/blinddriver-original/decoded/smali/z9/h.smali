.class public final Lz9/h;
.super Lu9/p;
.source "SourceFile"

# interfaces
.implements Lu9/y;


# static fields
.field public static final synthetic s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final synthetic n:Lu9/y;

.field public final o:Lu9/p;

.field public final p:I

.field public final q:Lz9/k;

.field public final r:Ljava/lang/Object;

.field private volatile synthetic runningWorkers$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lz9/h;

    const-string v1, "runningWorkers$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lz9/h;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lu9/p;I)V
    .locals 1

    invoke-direct {p0}, Lu9/p;-><init>()V

    instance-of v0, p1, Lu9/y;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lu9/y;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lu9/x;->a:Lu9/y;

    :cond_1
    iput-object v0, p0, Lz9/h;->n:Lu9/y;

    iput-object p1, p0, Lz9/h;->o:Lu9/p;

    iput p2, p0, Lz9/h;->p:I

    new-instance p1, Lz9/k;

    invoke-direct {p1}, Lz9/k;-><init>()V

    iput-object p1, p0, Lz9/h;->q:Lz9/k;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz9/h;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final C(JLu9/q1;Ly8/h;)Lu9/g0;
    .locals 0

    iget-object p0, p0, Lz9/h;->n:Lu9/y;

    invoke-interface {p0, p1, p2, p3, p4}, Lu9/y;->C(JLu9/q1;Ly8/h;)Lu9/g0;

    move-result-object p0

    return-object p0
.end method

.method public final J(JLu9/g;)V
    .locals 0

    iget-object p0, p0, Lz9/h;->n:Lu9/y;

    invoke-interface {p0, p1, p2, p3}, Lu9/y;->J(JLu9/g;)V

    return-void
.end method

.method public final R(Ly8/h;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Lz9/h;->q:Lz9/k;

    invoke-virtual {p1, p2}, Lz9/k;->a(Ljava/lang/Runnable;)Z

    sget-object p1, Lz9/h;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p2

    iget v0, p0, Lz9/h;->p:I

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lz9/h;->W()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lz9/h;->V()Ljava/lang/Runnable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lf5/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0, p2}, Lf5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lz9/h;->o:Lu9/p;

    invoke-static {p2, p0, v0}, Lz9/b;->i(Lu9/p;Ly8/h;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final S(Ly8/h;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Lz9/h;->q:Lz9/k;

    invoke-virtual {p1, p2}, Lz9/k;->a(Ljava/lang/Runnable;)Z

    sget-object p1, Lz9/h;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p2

    iget v0, p0, Lz9/h;->p:I

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lz9/h;->W()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lz9/h;->V()Ljava/lang/Runnable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lf5/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0, p2}, Lf5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lz9/h;->o:Lu9/p;

    invoke-virtual {p2, p0, v0}, Lu9/p;->S(Ly8/h;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final V()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, Lz9/h;->q:Lz9/k;

    invoke-virtual {v0}, Lz9/k;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lz9/h;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz9/h;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Lz9/h;->q:Lz9/k;

    invoke-virtual {v2}, Lz9/k;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method public final W()Z
    .locals 4

    iget-object v0, p0, Lz9/h;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz9/h;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lz9/h;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lz9/h;->o:Lu9/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".limitedParallelism("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lz9/h;->p:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
