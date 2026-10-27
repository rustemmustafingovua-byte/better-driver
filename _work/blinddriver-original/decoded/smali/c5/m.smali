.class public final Lc5/m;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public l:I

.field public synthetic m:Lx9/h;

.field public synthetic n:[Ljava/lang/Object;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lx9/h;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Ly8/c;

    new-instance p0, Lc5/m;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, La9/i;-><init>(ILy8/c;)V

    iput-object p1, p0, Lc5/m;->m:Lx9/h;

    iput-object p2, p0, Lc5/m;->n:[Ljava/lang/Object;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lc5/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lc5/m;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lc5/m;->m:Lx9/h;

    iget-object v1, p0, Lc5/m;->n:[Ljava/lang/Object;

    check-cast v1, [Lc5/c;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lc5/a;->a:Lc5/a;

    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    invoke-static {v6, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v6

    :goto_2
    iput v2, p0, Lc5/m;->l:I

    invoke-interface {p1, v5, p0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
