.class public final Ly1/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/c;
.implements Ly8/c;


# instance fields
.field public final synthetic l:Ly1/k0;

.field public final m:Lu9/g;

.field public n:Lu9/g;

.field public o:Ly1/m;

.field public final p:Ly8/i;

.field public final synthetic q:Ly1/k0;


# direct methods
.method public constructor <init>(Ly1/k0;Lu9/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/j0;->q:Ly1/k0;

    iput-object p1, p0, Ly1/j0;->l:Ly1/k0;

    iput-object p2, p0, Ly1/j0;->m:Lu9/g;

    sget-object p1, Ly1/m;->m:Ly1/m;

    iput-object p1, p0, Ly1/j0;->o:Ly1/m;

    sget-object p1, Ly8/i;->l:Ly8/i;

    iput-object p1, p0, Ly1/j0;->p:Ly8/i;

    return-void
.end method


# virtual methods
.method public final H(F)J
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-interface {p0, p1}, Lb3/c;->H(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final M(I)F
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-interface {p0, p1}, Lb3/c;->M(I)F

    move-result p0

    return p0
.end method

.method public final P(F)F
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-virtual {p0}, Ly1/k0;->a()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public final S()F
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-virtual {p0}, Ly1/k0;->S()F

    move-result p0

    return p0
.end method

.method public final V(F)F
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-virtual {p0}, Ly1/k0;->a()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-virtual {p0}, Ly1/k0;->a()F

    move-result p0

    return p0
.end method

.method public final b(Ly1/m;La9/a;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lu9/g;

    invoke-static {p2}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v0}, Lu9/g;->r()V

    iput-object p1, p0, Ly1/j0;->o:Ly1/m;

    iput-object v0, p0, Ly1/j0;->n:Lu9/g;

    invoke-virtual {v0}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    return-object p0
.end method

.method public final c()J
    .locals 9

    iget-object p0, p0, Ly1/j0;->q:Ly1/k0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget-object v0, v0, Le2/g0;->M:Lf2/p2;

    invoke-interface {v0}, Lf2/p2;->d()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lb3/c;->l0(J)J

    move-result-wide v0

    iget-wide v2, p0, Ly1/k0;->I:J

    const/16 p0, 0x20

    shr-long v4, v0, p0

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    shr-long v5, v2, p0

    long-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    const-wide v7, 0xffffffffL

    and-long/2addr v0, v7

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long v1, v2, v7

    long-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v6

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    shl-long v0, v1, p0

    and-long v2, v3, v7

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()Lf2/p2;
    .locals 0

    iget-object p0, p0, Ly1/j0;->q:Ly1/k0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->M:Lf2/p2;

    return-object p0
.end method

.method public final f(JLi9/e;La9/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Ly1/h0;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Ly1/h0;

    iget v1, v0, Ly1/h0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ly1/h0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Ly1/h0;

    invoke-direct {v0, p0, p4}, Ly1/h0;-><init>(Ly1/j0;La9/c;)V

    :goto_0
    iget-object p4, v0, Ly1/h0;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Ly1/h0;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ly1/h0;->l:Lu9/j1;

    :try_start_0
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    cmp-long p4, p1, v4

    if-gtz p4, :cond_3

    iget-object p4, p0, Ly1/j0;->n:Lu9/g;

    if-eqz p4, :cond_3

    new-instance v2, Ly1/n;

    invoke-direct {v2, p1, p2}, Ly1/n;-><init>(J)V

    invoke-static {v2}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v2

    invoke-virtual {p4, v2}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    iget-object p4, p0, Ly1/j0;->q:Ly1/k0;

    invoke-virtual {p4}, Lf1/q;->A0()Lu9/t;

    move-result-object p4

    new-instance v4, Le3/h;

    const/4 v9, 0x3

    const/4 v8, 0x0

    move-object v7, p0

    move-wide v5, p1

    invoke-direct/range {v4 .. v9}, Le3/h;-><init>(JLjava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    invoke-static {p4, v8, v8, v4, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p0

    :try_start_1
    iput-object p0, v0, Ly1/h0;->l:Lu9/j1;

    iput v3, v0, Ly1/h0;->o:I

    invoke-interface {p3, v7, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Ly1/b;->m:Ly1/b;

    invoke-interface {p0, p1}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    return-object p4

    :goto_2
    sget-object p2, Ly1/b;->m:Ly1/b;

    invoke-interface {p0, p2}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    throw p1
.end method

.method public final getContext()Ly8/h;
    .locals 0

    iget-object p0, p0, Ly1/j0;->p:Ly8/i;

    return-object p0
.end method

.method public final h0(F)I
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-interface {p0, p1}, Lb3/c;->h0(F)I

    move-result p0

    return p0
.end method

.method public final k(JLi9/e;La9/a;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Ly1/i0;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Ly1/i0;

    iget v1, v0, Ly1/i0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ly1/i0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Ly1/i0;

    invoke-direct {v0, p0, p4}, Ly1/i0;-><init>(Ly1/j0;La9/a;)V

    :goto_0
    iget-object p4, v0, Ly1/i0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Ly1/i0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ly1/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    iput v3, v0, Ly1/i0;->n:I

    invoke-virtual {p0, p1, p2, p3, v0}, Ly1/j0;->f(JLi9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ly1/n; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l0(J)J
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-interface {p0, p1, p2}, Lb3/c;->l0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final m(F)J
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-interface {p0, p1}, Lb3/c;->m(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final n(J)J
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-interface {p0, p1, p2}, Lb3/c;->n(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final p0(J)F
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-interface {p0, p1, p2}, Lb3/c;->p0(J)F

    move-result p0

    return p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ly1/j0;->q:Ly1/k0;

    iget-object v1, v0, Ly1/k0;->F:Lt0/b;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Ly1/k0;->E:Lt0/b;

    invoke-virtual {v0, p0}, Lt0/b;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p0, p0, Ly1/j0;->m:Lu9/g;

    invoke-virtual {p0, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final v(J)F
    .locals 0

    iget-object p0, p0, Ly1/j0;->l:Ly1/k0;

    invoke-interface {p0, p1, p2}, Lb3/c;->v(J)F

    move-result p0

    return p0
.end method
