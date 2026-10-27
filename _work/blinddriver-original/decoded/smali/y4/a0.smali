.class public final Ly4/a0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Ly4/c0;


# direct methods
.method public synthetic constructor <init>(Ly4/c0;Ly8/c;I)V
    .locals 0

    iput p3, p0, Ly4/a0;->l:I

    iput-object p1, p0, Ly4/a0;->n:Ly4/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p1, p0, Ly4/a0;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ly4/a0;

    iget-object p0, p0, Ly4/a0;->n:Ly4/c0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Ly4/a0;-><init>(Ly4/c0;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Ly4/a0;

    iget-object p0, p0, Ly4/a0;->n:Ly4/c0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Ly4/a0;-><init>(Ly4/c0;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ly4/a0;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Ly4/a0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ly4/a0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ly4/a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ly4/a0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ly4/a0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ly4/a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Ly4/a0;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Ly4/a0;->m:I

    iget-object v2, p0, Ly4/a0;->n:Ly4/c0;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ly4/t; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, v2, Ly4/c0;->m:Lu9/x0;

    new-instance v1, Ly4/a0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v4}, Ly4/a0;-><init>(Ly4/c0;Ly8/c;I)V

    iput v3, p0, Ly4/a0;->m:I

    invoke-static {p1, v1, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_4

    :cond_2
    :goto_0
    check-cast p1, Ly4/y;
    :try_end_1
    .catch Ly4/t; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    sget-object p1, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    const-string v1, "Unexpected error in WorkerWrapper"

    invoke-virtual {v0, p1, v1, p0}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ly4/v;

    invoke-direct {p1}, Ly4/v;-><init>()V

    goto :goto_3

    :catch_1
    new-instance p1, Ly4/v;

    invoke-direct {p1}, Ly4/v;-><init>()V

    goto :goto_3

    :goto_2
    new-instance p1, Ly4/x;

    iget p0, p0, Ly4/t;->l:I

    invoke-direct {p1, p0}, Ly4/x;-><init>(I)V

    :goto_3
    iget-object p0, v2, Ly4/c0;->h:Landroidx/work/impl/WorkDatabase;

    new-instance v0, Ly4/z;

    invoke-direct {v0, p1, v2}, Ly4/z;-><init>(Ly4/y;Ly4/c0;)V

    invoke-virtual {p0, v0}, Landroidx/work/impl/WorkDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    const-string p0, "workDatabase.runInTransa\u2026          }\n            )"

    invoke-static {v0, p0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    return-object v0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Ly4/a0;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-ne v1, v2, :cond_3

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iput v2, p0, Ly4/a0;->m:I

    iget-object p1, p0, Ly4/a0;->n:Ly4/c0;

    invoke-static {p1, p0}, Ly4/c0;->a(Ly4/c0;La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    move-object p1, v0

    :cond_5
    :goto_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
