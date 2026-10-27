.class public final synthetic Lx/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Lx/f0;

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Lw/j;

.field public final synthetic o:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lx/f0;Lf1/r;Lw/j;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/v;->l:Lx/f0;

    iput-object p2, p0, Lx/v;->m:Lf1/r;

    iput-object p3, p0, Lx/v;->n:Lw/j;

    iput-object p4, p0, Lx/v;->o:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lc1/c;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne p3, v0, :cond_0

    new-instance p3, Lx/u;

    new-instance v1, Lod/a7;

    const/16 v2, 0xe

    iget-object v3, p0, Lx/v;->o:Lr0/u0;

    invoke-direct {v1, v3, v2}, Lod/a7;-><init>(Lr0/u0;I)V

    invoke-direct {p3, p1, v1}, Lx/u;-><init>(Lc1/c;Lod/a7;)V

    invoke-virtual {p2, p3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_0
    check-cast p3, Lx/u;

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    new-instance p1, Lc2/r1;

    new-instance v1, Lk0/l;

    invoke-direct {v1, p3}, Lk0/l;-><init>(Lx/u;)V

    invoke-direct {p1, v1}, Lc2/r1;-><init>(Lc2/u1;)V

    invoke-virtual {p2, p1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast p1, Lc2/r1;

    iget-object v1, p0, Lx/v;->l:Lx/f0;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const v3, 0x67eb8deb

    invoke-virtual {p2, v3}, Lr0/q;->b0(I)V

    const v3, 0x34e696b7

    invoke-virtual {p2, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lx/r0;->a:Lx/q0;

    if-eqz v3, :cond_2

    const v4, 0x503387d0

    invoke-virtual {p2, v4}, Lr0/q;->b0(I)V

    invoke-virtual {p2, v2}, Lr0/q;->q(Z)V

    goto :goto_1

    :cond_2
    const v3, 0x50344781

    invoke-virtual {p2, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lf2/o0;->f:Lr0/s2;

    invoke-virtual {p2, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p2, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    if-ne v5, v0, :cond_6

    :cond_3
    const v4, 0x7f08003a

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lx/p0;

    if-eqz v6, :cond_4

    check-cast v5, Lx/p0;

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_5

    new-instance v5, Lx/b;

    invoke-direct {v5, v3}, Lx/b;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p2, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    move-object v3, v5

    check-cast v3, Lx/p0;

    invoke-virtual {p2, v2}, Lr0/q;->q(Z)V

    :goto_1
    invoke-virtual {p2, v2}, Lr0/q;->q(Z)V

    filled-new-array {v1, p3, p1, v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p2, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p2, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_7

    if-ne v6, v0, :cond_8

    :cond_7
    new-instance v6, Lx/x;

    invoke-direct {v6, v1, p3, p1, v3}, Lx/x;-><init>(Lx/f0;Lx/u;Lc2/r1;Lx/p0;)V

    invoke-virtual {p2, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Li9/c;

    invoke-static {v4, v6, p2}, Lr0/r;->e([Ljava/lang/Object;Li9/c;Lr0/q;)V

    :goto_2
    invoke-virtual {p2, v2}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_9
    const v3, 0x678cf6cd

    invoke-virtual {p2, v3}, Lr0/q;->b0(I)V

    goto :goto_2

    :goto_3
    sget v2, Lx/g0;->a:I

    iget-object v2, p0, Lx/v;->m:Lf1/r;

    if-eqz v1, :cond_b

    new-instance v3, Lx/u0;

    invoke-direct {v3, v1}, Lx/u0;-><init>(Lx/f0;)V

    invoke-interface {v2, v3}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v2, v1

    :cond_b
    :goto_4
    invoke-virtual {p2, p3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, Lx/v;->n:Lw/j;

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_c

    if-ne v3, v0, :cond_d

    :cond_c
    new-instance v3, Lg0/k;

    const/16 v0, 0x1b

    invoke-direct {v3, v0, p3, p0}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v3, Li9/e;

    const/16 p0, 0x8

    invoke-static {p1, v2, v3, p2, p0}, Lc2/x;->a(Lc2/r1;Lf1/r;Li9/e;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
