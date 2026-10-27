.class public final Lsc/t;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public l:I


# virtual methods
.method public final create(Ly8/c;)Ly8/c;
    .locals 1

    new-instance p0, Lsc/t;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La9/i;-><init>(ILy8/c;)V

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly8/c;

    invoke-virtual {p0, p1}, Lsc/t;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/t;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lsc/t;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->o()Lbd/i;

    move-result-object p1

    new-instance v1, Lsc/j;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lsc/j;-><init>(I)V

    iput v2, p0, Lsc/t;->l:I

    sget-object v3, Lu9/e0;->a:Lba/e;

    sget-object v3, Lba/d;->n:Lba/d;

    new-instance v4, Lb0/x1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p1, v5, v2}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v3, v4, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
