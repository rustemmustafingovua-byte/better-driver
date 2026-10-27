.class public final Lr/g2;
.super Lr/o0;
.source "SourceFile"

# interfaces
.implements Lw1/e;
.implements Le2/z1;


# instance fields
.field public T:Lp/j;

.field public U:Lr/k;

.field public final V:Lx1/d;

.field public final W:Lr/t1;

.field public final X:Lr/k;

.field public final Y:Lr/n2;

.field public final Z:Lb6/g0;

.field public final a0:Lk1/b0;

.field public final b0:Lr/i;

.field public c0:Lod/y6;

.field public d0:Lr/e2;

.field public e0:Lgc/f;


# direct methods
.method public constructor <init>(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V
    .locals 10

    move/from16 v9, p6

    sget-object v0, Lr/z1;->a:Lp2/y;

    invoke-direct {p0, v0, v9, p5, p3}, Lr/o0;-><init>(Li9/c;ZLs/i;Lr/m1;)V

    iput-object p1, p0, Lr/g2;->T:Lp/j;

    iput-object p2, p0, Lr/g2;->U:Lr/k;

    new-instance v6, Lx1/d;

    invoke-direct {v6}, Lx1/d;-><init>()V

    iput-object v6, p0, Lr/g2;->V:Lx1/d;

    new-instance v0, Lr/t1;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iput-boolean v9, v0, Lr/t1;->z:Z

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v0, p0, Lr/g2;->W:Lr/t1;

    new-instance v0, Lr/k;

    sget-object v1, Lr/z1;->d:Lr/x1;

    new-instance v2, Lb0/l1;

    invoke-direct {v2, v1}, Lb0/l1;-><init>(Lb3/c;)V

    new-instance v1, Ln/t;

    invoke-direct {v1, v2}, Ln/t;-><init>(Lb0/l1;)V

    invoke-direct {v0, v1}, Lr/k;-><init>(Ln/t;)V

    iput-object v0, p0, Lr/g2;->X:Lr/k;

    iget-object v2, p0, Lr/g2;->T:Lp/j;

    iget-object v1, p0, Lr/g2;->U:Lr/k;

    if-nez v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    new-instance v0, Lr/n2;

    new-instance v8, Lr/b2;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lr/b2;-><init>(Lr/g2;I)V

    move-object v7, p0

    move-object v4, p3

    move-object v1, p4

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lr/n2;-><init>(Lr/h2;Lp/j;Lr/k;Lr/m1;ZLx1/d;Lr/g2;Lr/b2;)V

    iput-object v0, p0, Lr/g2;->Y:Lr/n2;

    new-instance v1, Lb6/g0;

    invoke-direct {v1, v0, v9}, Lb6/g0;-><init>(Ljava/lang/Object;Z)V

    iput-object v1, p0, Lr/g2;->Z:Lb6/g0;

    new-instance v2, Lk1/b0;

    const/16 v3, 0xa

    const/4 v5, 0x2

    const/4 v8, 0x0

    invoke-direct {v2, v5, v3, v8}, Lk1/b0;-><init>(IILi9/e;)V

    invoke-virtual {p0, v2}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v2, p0, Lr/g2;->a0:Lk1/b0;

    new-instance v2, Lr/i;

    new-instance v3, Lr/b2;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5}, Lr/b2;-><init>(Lr/g2;I)V

    move/from16 v5, p7

    invoke-direct {v2, p3, v0, v5, v3}, Lr/i;-><init>(Lr/m1;Lr/n2;ZLr/b2;)V

    invoke-virtual {p0, v2}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v2, p0, Lr/g2;->b0:Lr/i;

    new-instance v0, Lx1/i;

    invoke-direct {v0, v1, v6}, Lx1/i;-><init>(Lx1/a;Lx1/d;)V

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    new-instance v0, Ly/g;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iput-object v2, v0, Ly/g;->z:Lr/i;

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/KeyEvent;)Z
    .locals 11

    iget-boolean v0, p0, Lr/o0;->D:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Lw1/c;->b(Landroid/view/KeyEvent;)J

    move-result-wide v0

    sget-wide v2, Lw1/a;->D:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lw1/c;->a(I)J

    move-result-wide v0

    sget-wide v2, Lw1/a;->C:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {p1}, Lw1/c;->c(Landroid/view/KeyEvent;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lr/g2;->Y:Lr/n2;

    iget-object v0, v0, Lr/n2;->d:Lr/m1;

    sget-object v1, Lr/m1;->l:Lr/m1;

    const/4 v2, 0x0

    iget-object v3, p0, Lr/g2;->b0:Lr/i;

    const/16 v4, 0x20

    const-wide v5, 0xffffffffL

    if-ne v0, v1, :cond_2

    iget-wide v0, v3, Lr/i;->F:J

    and-long/2addr v0, v5

    long-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Lw1/c;->a(I)J

    move-result-wide v7

    sget-wide v9, Lw1/a;->C:J

    invoke-static {v7, v8, v9, v10}, Lw1/a;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    int-to-float p1, v0

    goto :goto_0

    :cond_1
    int-to-float p1, v0

    neg-float p1, p1

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    :goto_1
    int-to-long v2, p1

    shl-long/2addr v0, v4

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    move-wide v4, v0

    goto :goto_3

    :cond_2
    iget-wide v0, v3, Lr/i;->F:J

    shr-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Lw1/c;->a(I)J

    move-result-wide v7

    sget-wide v9, Lw1/a;->C:J

    invoke-static {v7, v8, v9, v10}, Lw1/a;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    int-to-float p1, v0

    goto :goto_2

    :cond_3
    int-to-float p1, v0

    neg-float p1, p1

    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object p1

    new-instance v2, Lr/e2;

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lr/e2;-><init>(Lr/g2;JLy8/c;I)V

    const/4 p0, 0x3

    invoke-static {p1, v6, v6, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final C(Lm2/x;)V
    .locals 4

    iget-boolean v0, p0, Lr/o0;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr/g2;->c0:Lod/y6;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr/g2;->d0:Lr/e2;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lod/y6;

    const/4 v2, 0x5

    invoke-direct {v0, v2, p0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lr/g2;->c0:Lod/y6;

    new-instance v0, Lr/e2;

    invoke-direct {v0, p0, v1}, Lr/e2;-><init>(Lr/g2;Ly8/c;)V

    iput-object v0, p0, Lr/g2;->d0:Lr/e2;

    :cond_1
    iget-object v0, p0, Lr/g2;->c0:Lod/y6;

    if-eqz v0, :cond_2

    sget-object v2, Lm2/v;->a:[Lp9/d;

    sget-object v2, Lm2/l;->d:Lm2/w;

    new-instance v3, Lm2/a;

    invoke-direct {v3, v1, v0}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lr/g2;->d0:Lr/e2;

    if-eqz p0, :cond_3

    sget-object v0, Lm2/v;->a:[Lp9/d;

    sget-object v0, Lm2/l;->e:Lm2/w;

    invoke-interface {p1, v0, p0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final E0()V
    .locals 3

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget-object v0, v0, Le2/g0;->K:Lb3/c;

    iget-object v1, p0, Lr/g2;->X:Lr/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lb0/l1;

    invoke-direct {v2, v0}, Lb0/l1;-><init>(Lb3/c;)V

    new-instance v0, Ln/t;

    invoke-direct {v0, v2}, Ln/t;-><init>(Lb0/l1;)V

    iput-object v0, v1, Lr/k;->a:Ln/t;

    :goto_0
    iget-object v0, p0, Lr/g2;->e0:Lgc/f;

    if-eqz v0, :cond_1

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->K:Lb3/c;

    iput-object p0, v0, Lgc/f;->e:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final T0(Lr/n0;Lr/n0;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lp/n1;->m:Lp/n1;

    new-instance v1, Landroidx/lifecycle/m0;

    const/4 v2, 0x0

    const/16 v3, 0x12

    iget-object p0, p0, Lr/g2;->Y:Lr/n2;

    invoke-direct {v1, p1, p0, v2, v3}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {p0, v0, v1, p2}, Lr/n2;->f(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final Y0(J)V
    .locals 0

    return-void
.end method

.method public final Z0(Lr/v;)V
    .locals 4

    iget-object v0, p0, Lr/g2;->V:Lx1/d;

    invoke-virtual {v0}, Lx1/d;->c()Lu9/t;

    move-result-object v0

    new-instance v1, Lp/b;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, p1, p0, v3, v2}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lr/o0;->F()V

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget-object v0, v0, Le2/g0;->K:Lb3/c;

    iget-object v1, p0, Lr/g2;->X:Lr/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lb0/l1;

    invoke-direct {v2, v0}, Lb0/l1;-><init>(Lb3/c;)V

    new-instance v0, Ln/t;

    invoke-direct {v0, v2}, Ln/t;-><init>(Lb0/l1;)V

    iput-object v0, v1, Lr/k;->a:Ln/t;

    :goto_0
    iget-object v0, p0, Lr/g2;->e0:Lgc/f;

    if-eqz v0, :cond_1

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->K:Lb3/c;

    iput-object p0, v0, Lgc/f;->e:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final e1()Z
    .locals 4

    iget-object p0, p0, Lr/g2;->Y:Lr/n2;

    iget-object v0, p0, Lr/n2;->a:Lr/h2;

    invoke-interface {v0}, Lr/h2;->a()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lr/n2;->b:Lp/j;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lp/j;->c:Lp/l0;

    iget-object v0, p0, Lp/l0;->d:Landroid/widget/EdgeEffect;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_0

    invoke-static {v0}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    cmpg-float v0, v0, v2

    if-nez v0, :cond_8

    :cond_1
    iget-object v0, p0, Lp/l0;->e:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_2

    invoke-static {v0}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    cmpg-float v0, v0, v2

    if-nez v0, :cond_8

    :cond_3
    iget-object v0, p0, Lp/l0;->f:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_4

    invoke-static {v0}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    cmpg-float v0, v0, v2

    if-nez v0, :cond_8

    :cond_5
    iget-object p0, p0, Lp/l0;->g:Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_6

    invoke-static {p0}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result p0

    goto :goto_3

    :cond_6
    move p0, v2

    :goto_3
    cmpg-float p0, p0, v2

    if-nez p0, :cond_8

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h1(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V
    .locals 10

    move/from16 v2, p6

    move/from16 v3, p7

    iget-boolean v4, p0, Lr/o0;->D:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Lr/g2;->Z:Lb6/g0;

    iput-boolean v2, v4, Lb6/g0;->l:Z

    iget-object v4, p0, Lr/g2;->W:Lr/t1;

    iput-boolean v2, v4, Lr/t1;->z:Z

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-nez p2, :cond_1

    iget-object v4, p0, Lr/g2;->X:Lr/k;

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    iget-object v8, p0, Lr/g2;->Y:Lr/n2;

    iget-object v9, v8, Lr/n2;->a:Lr/h2;

    invoke-static {v9, p4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iput-object p4, v8, Lr/n2;->a:Lr/h2;

    move v6, v5

    :cond_2
    iput-object p1, v8, Lr/n2;->b:Lp/j;

    iget-object v1, v8, Lr/n2;->d:Lr/m1;

    if-eq v1, p3, :cond_3

    iput-object p3, v8, Lr/n2;->d:Lr/m1;

    move v6, v5

    :cond_3
    iget-boolean v1, v8, Lr/n2;->e:Z

    if-eq v1, v3, :cond_4

    iput-boolean v3, v8, Lr/n2;->e:Z

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    iput-object v4, v8, Lr/n2;->c:Lr/k;

    iget-object v1, p0, Lr/g2;->V:Lx1/d;

    iput-object v1, v8, Lr/n2;->f:Lx1/d;

    iget-object v1, p0, Lr/g2;->b0:Lr/i;

    iput-object p3, v1, Lr/i;->z:Lr/m1;

    iput-boolean v3, v1, Lr/i;->B:Z

    iput-object p1, p0, Lr/g2;->T:Lp/j;

    iput-object p2, p0, Lr/g2;->U:Lr/k;

    sget-object v1, Lr/z1;->a:Lp2/y;

    iget-object p1, v8, Lr/n2;->d:Lr/m1;

    sget-object p2, Lr/m1;->l:Lr/m1;

    if-ne p1, p2, :cond_5

    :goto_3
    move-object v0, p0

    move-object v4, p2

    move-object v3, p5

    goto :goto_4

    :cond_5
    sget-object p2, Lr/m1;->m:Lr/m1;

    goto :goto_3

    :goto_4
    invoke-virtual/range {v0 .. v5}, Lr/o0;->g1(Li9/c;ZLs/i;Lr/m1;Z)V

    if-eqz v7, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lr/g2;->c0:Lod/y6;

    iput-object p1, p0, Lr/g2;->d0:Lr/e2;

    invoke-static {p0}, Le2/l;->m(Le2/z1;)V

    :cond_6
    return-void
.end method

.method public final w0(Ly1/l;Ly1/m;J)V
    .locals 15

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v8, Ly1/l;->a:Ljava/lang/Object;

    iget-object v10, v8, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v11, 0x0

    move v3, v11

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly1/u;

    iget-object v5, p0, Lr/o0;->C:Li9/c;

    iget v4, v4, Ly1/u;->i:I

    new-instance v6, Ly1/c0;

    invoke-direct {v6, v4}, Ly1/c0;-><init>(I)V

    invoke-interface {v5, v6}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-super/range {p0 .. p4}, Lr/o0;->w0(Ly1/l;Ly1/m;J)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lr/o0;->D:Z

    if-eqz v0, :cond_7

    sget-object v0, Ly1/m;->l:Ly1/m;

    const/4 v12, 0x6

    if-ne v9, v0, :cond_3

    iget v0, v8, Ly1/l;->f:I

    if-ne v0, v12, :cond_3

    iget-object v0, p0, Lr/g2;->e0:Lgc/f;

    if-nez v0, :cond_2

    new-instance v13, Lgc/f;

    new-instance v14, Lq3/k;

    invoke-static {p0}, Le2/l;->x(Le2/j;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v14, v1, v0}, Lq3/k;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lr/c2;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-class v3, Lr/g2;

    const-string v4, "onWheelScrollStopped"

    const-string v5, "onWheelScrollStopped-TH1AsA0(J)V"

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lr/c2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    iget-object v1, v1, Le2/g0;->K:Lb3/c;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iget-object v3, p0, Lr/g2;->Y:Lr/n2;

    iput-object v3, v13, Lgc/f;->b:Ljava/lang/Object;

    iput-object v14, v13, Lgc/f;->c:Ljava/lang/Object;

    iput-object v0, v13, Lgc/f;->d:Ljava/io/Serializable;

    iput-object v1, v13, Lgc/f;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x6

    const v3, 0x7fffffff

    invoke-static {v3, v1, v0}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v0

    iput-object v0, v13, Lgc/f;->f:Ljava/lang/Object;

    new-instance v0, Lk0/l;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lk0/l;-><init>(I)V

    iput-object v0, v13, Lgc/f;->h:Ljava/lang/Object;

    iput-object v13, p0, Lr/g2;->e0:Lgc/f;

    :cond_2
    iget-object v0, p0, Lr/g2;->e0:Lgc/f;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v1

    iget-object v3, v0, Lgc/f;->g:Ljava/lang/Object;

    check-cast v3, Lu9/j1;

    if-nez v3, :cond_3

    new-instance v3, Lp/b;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v4}, Lp/b;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v1, v5, v5, v3, v4}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v1

    iput-object v1, v0, Lgc/f;->g:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lr/g2;->e0:Lgc/f;

    if-eqz v0, :cond_7

    iget v1, v8, Ly1/l;->f:I

    if-ne v1, v12, :cond_7

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v11

    :goto_2
    if-ge v2, v1, :cond_5

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/u;

    invoke-virtual {v3}, Ly1/u;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sget-object v1, Ly1/m;->l:Ly1/m;

    if-ne v9, v1, :cond_6

    iget-boolean v1, v0, Lgc/f;->a:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0, v8}, Lgc/f;->g(Ly1/l;)Z

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v11

    :goto_3
    if-ge v2, v1, :cond_6

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/u;

    invoke-virtual {v3}, Ly1/u;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    sget-object v1, Ly1/m;->m:Ly1/m;

    if-ne v9, v1, :cond_7

    iget-boolean v1, v0, Lgc/f;->a:Z

    if-nez v1, :cond_7

    invoke-virtual {v0, v8}, Lgc/f;->g(Ly1/l;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_4
    if-ge v11, v0, :cond_7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/u;

    invoke-virtual {v1}, Ly1/u;->a()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method
