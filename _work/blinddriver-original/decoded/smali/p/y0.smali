.class public final Lp/y0;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/v1;


# instance fields
.field public A:Ls/f;

.field public z:Ls/i;


# direct methods
.method public static final M0(Lp/y0;La9/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lp/v0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp/v0;

    iget v1, v0, Lp/v0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp/v0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp/v0;

    invoke-direct {v0, p0, p1}, Lp/v0;-><init>(Lp/y0;La9/c;)V

    :goto_0
    iget-object p1, v0, Lp/v0;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lp/v0;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lp/v0;->l:Ls/f;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lp/y0;->A:Ls/f;

    if-nez p1, :cond_4

    new-instance p1, Ls/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lp/y0;->z:Ls/i;

    iput-object p1, v0, Lp/v0;->l:Ls/f;

    iput v3, v0, Lp/v0;->o:I

    invoke-virtual {v2, p1, v0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lp/y0;->A:Ls/f;

    :cond_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final N0(Lp/y0;La9/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lp/w0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp/w0;

    iget v1, v0, Lp/w0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp/w0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp/w0;

    invoke-direct {v0, p0, p1}, Lp/w0;-><init>(Lp/y0;La9/c;)V

    :goto_0
    iget-object p1, v0, Lp/w0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lp/w0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lp/y0;->A:Ls/f;

    if-eqz p1, :cond_4

    new-instance v2, Ls/g;

    invoke-direct {v2, p1}, Ls/g;-><init>(Ls/f;)V

    iget-object p1, p0, Lp/y0;->z:Ls/i;

    iput v3, v0, Lp/w0;->n:I

    invoke-virtual {p1, v2, v0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lp/y0;->A:Ls/f;

    :cond_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method


# virtual methods
.method public final F()V
    .locals 0

    invoke-virtual {p0}, Lp/y0;->O0()V

    return-void
.end method

.method public final F0()V
    .locals 0

    invoke-virtual {p0}, Lp/y0;->O0()V

    return-void
.end method

.method public final O0()V
    .locals 2

    iget-object v0, p0, Lp/y0;->A:Ls/f;

    if-eqz v0, :cond_0

    new-instance v1, Ls/g;

    invoke-direct {v1, v0}, Ls/g;-><init>(Ls/f;)V

    iget-object v0, p0, Lp/y0;->z:Ls/i;

    invoke-virtual {v0, v1}, Ls/i;->b(Ls/h;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lp/y0;->A:Ls/f;

    :cond_0
    return-void
.end method

.method public final w0(Ly1/l;Ly1/m;J)V
    .locals 1

    sget-object p3, Ly1/m;->m:Ly1/m;

    if-ne p2, p3, :cond_1

    iget p1, p1, Ly1/l;->f:I

    const/4 p2, 0x4

    const/4 p3, 0x3

    const/4 p4, 0x0

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object p1

    new-instance p2, Lp/x0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p4, v0}, Lp/x0;-><init>(Lp/y0;Ly8/c;I)V

    invoke-static {p1, p4, p4, p2, p3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object p1

    new-instance p2, Lp/x0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p4, v0}, Lp/x0;-><init>(Lp/y0;Ly8/c;I)V

    invoke-static {p1, p4, p4, p2, p3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_1
    return-void
.end method
