.class public final Lf8/e0;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Ljava/io/Serializable;

.field public p:I

.field public q:Lf8/i0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    const-string v0, ""

    iput-object v0, p0, Lf8/e0;->o:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lf8/e0;

    return-object p0
.end method

.method public final E(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->P(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final F(Lf8/i5;)Lf8/a;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final L()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->t:Lf8/x3;

    const-class v0, Lf8/f0;

    const-class v1, Lf8/e0;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lf8/f0;
    .locals 4

    new-instance v0, Lf8/f0;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lf8/f0;->r:B

    iget v1, p0, Lf8/e0;->n:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lf8/e0;->o:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/f0;->o:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lf8/e0;->p:I

    iput v3, v0, Lf8/f0;->p:I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lf8/e0;->q:Lf8/i0;

    iput-object v1, v0, Lf8/f0;->q:Lf8/i0;

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iput v2, v0, Lf8/f0;->n:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lf8/f0;)V
    .locals 3

    sget-object v0, Lf8/f0;->s:Lf8/f0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lf8/f0;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lf8/e0;->n:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf8/e0;->n:I

    iget-object v0, p1, Lf8/f0;->o:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/e0;->o:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1
    invoke-virtual {p1}, Lf8/f0;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lf8/f0;->p:I

    iget v1, p0, Lf8/e0;->n:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lf8/e0;->n:I

    iput v0, p0, Lf8/e0;->p:I

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_2
    invoke-virtual {p1}, Lf8/f0;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lf8/f0;->q:Lf8/i0;

    if-nez v0, :cond_3

    sget-object v0, Lf8/i0;->s:Lf8/i0;

    :cond_3
    iget v1, p0, Lf8/e0;->n:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lf8/e0;->q:Lf8/i0;

    if-eqz v1, :cond_4

    sget-object v2, Lf8/i0;->s:Lf8/i0;

    if-eq v1, v2, :cond_4

    invoke-virtual {v2}, Lf8/i0;->y()Lf8/h0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lf8/h0;->X(Lf8/i0;)V

    invoke-virtual {v2, v0}, Lf8/h0;->X(Lf8/i0;)V

    invoke-virtual {v2}, Lf8/h0;->W()Lf8/i0;

    move-result-object v0

    iput-object v0, p0, Lf8/e0;->q:Lf8/i0;

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lf8/e0;->q:Lf8/i0;

    :goto_0
    invoke-virtual {p0}, Lf8/l3;->O()V

    iget v0, p0, Lf8/e0;->n:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lf8/e0;->n:I

    :cond_5
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lf8/e0;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lf8/f0;->t:Lf8/d0;

    invoke-virtual {v1, p1, p2}, Lf8/d0;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/f0;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lf8/e0;->S(Lf8/f0;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lf8/f0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lf8/h4;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lf8/e0;->S(Lf8/f0;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/f0;->s:Lf8/f0;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lf8/e0;->R()Lf8/f0;

    move-result-object p0

    invoke-virtual {p0}, Lf8/f0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lf8/a;->D(Lf8/c;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf8/l3;->H()Lf8/l3;

    move-result-object p0

    check-cast p0, Lf8/e0;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lf8/l2;->s:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/e0;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lf8/e0;->R()Lf8/f0;

    move-result-object p0

    invoke-virtual {p0}, Lf8/f0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lf8/a;->D(Lf8/c;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public final bridge synthetic s()Lf8/c;
    .locals 0

    invoke-virtual {p0}, Lf8/e0;->R()Lf8/f0;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/f0;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/f0;

    invoke-virtual {p0, p1}, Lf8/e0;->S(Lf8/f0;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/e0;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/f0;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/f0;

    invoke-virtual {p0, p1}, Lf8/e0;->S(Lf8/f0;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
