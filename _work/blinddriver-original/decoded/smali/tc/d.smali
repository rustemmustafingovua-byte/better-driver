.class public final Ltc/d;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public m:I

.field public synthetic n:Z

.field public final synthetic o:Ltc/e;

.field public final synthetic p:Lu9/t;


# direct methods
.method public constructor <init>(Ltc/e;Lu9/t;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Ltc/d;->o:Ltc/e;

    iput-object p2, p0, Ltc/d;->p:Lu9/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance v0, Ltc/d;

    iget-object v1, p0, Ltc/d;->o:Ltc/e;

    iget-object p0, p0, Ltc/d;->p:Lu9/t;

    invoke-direct {v0, v1, p0, p2}, Ltc/d;-><init>(Ltc/e;Lu9/t;Ly8/c;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Ltc/d;->n:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Ltc/d;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ltc/d;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ltc/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-boolean v0, p0, Ltc/d;->n:Z

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Ltc/d;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, p0, Ltc/d;->l:I

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v2, p0, Ltc/d;->l:I

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    move v2, v5

    :cond_3
    :goto_0
    if-eqz v0, :cond_9

    iget-object p1, p0, Ltc/d;->o:Ltc/e;

    iput-boolean v5, p1, Ltc/e;->p:Z

    iget-object p1, p0, Ltc/d;->o:Ltc/e;

    :try_start_1
    iput-boolean v0, p0, Ltc/d;->n:Z

    iput v2, p0, Ltc/d;->l:I

    iput v4, p0, Ltc/d;->m:I

    invoke-static {p1, p0}, Ltc/e;->a(Ltc/e;La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_6

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    :goto_3
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v7, p1, Lt8/l;

    if-eqz v7, :cond_5

    move-object p1, v6

    :cond_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v6, p0, Ltc/d;->o:Ltc/e;

    iget-boolean v6, v6, Ltc/e;->p:Z

    if-eqz v6, :cond_6

    add-int/2addr v2, v4

    goto :goto_4

    :cond_6
    move v2, v5

    :goto_4
    if-eqz p1, :cond_7

    const-wide/16 v6, 0x7530

    goto :goto_5

    :cond_7
    iget-object p1, p0, Ltc/d;->o:Ltc/e;

    iget-boolean p1, p1, Ltc/e;->p:Z

    const-wide/16 v6, 0x7d0

    if-eqz p1, :cond_8

    const/4 p1, 0x5

    invoke-static {v2, v5, p1}, Lg6/c1;->f(III)I

    move-result p1

    shl-long/2addr v6, p1

    const-wide/32 v8, 0xea60

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_8
    :goto_5
    iput-boolean v0, p0, Ltc/d;->n:Z

    iput v2, p0, Ltc/d;->l:I

    iput v3, p0, Ltc/d;->m:I

    invoke-static {v6, v7, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    :goto_6
    return-object v1

    :cond_9
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
