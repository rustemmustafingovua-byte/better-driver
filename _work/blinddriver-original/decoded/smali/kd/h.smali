.class public final Lkd/h;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lkd/m;

.field public m:Lkd/d0;

.field public n:Ljava/lang/Throwable;

.field public o:I

.field public synthetic p:Z

.field public final synthetic q:Lkd/j;


# direct methods
.method public constructor <init>(Lkd/j;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lkd/h;->q:Lkd/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    new-instance v0, Lkd/h;

    iget-object p0, p0, Lkd/h;->q:Lkd/j;

    invoke-direct {v0, p0, p2}, Lkd/h;-><init>(Lkd/j;Ly8/c;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lkd/h;->p:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lkd/h;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lkd/h;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lkd/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-boolean v0, p0, Lkd/h;->p:Z

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lkd/h;->o:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lkd/h;->q:Lkd/j;

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object p0, p0, Lkd/h;->n:Ljava/lang/Throwable;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    iget-object v2, p0, Lkd/h;->m:Lkd/d0;

    iget-object v6, p0, Lkd/h;->l:Lkd/m;

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object p1, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lkd/h;->m:Lkd/d0;

    iget-object v6, p0, Lkd/h;->l:Lkd/m;

    :try_start_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    if-nez v0, :cond_7

    iput-boolean v0, p0, Lkd/h;->p:Z

    iput v6, p0, Lkd/h;->o:I

    invoke-virtual {v8, p0}, Lkd/j;->d(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_0
    iget-object p0, v8, Lkd/j;->k:Lx9/l0;

    sget-object p1, Lkd/b;->l:Lkd/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v7, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_7
    new-instance p1, Lkd/m;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lkd/d0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v6, ""

    iput-object v6, v2, Lkd/d0;->b:Ljava/lang/String;

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    iput-wide v9, v2, Lkd/d0;->e:J

    const-wide/16 v9, -0x1

    iput-wide v9, v2, Lkd/d0;->f:J

    :goto_1
    :try_start_2
    iput-object p1, p0, Lkd/h;->l:Lkd/m;

    iput-object v2, p0, Lkd/h;->m:Lkd/d0;

    iput-boolean v0, p0, Lkd/h;->p:Z

    iput v5, p0, Lkd/h;->o:I

    invoke-static {v8, p1, v2, p0}, Lkd/j;->a(Lkd/j;Lkd/m;Lkd/d0;La9/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v6, p1

    :goto_2
    iput-object v6, p0, Lkd/h;->l:Lkd/m;

    iput-object v2, p0, Lkd/h;->m:Lkd/d0;

    iput-boolean v0, p0, Lkd/h;->p:Z

    iput v4, p0, Lkd/h;->o:I

    const-wide/16 v9, 0x3e8

    invoke-static {v9, v10, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_2

    goto :goto_4

    :goto_3
    sget-object v2, Lu9/f1;->m:Lu9/f1;

    new-instance v4, Lad/w;

    const/16 v5, 0x8

    invoke-direct {v4, v8, v7, v5}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object v7, p0, Lkd/h;->l:Lkd/m;

    iput-object v7, p0, Lkd/h;->m:Lkd/d0;

    iput-object p1, p0, Lkd/h;->n:Ljava/lang/Throwable;

    iput-boolean v0, p0, Lkd/h;->p:Z

    iput v3, p0, Lkd/h;->o:I

    invoke-static {v2, v4, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_4
    return-object v1

    :cond_9
    move-object p0, p1

    :goto_5
    throw p0
.end method
