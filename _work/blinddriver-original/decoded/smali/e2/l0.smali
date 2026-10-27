.class public final Le2/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le2/g0;

.field public b:Z

.field public c:Z

.field public d:Le2/c0;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public final p:Le2/x0;

.field public q:Le2/t0;


# direct methods
.method public constructor <init>(Le2/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/l0;->a:Le2/g0;

    sget-object p1, Le2/c0;->p:Le2/c0;

    iput-object p1, p0, Le2/l0;->d:Le2/c0;

    new-instance p1, Le2/x0;

    invoke-direct {p1, p0}, Le2/x0;-><init>(Le2/l0;)V

    iput-object p1, p0, Le2/l0;->p:Le2/x0;

    return-void
.end method


# virtual methods
.method public final a()Le2/h1;
    .locals 0

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->d:Le2/h1;

    return-object p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Le2/l0;->a:Le2/g0;

    iget-object v0, v0, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->d:Le2/c0;

    sget-object v1, Le2/c0;->n:Le2/c0;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Le2/c0;->o:Le2/c0;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Le2/l0;->p:Le2/x0;

    iget-boolean v1, v1, Le2/x0;->L:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Le2/l0;->g(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Le2/l0;->f(Z)V

    :cond_2
    :goto_0
    sget-object v1, Le2/c0;->o:Le2/c0;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Le2/l0;->q:Le2/t0;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Le2/t0;->F:Z

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v2}, Le2/l0;->i(Z)V

    return-void

    :cond_3
    invoke-virtual {p0, v2}, Le2/l0;->h(Z)V

    :cond_4
    return-void
.end method

.method public final c(J)V
    .locals 4

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    if-eqz p0, :cond_1

    sget-object v0, Le2/c0;->m:Le2/c0;

    iget-object v1, p0, Le2/t0;->q:Le2/l0;

    iput-object v0, v1, Le2/l0;->d:Le2/c0;

    iget-object v0, v1, Le2/l0;->p:Le2/x0;

    iget-object v2, v1, Le2/l0;->a:Le2/g0;

    const/4 v3, 0x0

    iput-boolean v3, v1, Le2/l0;->e:Z

    iput-wide p1, p0, Le2/t0;->J:J

    invoke-static {v2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p1

    check-cast p1, Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object p1

    iget-object p0, p0, Le2/t0;->K:Le2/s0;

    iget-object p2, p1, Le2/s1;->b:Le2/d;

    iget-object p1, p1, Le2/s1;->a:Ld1/b0;

    invoke-virtual {p1, v2, p2, p0}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    const/4 p0, 0x1

    iput-boolean p0, v1, Le2/l0;->f:Z

    iput-boolean p0, v1, Le2/l0;->g:Z

    invoke-static {v2}, Le2/l;->q(Le2/g0;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p0, v0, Le2/x0;->G:Z

    iput-boolean p0, v0, Le2/x0;->H:Z

    goto :goto_0

    :cond_0
    iput-boolean p0, v0, Le2/x0;->F:Z

    :goto_0
    sget-object p0, Le2/c0;->p:Le2/c0;

    iput-object p0, v1, Le2/l0;->d:Le2/c0;

    :cond_1
    return-void
.end method

.method public final d(I)V
    .locals 3

    iget v0, p0, Le2/l0;->l:I

    iput p1, p0, Le2/l0;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v0, v1, :cond_4

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    if-nez p1, :cond_3

    iget p1, p0, Le2/l0;->l:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Le2/l0;->d(I)V

    return-void

    :cond_3
    iget p1, p0, Le2/l0;->l:I

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Le2/l0;->d(I)V

    :cond_4
    return-void
.end method

.method public final e(I)V
    .locals 3

    iget v0, p0, Le2/l0;->o:I

    iput p1, p0, Le2/l0;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v0, v1, :cond_4

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    if-nez p1, :cond_3

    iget p1, p0, Le2/l0;->o:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Le2/l0;->e(I)V

    return-void

    :cond_3
    iget p1, p0, Le2/l0;->o:I

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Le2/l0;->e(I)V

    :cond_4
    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Le2/l0;->k:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Le2/l0;->k:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Le2/l0;->j:Z

    if-nez v0, :cond_0

    iget p1, p0, Le2/l0;->l:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Le2/l0;->d(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Le2/l0;->j:Z

    if-nez p1, :cond_1

    iget p1, p0, Le2/l0;->l:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Le2/l0;->d(I)V

    :cond_1
    return-void
.end method

.method public final g(Z)V
    .locals 1

    iget-boolean v0, p0, Le2/l0;->j:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Le2/l0;->j:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Le2/l0;->k:Z

    if-nez v0, :cond_0

    iget p1, p0, Le2/l0;->l:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Le2/l0;->d(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Le2/l0;->k:Z

    if-nez p1, :cond_1

    iget p1, p0, Le2/l0;->l:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Le2/l0;->d(I)V

    :cond_1
    return-void
.end method

.method public final h(Z)V
    .locals 1

    iget-boolean v0, p0, Le2/l0;->n:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Le2/l0;->n:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Le2/l0;->m:Z

    if-nez v0, :cond_0

    iget p1, p0, Le2/l0;->o:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Le2/l0;->e(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Le2/l0;->m:Z

    if-nez p1, :cond_1

    iget p1, p0, Le2/l0;->o:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Le2/l0;->e(I)V

    :cond_1
    return-void
.end method

.method public final i(Z)V
    .locals 1

    iget-boolean v0, p0, Le2/l0;->m:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Le2/l0;->m:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Le2/l0;->n:Z

    if-nez v0, :cond_0

    iget p1, p0, Le2/l0;->o:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Le2/l0;->e(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Le2/l0;->n:Z

    if-nez p1, :cond_1

    iget p1, p0, Le2/l0;->o:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Le2/l0;->e(I)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 6

    iget-object v0, p0, Le2/l0;->p:Le2/x0;

    iget-object v1, v0, Le2/x0;->q:Le2/l0;

    iget-object v2, v0, Le2/x0;->C:Ljava/lang/Object;

    const/4 v3, 0x7

    iget-object v4, p0, Le2/l0;->a:Le2/g0;

    const/4 v5, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Le2/l0;->a()Le2/h1;

    move-result-object v2

    invoke-virtual {v2}, Le2/h1;->G()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Le2/x0;->B:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v5, v0, Le2/x0;->B:Z

    invoke-virtual {v1}, Le2/l0;->a()Le2/h1;

    move-result-object v1

    invoke-virtual {v1}, Le2/h1;->G()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Le2/x0;->C:Ljava/lang/Object;

    invoke-virtual {v4}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, v5, v3}, Le2/g0;->X(Le2/g0;ZI)V

    :cond_2
    :goto_0
    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    if-eqz p0, :cond_6

    iget-object v0, p0, Le2/t0;->q:Le2/l0;

    iget-object v1, p0, Le2/t0;->I:Ljava/lang/Object;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v1

    invoke-virtual {v1}, Le2/h1;->S0()Le2/q0;

    move-result-object v1

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v1, v1, Le2/q0;->z:Le2/h1;

    invoke-virtual {v1}, Le2/h1;->G()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Le2/t0;->H:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v5, p0, Le2/t0;->H:Z

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v0

    invoke-virtual {v0}, Le2/h1;->S0()Le2/q0;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, v0, Le2/q0;->z:Le2/h1;

    invoke-virtual {v0}, Le2/h1;->G()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Le2/t0;->I:Ljava/lang/Object;

    invoke-static {v4}, Le2/l;->q(Le2/g0;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v4}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {p0, v5, v3}, Le2/g0;->X(Le2/g0;ZI)V

    return-void

    :cond_5
    invoke-virtual {v4}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {p0, v5, v3}, Le2/g0;->V(Le2/g0;ZI)V

    :cond_6
    :goto_1
    return-void
.end method
