.class public final Ly4/l;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/g;


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Throwable;

.field public synthetic n:J


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lx9/h;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    check-cast p4, Ly8/c;

    new-instance p3, Ly4/l;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p4}, La9/i;-><init>(ILy8/c;)V

    iput-object p2, p3, Ly4/l;->m:Ljava/lang/Throwable;

    iput-wide p0, p3, Ly4/l;->n:J

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p3, p0}, Ly4/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Ly4/l;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Ly4/l;->m:Ljava/lang/Throwable;

    iget-wide v3, p0, Ly4/l;->n:J

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    sget-object v5, Ly4/m;->a:Ljava/lang/String;

    const-string v6, "Cannot check for unfinished work"

    invoke-virtual {v1, v5, v6, p1}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x7530

    int-to-long v5, p1

    mul-long/2addr v3, v5

    sget-wide v5, Ly4/m;->b:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput v2, p0, Ly4/l;->l:I

    invoke-static {v3, v4, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
