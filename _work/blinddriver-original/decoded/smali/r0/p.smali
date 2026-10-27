.class public final Lr0/p;
.super Lr0/u;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Z

.field public final c:Z

.field public d:Ljava/util/HashSet;

.field public final e:Ljava/util/LinkedHashSet;

.field public final f:Lr0/e1;

.field public final synthetic g:Lr0/q;


# direct methods
.method public constructor <init>(Lr0/q;JZZLq3/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/p;->g:Lr0/q;

    iput-wide p2, p0, Lr0/p;->a:J

    iput-boolean p4, p0, Lr0/p;->b:Z

    iput-boolean p5, p0, Lr0/p;->c:Z

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lr0/p;->e:Ljava/util/LinkedHashSet;

    sget-object p1, Lz0/h;->o:Lz0/h;

    sget-object p2, Lr0/e;->p:Lr0/e;

    new-instance p3, Lr0/e1;

    invoke-direct {p3, p1, p2}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object p3, p0, Lr0/p;->f:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a(Lr0/x;Li9/e;)V
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0, p1, p2}, Lr0/u;->a(Lr0/x;Li9/e;)V

    return-void
.end method

.method public final b(Lr0/x;Lr0/c2;Li9/e;)Lk/n0;
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0, p1, p2, p3}, Lr0/u;->b(Lr0/x;Lr0/c2;Li9/e;)Lk/n0;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget v0, p0, Lr0/q;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr0/q;->A:I

    return-void
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0}, Lr0/u;->d()Z

    move-result p0

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lr0/p;->b:Z

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lr0/p;->c:Z

    return p0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lr0/p;->a:J

    return-wide v0
.end method

.method public final h()Lr0/t;
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->h:Lr0/x;

    return-object p0
.end method

.method public final i()Lr0/j1;
    .locals 0

    iget-object p0, p0, Lr0/p;->f:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/j1;

    return-object p0
.end method

.method public final j()Ly8/h;
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0}, Lr0/u;->j()Ly8/h;

    move-result-object p0

    return-object p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0}, Lr0/u;->k()Z

    move-result p0

    return p0
.end method

.method public final l(Lr0/x;)V
    .locals 2

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object v0, p0, Lr0/q;->b:Lr0/u;

    iget-object v1, p0, Lr0/q;->h:Lr0/x;

    invoke-virtual {v0, v1}, Lr0/u;->l(Lr0/x;)V

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0, p1}, Lr0/u;->l(Lr0/x;)V

    return-void
.end method

.method public final m(Lr0/t0;)Lr0/s0;
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0, p1}, Lr0/u;->m(Lr0/t0;)Lr0/s0;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lr0/x;Lr0/c2;Lk/n0;)Lk/n0;
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0, p1, p2, p3}, Lr0/u;->n(Lr0/x;Lr0/c2;Lk/n0;)Lk/n0;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lr0/p;->d:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr0/p;->d:Ljava/util/HashSet;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p(Lr0/q;)V
    .locals 0

    iget-object p0, p0, Lr0/p;->e:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q(Lr0/n1;)V
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0, p1}, Lr0/u;->q(Lr0/n1;)V

    return-void
.end method

.method public final r(Lr0/x;)V
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0, p1}, Lr0/u;->r(Lr0/x;)V

    return-void
.end method

.method public final s(Lc2/l0;)Lr0/f;
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0, p1}, Lr0/u;->s(Lc2/l0;)Lr0/f;

    move-result-object p0

    return-object p0
.end method

.method public final t()V
    .locals 1

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget v0, p0, Lr0/q;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr0/q;->A:I

    return-void
.end method

.method public final u(Lr0/q;)V
    .locals 3

    iget-object v0, p0, Lr0/p;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl"

    invoke-static {p1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lr0/q;->z()Le1/d;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lr0/p;->e:Ljava/util/LinkedHashSet;

    instance-of v0, p0, Lk9/a;

    if-eqz v0, :cond_2

    instance-of v0, p0, Lk9/b;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "kotlin.collections.MutableCollection"

    invoke-static {p0, p1}, Lj9/b0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final v(Lr0/x;)V
    .locals 0

    iget-object p0, p0, Lr0/p;->g:Lr0/q;

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0, p1}, Lr0/u;->v(Lr0/x;)V

    return-void
.end method

.method public final w()V
    .locals 6

    iget-object v0, p0, Lr0/p;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lr0/p;->d:Ljava/util/HashSet;

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/q;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v2}, Lr0/q;->z()Le1/d;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method
