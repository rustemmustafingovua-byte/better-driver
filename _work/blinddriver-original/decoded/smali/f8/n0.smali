.class public final Lf8/n0;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Ljava/io/Serializable;

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/io/Serializable;

.field public t:Ljava/io/Serializable;

.field public u:Ljava/io/Serializable;

.field public v:I

.field public w:Ljava/io/Serializable;

.field public x:Lf8/v0;

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    const-string v0, ""

    iput-object v0, p0, Lf8/n0;->o:Ljava/io/Serializable;

    const/4 v1, 0x1

    iput v1, p0, Lf8/n0;->q:I

    iput v1, p0, Lf8/n0;->r:I

    iput-object v0, p0, Lf8/n0;->s:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/n0;->t:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/n0;->u:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/n0;->w:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lf8/n0;

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

    sget-object p0, Lf8/l2;->l:Lf8/x3;

    const-class v0, Lf8/q0;

    const-class v1, Lf8/n0;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lf8/q0;
    .locals 4

    new-instance v0, Lf8/q0;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lf8/q0;->z:B

    iget v1, p0, Lf8/n0;->n:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lf8/n0;->o:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/q0;->o:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lf8/n0;->p:I

    iput v3, v0, Lf8/q0;->p:I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget v3, p0, Lf8/n0;->q:I

    iput v3, v0, Lf8/q0;->q:I

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    iget v3, p0, Lf8/n0;->r:I

    iput v3, v0, Lf8/q0;->r:I

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x10

    :cond_4
    iget-object v3, p0, Lf8/n0;->s:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/q0;->s:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x20

    :cond_5
    iget-object v3, p0, Lf8/n0;->t:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/q0;->t:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x40

    :cond_6
    iget-object v3, p0, Lf8/n0;->u:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/q0;->u:Ljava/io/Serializable;

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_7

    iget v3, p0, Lf8/n0;->v:I

    iput v3, v0, Lf8/q0;->v:I

    or-int/lit16 v2, v2, 0x80

    :cond_7
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_8

    or-int/lit16 v2, v2, 0x100

    :cond_8
    iget-object v3, p0, Lf8/n0;->w:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/q0;->w:Ljava/io/Serializable;

    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_9

    iget-object v3, p0, Lf8/n0;->x:Lf8/v0;

    iput-object v3, v0, Lf8/q0;->x:Lf8/v0;

    or-int/lit16 v2, v2, 0x200

    :cond_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lf8/n0;->y:Z

    iput-boolean v1, v0, Lf8/q0;->y:Z

    or-int/lit16 v2, v2, 0x400

    :cond_a
    iput v2, v0, Lf8/q0;->n:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lf8/q0;)V
    .locals 4

    sget-object v0, Lf8/q0;->A:Lf8/q0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lf8/q0;->n:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lf8/n0;->n:I

    or-int/2addr v0, v1

    iput v0, p0, Lf8/n0;->n:I

    iget-object v0, p1, Lf8/q0;->o:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/n0;->o:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1
    invoke-virtual {p1}, Lf8/q0;->F()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget v0, p1, Lf8/q0;->p:I

    iget v3, p0, Lf8/n0;->n:I

    or-int/2addr v3, v2

    iput v3, p0, Lf8/n0;->n:I

    iput v0, p0, Lf8/n0;->p:I

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_2
    invoke-virtual {p1}, Lf8/q0;->E()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Lf8/q0;->q:I

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    sget-object v0, Lf8/o0;->m:Lf8/o0;

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v0, Lf8/o0;->o:Lf8/o0;

    goto :goto_0

    :cond_4
    sget-object v0, Lf8/o0;->n:Lf8/o0;

    goto :goto_0

    :cond_5
    sget-object v0, Lf8/o0;->m:Lf8/o0;

    :goto_0
    if-nez v0, :cond_6

    sget-object v0, Lf8/o0;->m:Lf8/o0;

    :cond_6
    iget v1, p0, Lf8/n0;->n:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lf8/n0;->n:I

    iget v0, v0, Lf8/o0;->l:I

    iput v0, p0, Lf8/n0;->q:I

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_7
    invoke-virtual {p1}, Lf8/q0;->J()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lf8/q0;->r:I

    invoke-static {v0}, Lf8/p0;->b(I)Lf8/p0;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lf8/p0;->m:Lf8/p0;

    :cond_8
    iget v1, p0, Lf8/n0;->n:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lf8/n0;->n:I

    iget v0, v0, Lf8/p0;->l:I

    iput v0, p0, Lf8/n0;->r:I

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_9
    invoke-virtual {p1}, Lf8/q0;->K()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lf8/n0;->n:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lf8/n0;->n:I

    iget-object v0, p1, Lf8/q0;->s:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/n0;->s:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_a
    invoke-virtual {p1}, Lf8/q0;->C()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lf8/n0;->n:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lf8/n0;->n:I

    iget-object v0, p1, Lf8/q0;->t:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/n0;->t:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_b
    invoke-virtual {p1}, Lf8/q0;->B()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lf8/n0;->n:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lf8/n0;->n:I

    iget-object v0, p1, Lf8/q0;->u:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/n0;->u:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_c
    invoke-virtual {p1}, Lf8/q0;->G()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p1, Lf8/q0;->v:I

    iget v1, p0, Lf8/n0;->n:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lf8/n0;->n:I

    iput v0, p0, Lf8/n0;->v:I

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_d
    invoke-virtual {p1}, Lf8/q0;->D()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lf8/n0;->n:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lf8/n0;->n:I

    iget-object v0, p1, Lf8/q0;->w:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/n0;->w:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_e
    invoke-virtual {p1}, Lf8/q0;->H()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lf8/q0;->z()Lf8/v0;

    move-result-object v0

    iget v1, p0, Lf8/n0;->n:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_f

    iget-object v1, p0, Lf8/n0;->x:Lf8/v0;

    if-eqz v1, :cond_f

    sget-object v2, Lf8/v0;->x:Lf8/v0;

    if-eq v1, v2, :cond_f

    invoke-virtual {v2}, Lf8/v0;->D()Lf8/s0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lf8/s0;->X(Lf8/v0;)V

    invoke-virtual {v2, v0}, Lf8/s0;->X(Lf8/v0;)V

    invoke-virtual {v2}, Lf8/s0;->W()Lf8/v0;

    move-result-object v0

    iput-object v0, p0, Lf8/n0;->x:Lf8/v0;

    goto :goto_1

    :cond_f
    iput-object v0, p0, Lf8/n0;->x:Lf8/v0;

    :goto_1
    invoke-virtual {p0}, Lf8/l3;->O()V

    iget v0, p0, Lf8/n0;->n:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lf8/n0;->n:I

    :cond_10
    invoke-virtual {p1}, Lf8/q0;->I()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lf8/q0;->y:Z

    iget v1, p0, Lf8/n0;->n:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lf8/n0;->n:I

    iput-boolean v0, p0, Lf8/n0;->y:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_11
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lf8/n0;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lf8/q0;->B:Lf8/m0;

    invoke-virtual {v1, p1, p2}, Lf8/m0;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/q0;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lf8/n0;->S(Lf8/q0;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lf8/q0;
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

    invoke-virtual {p0, v0}, Lf8/n0;->S(Lf8/q0;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/q0;->A:Lf8/q0;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lf8/n0;->R()Lf8/q0;

    move-result-object p0

    invoke-virtual {p0}, Lf8/q0;->p()Z

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

    check-cast p0, Lf8/n0;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lf8/l2;->k:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/n0;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lf8/n0;->R()Lf8/q0;

    move-result-object p0

    invoke-virtual {p0}, Lf8/q0;->p()Z

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

    invoke-virtual {p0}, Lf8/n0;->R()Lf8/q0;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/q0;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/q0;

    invoke-virtual {p0, p1}, Lf8/n0;->S(Lf8/q0;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/n0;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/q0;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/q0;

    invoke-virtual {p0, p1}, Lf8/n0;->S(Lf8/q0;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
