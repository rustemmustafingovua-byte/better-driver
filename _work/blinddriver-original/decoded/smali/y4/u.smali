.class public final synthetic Ly4/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ly4/u;->l:I

    iput-object p2, p0, Ly4/u;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Ly4/u;->l:I

    iget-object p0, p0, Ly4/u;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lh5/d;

    iget-object p0, p0, Lh5/d;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->l()Lg5/e;

    move-result-object v0

    const-string v1, "next_alarm_manager_id"

    invoke-virtual {v0, v1}, Lg5/e;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->l()Lg5/e;

    move-result-object p0

    new-instance v3, Lg5/d;

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lg5/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, v3}, Lg5/e;->n(Lg5/d;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ly4/c0;

    iget-object v0, p0, Ly4/c0;->i:Lg5/q;

    iget-object p0, p0, Ly4/c0;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lg5/q;->g(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lg5/q;->n(ILjava/lang/String;)V

    iget-object v1, v0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v3, v0, Lg5/q;->i:Lg5/h;

    invoke-virtual {v3}, Lk4/p;->a()Lr4/i;

    move-result-object v4

    invoke-interface {v4, v2, p0}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lr4/i;->b()I

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3, v4}, Lk4/p;->f(Lr4/i;)V

    const/16 v1, -0x100

    invoke-virtual {v0, v1, p0}, Lg5/q;->o(ILjava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {v3, v4}, Lk4/p;->f(Lr4/i;)V

    throw p0

    :cond_2
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ly4/c0;

    iget-object v0, p0, Ly4/c0;->a:Lg5/o;

    iget v1, v0, Lg5/o;->b:I

    iget-object v2, v0, Lg5/o;->c:Ljava/lang/String;

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    sget-object p0, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Lg5/o;->c()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Lg5/o;->b:I

    if-ne v1, v3, :cond_5

    iget v1, v0, Lg5/o;->k:I

    if-lez v1, :cond_5

    :cond_4
    iget-object p0, p0, Ly4/c0;->f:Lx4/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lg5/o;->a()J

    move-result-wide v0

    cmp-long p0, v3, v0

    if-gez p0, :cond_5

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    sget-object v0, Ly4/d0;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Delaying execution for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because it is being executed before schedule."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
