.class public final Lmc/x;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:I

.field public p:J

.field public q:J

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    const/4 v0, -0x1

    iput v0, p0, Lmc/x;->o:I

    sget-object p0, Lmc/y;->v:Lmc/y;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lmc/x;

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

    sget-object p0, Lmc/s0;->l:Lf8/x3;

    const-class v0, Lmc/y;

    const-class v1, Lmc/x;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lmc/y;
    .locals 5

    new-instance v0, Lmc/y;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lmc/y;->u:B

    iget v1, p0, Lmc/x;->n:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lmc/x;->o:I

    iput v3, v0, Lmc/y;->o:I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lmc/x;->p:J

    iput-wide v3, v0, Lmc/y;->p:J

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lmc/x;->q:J

    iput-wide v3, v0, Lmc/y;->q:J

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    iget v3, p0, Lmc/x;->r:I

    iput v3, v0, Lmc/y;->r:I

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    iget v3, p0, Lmc/x;->s:I

    iput v3, v0, Lmc/y;->s:I

    or-int/lit8 v2, v2, 0x10

    :cond_4
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lmc/x;->t:Z

    iput-boolean v1, v0, Lmc/y;->t:Z

    or-int/lit8 v2, v2, 0x20

    :cond_5
    iput v2, v0, Lmc/y;->n:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lmc/y;)V
    .locals 3

    sget-object v0, Lmc/y;->v:Lmc/y;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lmc/y;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p1, Lmc/y;->o:I

    iget v1, p0, Lmc/x;->n:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmc/x;->n:I

    iput v0, p0, Lmc/x;->o:I

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1
    invoke-virtual {p1}, Lmc/y;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lmc/y;->p:J

    iget v2, p0, Lmc/x;->n:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lmc/x;->n:I

    iput-wide v0, p0, Lmc/x;->p:J

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_2
    invoke-virtual {p1}, Lmc/y;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lmc/y;->q:J

    iget v2, p0, Lmc/x;->n:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lmc/x;->n:I

    iput-wide v0, p0, Lmc/x;->q:J

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_3
    invoke-virtual {p1}, Lmc/y;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lmc/y;->r:I

    iget v1, p0, Lmc/x;->n:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lmc/x;->n:I

    iput v0, p0, Lmc/x;->r:I

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_4
    invoke-virtual {p1}, Lmc/y;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Lmc/y;->s:I

    iget v1, p0, Lmc/x;->n:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lmc/x;->n:I

    iput v0, p0, Lmc/x;->s:I

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_5
    invoke-virtual {p1}, Lmc/y;->z()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lmc/y;->t:Z

    iget v1, p0, Lmc/x;->n:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lmc/x;->n:I

    iput-boolean v0, p0, Lmc/x;->t:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_6
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lmc/x;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lmc/y;->w:Lmc/w;

    invoke-virtual {v1, p1, p2}, Lmc/w;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmc/y;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lmc/x;->S(Lmc/y;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lmc/y;
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

    invoke-virtual {p0, v0}, Lmc/x;->S(Lmc/y;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/y;->v:Lmc/y;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lmc/x;->R()Lmc/y;

    move-result-object p0

    invoke-virtual {p0}, Lmc/y;->p()Z

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

    check-cast p0, Lmc/x;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lmc/s0;->k:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmc/x;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lmc/x;->R()Lmc/y;

    move-result-object p0

    invoke-virtual {p0}, Lmc/y;->p()Z

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

    invoke-virtual {p0}, Lmc/x;->R()Lmc/y;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lmc/y;

    if-eqz v0, :cond_0

    check-cast p1, Lmc/y;

    invoke-virtual {p0, p1}, Lmc/x;->S(Lmc/y;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmc/x;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lmc/y;

    if-eqz v0, :cond_0

    check-cast p1, Lmc/y;

    invoke-virtual {p0, p1}, Lmc/x;->S(Lmc/y;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
