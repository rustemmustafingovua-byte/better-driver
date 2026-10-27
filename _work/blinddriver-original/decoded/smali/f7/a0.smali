.class public final Lf7/a0;
.super Lf7/t;
.source "SourceFile"


# instance fields
.field public final b:Lu7/d;

.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILu7/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf7/t;-><init>(I)V

    iput-object p2, p0, Lf7/a0;->b:Lu7/d;

    return-void
.end method

.method public constructor <init>(Lf7/g;Lu7/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf7/a0;->c:I

    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p2}, Lf7/a0;-><init>(ILu7/d;)V

    iput-object p1, p0, Lf7/a0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf7/x;Lu7/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf7/a0;->c:I

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0, p2}, Lf7/a0;-><init>(ILu7/d;)V

    iput-object p1, p0, Lf7/a0;->d:Ljava/lang/Object;

    return-void
.end method

.method private final bridge synthetic i(Lg5/c;Z)V
    .locals 0

    return-void
.end method

.method private final bridge synthetic j(Lg5/c;Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Lf7/o;)Z
    .locals 1

    iget v0, p0, Lf7/a0;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lf7/o;->h:Ljava/util/HashMap;

    iget-object p0, p0, Lf7/a0;->d:Ljava/lang/Object;

    check-cast p0, Lf7/g;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf7/x;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lf7/a0;->d:Ljava/lang/Object;

    check-cast p0, Lf7/x;

    iget-object p0, p0, Lf7/x;->a:Ld1/c0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lf7/o;)[Ld7/c;
    .locals 1

    iget v0, p0, Lf7/a0;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lf7/o;->h:Ljava/util/HashMap;

    iget-object p0, p0, Lf7/a0;->d:Ljava/lang/Object;

    check-cast p0, Lf7/g;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf7/x;

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lf7/a0;->d:Ljava/lang/Object;

    check-cast p0, Lf7/x;

    iget-object p0, p0, Lf7/x;->a:Ld1/c0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Le7/d;

    invoke-direct {v0, p1}, Le7/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p0, p0, Lf7/a0;->b:Lu7/d;

    invoke-virtual {p0, v0}, Lu7/d;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lf7/a0;->b:Lu7/d;

    invoke-virtual {p0, p1}, Lu7/d;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final e(Lf7/o;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lf7/a0;->h(Lf7/o;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lf7/a0;->b:Lu7/d;

    invoke-virtual {p0, p1}, Lu7/d;->a(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lf7/t;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf7/a0;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lf7/t;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf7/a0;->c(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public final bridge synthetic f(Lg5/c;Z)V
    .locals 0

    iget p0, p0, Lf7/a0;->c:I

    return-void
.end method

.method public final h(Lf7/o;)V
    .locals 3

    iget v0, p0, Lf7/a0;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lf7/o;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lf7/a0;->d:Ljava/lang/Object;

    check-cast v1, Lf7/g;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf7/x;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lf7/o;->d:Le7/c;

    iget-object p0, p0, Lf7/a0;->b:Lu7/d;

    iget-object v1, v0, Lf7/x;->b:Lg5/e;

    iget-object v1, v1, Lg5/e;->n:Ljava/lang/Object;

    check-cast v1, Lf6/v;

    iget-object v1, v1, Lf6/v;->c:Ljava/lang/Object;

    check-cast v1, Lmb/q;

    invoke-virtual {v1, p1, p0}, Lmb/q;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lf7/x;->a:Ld1/c0;

    iget-object p0, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast p0, Lf7/h;

    const/4 p1, 0x0

    iput-object p1, p0, Lf7/h;->a:Lf7/g;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf7/a0;->b:Lu7/d;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lu7/d;->a:Lu7/i;

    iget-object v0, p0, Lu7/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu7/i;->c:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lu7/i;->c:Z

    iput-object p1, p0, Lu7/i;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lu7/i;->b:Lad/a2;

    invoke-virtual {p1, p0}, Lad/a2;->r(Lu7/i;)V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lf7/a0;->d:Ljava/lang/Object;

    check-cast v0, Lf7/x;

    iget-object v0, v0, Lf7/x;->a:Ld1/c0;

    iget-object v1, p1, Lf7/o;->d:Le7/c;

    iget-object v2, p0, Lf7/a0;->b:Lu7/d;

    iget-object v0, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v0, Lf6/v;

    iget-object v0, v0, Lf6/v;->b:Ljava/lang/Object;

    check-cast v0, Lmb/q;

    invoke-virtual {v0, v1, v2}, Lmb/q;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lf7/a0;->d:Ljava/lang/Object;

    check-cast v0, Lf7/x;

    iget-object v0, v0, Lf7/x;->a:Ld1/c0;

    iget-object v0, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v0, Lf7/h;

    iget-object v0, v0, Lf7/h;->a:Lf7/g;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lf7/o;->h:Ljava/util/HashMap;

    iget-object p0, p0, Lf7/a0;->d:Ljava/lang/Object;

    check-cast p0, Lf7/x;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
