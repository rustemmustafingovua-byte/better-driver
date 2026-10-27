.class public final Lr/h;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lr/i;

.field public final synthetic o:Lr/a3;

.field public final synthetic p:Lr/d;

.field public final synthetic q:J


# direct methods
.method public constructor <init>(Lr/i;Lr/a3;Lr/d;JLy8/c;)V
    .locals 0

    iput-object p1, p0, Lr/h;->n:Lr/i;

    iput-object p2, p0, Lr/h;->o:Lr/a3;

    iput-object p3, p0, Lr/h;->p:Lr/d;

    iput-wide p4, p0, Lr/h;->q:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 7

    new-instance v0, Lr/h;

    iget-object v3, p0, Lr/h;->p:Lr/d;

    iget-wide v4, p0, Lr/h;->q:J

    iget-object v1, p0, Lr/h;->n:Lr/i;

    iget-object v2, p0, Lr/h;->o:Lr/a3;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lr/h;-><init>(Lr/i;Lr/a3;Lr/d;JLy8/c;)V

    iput-object p1, v0, Lr/h;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/h;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/h;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v2, p0, Lr/h;->n:Lr/i;

    iget-object v8, v2, Lr/i;->D:Lr/a;

    sget-object v9, Lz8/a;->l:Lz8/a;

    iget v0, p0, Lr/h;->l:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v10, :cond_0

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v12, p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/h;->m:Ljava/lang/Object;

    check-cast p1, Lu9/t;

    invoke-interface {p1}, Lu9/t;->C()Ly8/h;

    move-result-object p1

    invoke-static {p1}, Lu9/v;->n(Ly8/h;)Lu9/v0;

    move-result-object v6

    :try_start_1
    iput-boolean v10, v2, Lr/i;->G:Z

    iget-object p1, v2, Lr/i;->A:Lr/n2;

    sget-object v13, Lp/n1;->l:Lp/n1;

    new-instance v0, Lm0/s1;

    iget-object v1, p0, Lr/h;->o:Lr/a3;

    iget-object v3, p0, Lr/h;->p:Lr/d;

    iget-wide v4, p0, Lr/h;->q:J

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lm0/s1;-><init>(Lr/a3;Lr/i;Lr/d;JLu9/v0;Ly8/c;)V

    iput v10, p0, Lr/h;->l:I

    invoke-virtual {p1, v13, v0, p0}, Lr/n2;->f(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v9, :cond_2

    return-object v9

    :cond_2
    :goto_0
    invoke-virtual {v8}, Lr/a;->b()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v11, v2, Lr/i;->G:Z

    invoke-virtual {v8, v12}, Lr/a;->a(Ljava/util/concurrent/CancellationException;)V

    iput-boolean v11, v2, Lr/i;->E:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_1
    :try_start_2
    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iput-boolean v11, v2, Lr/i;->G:Z

    invoke-virtual {v8, v12}, Lr/a;->a(Ljava/util/concurrent/CancellationException;)V

    iput-boolean v11, v2, Lr/i;->E:Z

    throw p0
.end method
