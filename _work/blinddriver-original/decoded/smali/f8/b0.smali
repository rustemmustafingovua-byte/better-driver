.class public final Lf8/b0;
.super Lf8/n3;
.source "SourceFile"


# instance fields
.field public o:I

.field public p:Z

.field public q:Z

.field public r:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lf8/b0;->r:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lf8/b0;

    return-object p0
.end method

.method public final E(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/n3;->U(Lf8/v2;Ljava/lang/Object;)V

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

    sget-object p0, Lf8/l2;->H:Lf8/x3;

    const-class v0, Lf8/c0;

    const-class v1, Lf8/b0;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final W()Lf8/c0;
    .locals 4

    new-instance v0, Lf8/c0;

    invoke-direct {v0, p0}, Lf8/o3;-><init>(Lf8/n3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lf8/c0;->s:B

    iget v1, p0, Lf8/b0;->o:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lf8/b0;->p:Z

    iput-boolean v2, v0, Lf8/c0;->p:Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lf8/b0;->q:Z

    iput-boolean v3, v0, Lf8/c0;->q:Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lf8/b0;->r:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lf8/b0;->r:Ljava/util/List;

    iget v1, p0, Lf8/b0;->o:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lf8/b0;->o:I

    :cond_2
    iget-object v1, p0, Lf8/b0;->r:Ljava/util/List;

    iput-object v1, v0, Lf8/c0;->r:Ljava/util/List;

    iput v2, v0, Lf8/c0;->o:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final X(Lf8/c0;)V
    .locals 2

    sget-object v0, Lf8/c0;->t:Lf8/c0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lf8/c0;->o:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lf8/c0;->p:Z

    iget v1, p0, Lf8/b0;->o:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lf8/b0;->o:I

    iput-boolean v0, p0, Lf8/b0;->p:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1
    invoke-virtual {p1}, Lf8/c0;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lf8/c0;->q:Z

    iget v1, p0, Lf8/b0;->o:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lf8/b0;->o:I

    iput-boolean v0, p0, Lf8/b0;->q:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_2
    iget-object v0, p1, Lf8/c0;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lf8/b0;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lf8/c0;->r:Ljava/util/List;

    iput-object v0, p0, Lf8/b0;->r:Ljava/util/List;

    iget v0, p0, Lf8/b0;->o:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lf8/b0;->o:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lf8/b0;->o:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/b0;->r:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/b0;->r:Ljava/util/List;

    iget v0, p0, Lf8/b0;->o:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lf8/b0;->o:I

    :cond_4
    iget-object v0, p0, Lf8/b0;->r:Ljava/util/List;

    iget-object v1, p1, Lf8/c0;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_5
    invoke-virtual {p0, p1}, Lf8/n3;->T(Lf8/o3;)V

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lf8/b0;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final Y(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lf8/c0;->u:Lf8/a0;

    invoke-virtual {v1, p1, p2}, Lf8/a0;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/c0;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lf8/b0;->X(Lf8/c0;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lf8/c0;
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

    invoke-virtual {p0, v0}, Lf8/b0;->X(Lf8/c0;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/c0;->t:Lf8/c0;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lf8/b0;->W()Lf8/c0;

    move-result-object p0

    invoke-virtual {p0}, Lf8/c0;->p()Z

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

    check-cast p0, Lf8/b0;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/n3;->R(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lf8/l2;->G:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/b0;->Y(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lf8/b0;->W()Lf8/c0;

    move-result-object p0

    invoke-virtual {p0}, Lf8/c0;->p()Z

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

    invoke-virtual {p0}, Lf8/b0;->W()Lf8/c0;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/c0;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/c0;

    invoke-virtual {p0, p1}, Lf8/b0;->X(Lf8/c0;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/b0;->Y(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/c0;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/c0;

    invoke-virtual {p0, p1}, Lf8/b0;->X(Lf8/c0;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
