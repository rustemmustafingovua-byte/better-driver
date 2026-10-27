.class public final Lx/d;
.super Lf1/q;
.source "SourceFile"


# instance fields
.field public final synthetic A:Lx/e;

.field public z:Ln2/d;


# direct methods
.method public constructor <init>(Lx/e;)V
    .locals 0

    iput-object p1, p0, Lx/d;->A:Lx/e;

    invoke-direct {p0}, Lf1/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 1

    iget-object v0, p0, Lx/d;->A:Lx/e;

    iput-object p0, v0, Lx/e;->a:Lx/d;

    iget-object v0, v0, Lx/e;->b:Lu9/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lx/d;->M0()V

    :cond_0
    return-void
.end method

.method public final F0()V
    .locals 3

    iget-object v0, p0, Lx/d;->A:Lx/e;

    iget-object v1, v0, Lx/e;->a:Lx/d;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_0

    iput-object v2, v0, Lx/e;->a:Lx/d;

    :cond_0
    iget-object v0, p0, Lx/d;->z:Ln2/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln2/d;->b()V

    :cond_1
    iput-object v2, p0, Lx/d;->z:Ln2/d;

    return-void
.end method

.method public final M0()V
    .locals 6

    new-instance v0, Lp/o0;

    const/16 v1, 0xf

    iget-object v2, p0, Lx/d;->A:Lx/e;

    invoke-direct {v0, v1, p0, v2}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    iget v2, v1, Le2/g0;->m:I

    invoke-static {v1}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v1

    iget-object v3, v1, Ln2/b;->b:Ln2/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Ln2/e;->a:Lk/x;

    new-instance v5, Ln2/d;

    invoke-direct {v5, v3, v2, p0, v0}, Ln2/d;-><init>(Ln2/e;ILx/d;Lp/o0;)V

    invoke-virtual {v4, v2}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v4, v2, v5}, Lk/x;->h(ILjava/lang/Object;)V

    move-object v0, v5

    :cond_0
    check-cast v0, Ln2/d;

    if-eq v0, v5, :cond_2

    :goto_0
    iget-object v3, v0, Ln2/d;->d:Ln2/d;

    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    iput-object v5, v0, Ln2/d;->d:Ln2/d;

    :cond_2
    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget-boolean v0, v0, Le2/g0;->s:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, v1, Ln2/b;->a:Ld1/c0;

    invoke-virtual {v0, v2, v3}, Ld1/c0;->n(IZ)V

    :cond_3
    iput-boolean v3, v1, Ln2/b;->d:Z

    invoke-virtual {v1}, Ln2/b;->i()V

    iput-object v5, p0, Lx/d;->z:Ln2/d;

    return-void
.end method
