.class public final Lp/h1;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/o;
.implements Le2/n;
.implements Le2/z1;
.implements Le2/l1;


# instance fields
.field public A:Li9/c;

.field public B:Lp/v1;

.field public C:Landroid/view/View;

.field public D:Lb3/c;

.field public E:Lm2/j;

.field public final F:Lr0/e1;

.field public G:Lr0/d0;

.field public H:J

.field public I:Lb3/l;

.field public J:Lw9/e;

.field public z:Li9/c;


# direct methods
.method public constructor <init>(Li9/c;Li9/c;Lp/v1;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Lp/h1;->z:Li9/c;

    iput-object p2, p0, Lp/h1;->A:Li9/c;

    iput-object p3, p0, Lp/h1;->B:Lp/v1;

    sget-object p1, Lr0/e;->o:Lr0/e;

    new-instance p2, Lr0/e1;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object p2, p0, Lp/h1;->F:Lr0/e1;

    const-wide p1, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide p1, p0, Lp/h1;->H:J

    return-void
.end method


# virtual methods
.method public final C(Lm2/x;)V
    .locals 3

    sget-object v0, Lp/i1;->a:Lm2/w;

    new-instance v1, Lp/g1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lp/g1;-><init>(Lp/h1;I)V

    invoke-interface {p1, v0, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-void
.end method

.method public final E0()V
    .locals 5

    invoke-virtual {p0}, Lp/h1;->d0()V

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v0

    iput-object v0, p0, Lp/h1;->J:Lw9/e;

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v3, Lad/w;

    const/16 v4, 0x10

    invoke-direct {v3, p0, v2, v4}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x1

    invoke-static {v0, v2, v1, v3, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final F0()V
    .locals 1

    iget-object v0, p0, Lp/h1;->E:Lm2/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lm2/j;->m:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp/h1;->E:Lm2/j;

    return-void
.end method

.method public final M0()J
    .locals 2

    iget-object v0, p0, Lp/h1;->G:Lr0/d0;

    if-nez v0, :cond_0

    new-instance v0, Lp/g1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lp/g1;-><init>(Lp/h1;I)V

    invoke-static {v0}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object v0

    iput-object v0, p0, Lp/h1;->G:Lr0/d0;

    :cond_0
    iget-object p0, p0, Lp/h1;->G:Lr0/d0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    iget-wide v0, p0, Ll1/b;->a:J

    return-wide v0

    :cond_1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    return-wide v0
.end method

.method public final N0()V
    .locals 3

    iget-object v0, p0, Lp/h1;->E:Lm2/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lm2/j;->m:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    :cond_0
    iget-object v0, p0, Lp/h1;->C:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {p0}, Le2/l;->x(Le2/j;)Landroid/view/View;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lp/h1;->C:Landroid/view/View;

    iget-object v1, p0, Lp/h1;->D:Lb3/c;

    if-nez v1, :cond_2

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    iget-object v1, v1, Le2/g0;->K:Lb3/c;

    :cond_2
    iput-object v1, p0, Lp/h1;->D:Lb3/c;

    iget-object v1, p0, Lp/h1;->B:Lp/v1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lm2/j;

    new-instance v2, Landroid/widget/Magnifier;

    invoke-direct {v2, v0}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    const/16 v0, 0x19

    invoke-direct {v1, v0, v2}, Lm2/j;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lp/h1;->E:Lm2/j;

    invoke-virtual {p0}, Lp/h1;->P0()V

    return-void
.end method

.method public final O0()V
    .locals 11

    iget-object v0, p0, Lp/h1;->D:Lb3/c;

    if-nez v0, :cond_0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget-object v0, v0, Le2/g0;->K:Lb3/c;

    iput-object v0, p0, Lp/h1;->D:Lb3/c;

    :cond_0
    iget-object v1, p0, Lp/h1;->z:Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/b;

    iget-wide v0, v0, Ll1/b;->a:J

    const-wide v2, 0x7fffffff7fffffffL

    and-long v4, v0, v2

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lp/h1;->M0()J

    move-result-wide v4

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lp/h1;->M0()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ll1/b;->e(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lp/h1;->H:J

    iget-object v0, p0, Lp/h1;->E:Lm2/j;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lp/h1;->N0()V

    :cond_1
    iget-object v0, p0, Lp/h1;->E:Lm2/j;

    if-eqz v0, :cond_4

    iget-wide v1, p0, Lp/h1;->H:J

    iget-object v0, v0, Lm2/j;->m:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Magnifier;

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/Magnifier;->setZoom(F)V

    :cond_2
    const-wide v3, 0x7fffffff7fffffffL

    and-long/2addr v3, v6

    const-wide v8, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v3, v3, v8

    const-wide v4, 0xffffffffL

    const/16 v8, 0x20

    if-eqz v3, :cond_3

    shr-long v9, v1, v8

    long-to-int v3, v9

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    and-long/2addr v1, v4

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v8, v6, v8

    long-to-int v2, v8

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/widget/Magnifier;->show(FFFF)V

    goto :goto_0

    :cond_3
    shr-long v6, v1, v8

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    and-long/2addr v1, v4

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/Magnifier;->show(FF)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lp/h1;->P0()V

    return-void

    :cond_5
    iput-wide v6, p0, Lp/h1;->H:J

    iget-object p0, p0, Lp/h1;->E:Lm2/j;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lm2/j;->m:Ljava/lang/Object;

    check-cast p0, Landroid/widget/Magnifier;

    invoke-virtual {p0}, Landroid/widget/Magnifier;->dismiss()V

    :cond_6
    return-void
.end method

.method public final P0()V
    .locals 6

    iget-object v0, p0, Lp/h1;->E:Lm2/j;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lp/h1;->D:Lb3/c;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lm2/j;->f()J

    move-result-wide v2

    iget-object v4, p0, Lp/h1;->I:Lb3/l;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v4, v4, Lb3/l;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :goto_1
    iget-object v2, p0, Lp/h1;->A:Li9/c;

    invoke-virtual {v0}, Lm2/j;->f()J

    move-result-wide v3

    invoke-static {v3, v4}, Ly4/s;->E(J)J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lb3/c;->n(J)J

    move-result-wide v3

    new-instance v1, Lb3/h;

    invoke-direct {v1, v3, v4}, Lb3/h;-><init>(J)V

    invoke-interface {v2, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lm2/j;->f()J

    move-result-wide v0

    new-instance v2, Lb3/l;

    invoke-direct {v2, v0, v1}, Lb3/l;-><init>(J)V

    iput-object v2, p0, Lp/h1;->I:Lb3/l;

    :cond_3
    return-void
.end method

.method public final d0()V
    .locals 2

    new-instance v0, Lp/g1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lp/g1;-><init>(Lp/h1;I)V

    invoke-static {p0, v0}, Le2/l;->r(Lf1/q;Li9/a;)V

    return-void
.end method

.method public final q0(Le2/h1;)V
    .locals 0

    iget-object p0, p0, Lp/h1;->F:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final z(Le2/j0;)V
    .locals 0

    invoke-virtual {p1}, Le2/j0;->b()V

    iget-object p0, p0, Lp/h1;->J:Lw9/e;

    if-eqz p0, :cond_0

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-interface {p0, p1}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
