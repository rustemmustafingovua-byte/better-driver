.class public final Lr/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/c;


# instance fields
.field public final synthetic l:Lb3/c;

.field public m:Z

.field public n:Z

.field public final o:Lca/c;


# direct methods
.method public constructor <init>(Lb3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/p1;->l:Lb3/c;

    new-instance p1, Lca/c;

    invoke-direct {p1}, Lca/c;-><init>()V

    iput-object p1, p0, Lr/p1;->o:Lca/c;

    return-void
.end method


# virtual methods
.method public final H(F)J
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0, p1}, Lb3/c;->H(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final M(I)F
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0, p1}, Lb3/c;->M(I)F

    move-result p0

    return p0
.end method

.method public final P(F)F
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0, p1}, Lb3/c;->P(F)F

    move-result p0

    return p0
.end method

.method public final S()F
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0}, Lb3/c;->S()F

    move-result p0

    return p0
.end method

.method public final V(F)F
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0, p1}, Lb3/c;->V(F)F

    move-result p0

    return p0
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0}, Lb3/c;->a()F

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/p1;->n:Z

    iget-object p0, p0, Lr/p1;->o:Lca/c;

    invoke-virtual {p0}, Lca/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/c;->f(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/p1;->m:Z

    iget-object p0, p0, Lr/p1;->o:Lca/c;

    invoke-virtual {p0}, Lca/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/c;->f(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final e(La9/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lr/n1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lr/n1;

    iget v1, v0, Lr/n1;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/n1;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/n1;

    invoke-direct {v0, p0, p1}, Lr/n1;-><init>(Lr/p1;La9/c;)V

    :goto_0
    iget-object p1, v0, Lr/n1;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/n1;->n:I

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

    iput v3, v0, Lr/n1;->n:I

    iget-object p1, p0, Lr/p1;->o:Lca/c;

    invoke-virtual {p1, v0}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lr/p1;->m:Z

    iput-boolean p1, p0, Lr/p1;->n:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final f(La9/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lr/o1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lr/o1;

    iget v1, v0, Lr/o1;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/o1;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/o1;

    invoke-direct {v0, p0, p1}, Lr/o1;-><init>(Lr/p1;La9/c;)V

    :goto_0
    iget-object p1, v0, Lr/o1;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/o1;->n:I

    iget-object v3, p0, Lr/p1;->o:Lca/c;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lr/p1;->m:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lr/p1;->n:Z

    if-nez p1, :cond_4

    iput v4, v0, Lr/o1;->n:I

    invoke-virtual {v3, v0}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Lca/c;->f(Ljava/lang/Object;)V

    :cond_4
    iget-boolean p0, p0, Lr/p1;->m:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final h0(F)I
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0, p1}, Lb3/c;->h0(F)I

    move-result p0

    return p0
.end method

.method public final l0(J)J
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0, p1, p2}, Lb3/c;->l0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final m(F)J
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0, p1}, Lb3/c;->m(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final n(J)J
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0, p1, p2}, Lb3/c;->n(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final p0(J)F
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0, p1, p2}, Lb3/c;->p0(J)F

    move-result p0

    return p0
.end method

.method public final v(J)F
    .locals 0

    iget-object p0, p0, Lr/p1;->l:Lb3/c;

    invoke-interface {p0, p1, p2}, Lb3/c;->v(J)F

    move-result p0

    return p0
.end method
