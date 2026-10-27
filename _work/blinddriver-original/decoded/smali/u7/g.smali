.class public final Lu7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/h;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lb0/l1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lu7/g;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu7/g;->c:Ljava/lang/Object;

    iput-object p1, p0, Lu7/g;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lu7/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lg5/l;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu7/g;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu7/g;->c:Ljava/lang/Object;

    iput-object p1, p0, Lu7/g;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lu7/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lu7/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lu7/g;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu7/g;->c:Ljava/lang/Object;

    iput-object p1, p0, Lu7/g;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lu7/g;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lu7/i;)V
    .locals 3

    iget v0, p0, Lu7/g;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lu7/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu7/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lu7/g;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lf5/a;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, p1}, Lf5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lu7/i;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lu7/i;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lu7/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lu7/g;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lf5/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0, p1}, Lf5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lu7/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lu7/g;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lf5/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, p1}, Lf5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
