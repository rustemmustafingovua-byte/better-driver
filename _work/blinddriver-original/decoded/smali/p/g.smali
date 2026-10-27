.class public abstract Lp/g;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/v1;
.implements Lw1/e;
.implements Le2/z1;
.implements Le2/e2;
.implements Le2/i;
.implements Le2/l1;
.implements Lv1/c;


# static fields
.field public static final W:Lp/v1;


# instance fields
.field public B:Ls/i;

.field public C:Lp/e1;

.field public D:Z

.field public E:Ljava/lang/String;

.field public F:Lm2/h;

.field public G:Z

.field public H:Li9/a;

.field public final I:Lp/p0;

.field public J:Lp/e1;

.field public K:Ly1/k0;

.field public L:Le2/j;

.field public M:Ls/k;

.field public N:Ls/f;

.field public final O:Lk/b0;

.field public P:J

.field public Q:Ls/k;

.field public R:Ls/i;

.field public S:Z

.field public T:Lg5/e;

.field public U:Lu9/j1;

.field public final V:Lp/v1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/v1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp/g;->W:Lp/v1;

    return-void
.end method

.method public constructor <init>(Ls/i;Lp/e1;ZZLjava/lang/String;Lm2/h;Li9/a;)V
    .locals 9

    invoke-direct {p0}, Le2/k;-><init>()V

    iput-object p1, p0, Lp/g;->B:Ls/i;

    iput-object p2, p0, Lp/g;->C:Lp/e1;

    iput-boolean p3, p0, Lp/g;->D:Z

    iput-object p5, p0, Lp/g;->E:Ljava/lang/String;

    iput-object p6, p0, Lp/g;->F:Lm2/h;

    iput-boolean p4, p0, Lp/g;->G:Z

    move-object/from16 p2, p7

    iput-object p2, p0, Lp/g;->H:Li9/a;

    new-instance p2, Lp/p0;

    new-instance v0, Lb0/k2;

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v1, 0x1

    const-class v3, Lp/g;

    const-string v4, "onFocusChange"

    const-string v5, "onFocusChange(Z)V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lb0/k2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, v0}, Lp/p0;-><init>(Ls/i;ILb0/k2;)V

    iput-object p2, p0, Lp/g;->I:Lp/p0;

    sget-object p1, Lk/o;->a:Lk/b0;

    new-instance p1, Lk/b0;

    invoke-direct {p1}, Lk/b0;-><init>()V

    iput-object p1, p0, Lp/g;->O:Lk/b0;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lp/g;->P:J

    iget-object p1, p0, Lp/g;->B:Ls/i;

    iput-object p1, p0, Lp/g;->R:Ls/i;

    if-nez p1, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Lp/g;->S:Z

    sget-object p1, Lp/g;->W:Lp/v1;

    iput-object p1, p0, Lp/g;->V:Lp/v1;

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/KeyEvent;)Z
    .locals 10

    invoke-virtual {p0}, Lp/g;->W0()V

    invoke-static {p1}, Lw1/c;->b(Landroid/view/KeyEvent;)J

    move-result-wide v0

    iget-boolean v2, p0, Lp/g;->G:Z

    const/4 v3, 0x3

    const/4 v4, 0x0

    iget-object v5, p0, Lp/g;->O:Lk/b0;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    invoke-static {p1}, Lw1/c;->c(Landroid/view/KeyEvent;)I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_2

    invoke-static {p1}, Lp/o;->p(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v5, v0, v1}, Lk/b0;->b(J)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ls/k;

    iget-wide v8, p0, Lp/g;->P:J

    invoke-direct {v2, v8, v9}, Ls/k;-><init>(J)V

    invoke-virtual {v5, v0, v1, v2}, Lk/b0;->h(JLjava/lang/Object;)V

    iget-object v0, p0, Lp/g;->B:Ls/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    new-instance v1, Lp/e;

    const/4 v5, 0x2

    invoke-direct {v1, p0, v2, v4, v5}, Lp/e;-><init>(Lp/g;Ls/k;Ly8/c;I)V

    invoke-static {v0, v4, v4, v1, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    invoke-virtual {p0, p1}, Lp/g;->Y0(Landroid/view/KeyEvent;)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lp/g;->G:Z

    if-eqz v2, :cond_6

    invoke-static {p1}, Lw1/c;->c(Landroid/view/KeyEvent;)I

    move-result v2

    if-ne v2, v6, :cond_6

    invoke-static {p1}, Lp/o;->p(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5, v0, v1}, Lk/b0;->g(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/k;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lp/g;->B:Ls/i;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v1

    new-instance v2, Lp/e;

    const/4 v5, 0x3

    invoke-direct {v2, p0, v0, v4, v5}, Lp/e;-><init>(Lp/g;Ls/k;Ly8/c;I)V

    invoke-static {v1, v4, v4, v2, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_3
    invoke-virtual {p0, p1}, Lp/g;->Z0(Landroid/view/KeyEvent;)V

    :cond_4
    if-eqz v0, :cond_6

    :cond_5
    :goto_1
    return v6

    :cond_6
    return v7
.end method

.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final C(Lm2/x;)V
    .locals 4

    iget-object v0, p0, Lp/g;->F:Lm2/h;

    if-eqz v0, :cond_0

    iget v0, v0, Lm2/h;->a:I

    invoke-static {p1, v0}, Lm2/v;->c(Lm2/x;I)V

    :cond_0
    iget-object v0, p0, Lp/g;->E:Ljava/lang/String;

    new-instance v1, Lp/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lp/a;-><init>(Lp/g;I)V

    sget-object v2, Lm2/v;->a:[Lp9/d;

    sget-object v2, Lm2/l;->b:Lm2/w;

    new-instance v3, Lm2/a;

    invoke-direct {v3, v0, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lp/g;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp/g;->I:Lp/p0;

    invoke-virtual {v0, p1}, Lp/p0;->C(Lm2/x;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lm2/t;->i:Lm2/w;

    sget-object v1, Lt8/z;->a:Lt8/z;

    invoke-interface {p1, v0, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lp/g;->P0(Lm2/x;)V

    return-void
.end method

.method public final E(Ld1/c0;Ly1/m;)V
    .locals 9

    iget-object p1, p1, Ld1/c0;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lp/g;->W0()V

    iget-boolean v0, p0, Lp/g;->G:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lp/g;->T:Lg5/e;

    if-nez v0, :cond_0

    new-instance v0, Lg5/e;

    invoke-direct {v0, p0}, Lg5/e;-><init>(Lp/g;)V

    iput-object v0, p0, Lp/g;->T:Lg5/e;

    :cond_0
    iget-object v0, p0, Lp/g;->T:Lg5/e;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lp/g;->H:Li9/a;

    iget-object v1, v0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v1, Lp/g;

    sget-object v2, Ly1/m;->m:Ly1/m;

    const/4 v3, 0x0

    if-ne p2, v2, :cond_8

    iget-object p2, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p2, Lv1/b;

    const/4 v2, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p2, v3

    :goto_0
    if-ge p2, p0, :cond_a

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv1/b;

    iget-boolean v5, v4, Lv1/b;->h:Z

    if-nez v5, :cond_1

    iget-boolean v4, v4, Lv1/b;->d:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv1/b;

    iput-object p0, v0, Lg5/e;->n:Ljava/lang/Object;

    iget-wide p1, p0, Lv1/b;->c:J

    invoke-virtual {v1, v2, p1, p2}, Lp/g;->V0(ZJ)V

    iput-boolean v2, p0, Lv1/b;->i:Z

    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-wide v4, p2, Lv1/b;->c:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v6, v3

    :goto_1
    if-ge v6, p2, :cond_4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv1/b;

    iget-boolean v8, v7, Lv1/b;->h:Z

    if-eqz v8, :cond_3

    iget-boolean v7, v7, Lv1/b;->d:Z

    if-eqz v7, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv1/b;

    iget-wide p0, p0, Lv1/b;->c:J

    invoke-static {p0, p1, v4, v5}, Ll1/b;->d(JJ)J

    move-result-wide p0

    sget-object p2, Lf2/l1;->s:Lr0/s2;

    invoke-static {v1, p2}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf2/p2;

    invoke-interface {p2}, Lf2/p2;->f()F

    move-result p2

    invoke-static {p0, p1}, Ll1/b;->c(J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_a

    invoke-virtual {v0}, Lg5/e;->q()V

    return-void

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v6, v3

    :goto_2
    if-ge v6, p2, :cond_7

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv1/b;

    iget-boolean v8, v7, Lv1/b;->i:Z

    if-nez v8, :cond_5

    iget-boolean v8, v7, Lv1/b;->h:Z

    if-eqz v8, :cond_5

    iget-boolean v7, v7, Lv1/b;->d:Z

    if-nez v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_3
    if-ge v3, p0, :cond_a

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv1/b;

    iget-boolean p2, p2, Lv1/b;->i:Z

    if-eqz p2, :cond_6

    invoke-virtual {v0}, Lg5/e;->q()V

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv1/b;

    iput-boolean v2, p1, Lv1/b;->i:Z

    invoke-virtual {v1, v2, v4, v5}, Lp/g;->U0(ZJ)V

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, v0, Lg5/e;->n:Ljava/lang/Object;

    return-void

    :cond_8
    sget-object p0, Ly1/m;->n:Ly1/m;

    if-ne p2, p0, :cond_a

    iget-object p0, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p0, Lv1/b;

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_4
    if-ge v3, p0, :cond_a

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv1/b;

    iget-boolean v1, p2, Lv1/b;->i:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v1, Lv1/b;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v0}, Lg5/e;->q()V

    return-void

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method public final E0()V
    .locals 1

    invoke-virtual {p0}, Lp/g;->d0()V

    iget-boolean v0, p0, Lp/g;->S:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lp/g;->W0()V

    :cond_0
    iget-boolean v0, p0, Lp/g;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp/g;->I:Lp/p0;

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    :cond_1
    return-void
.end method

.method public F()V
    .locals 3

    iget-object v0, p0, Lp/g;->B:Ls/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lp/g;->N:Ls/f;

    if-eqz v1, :cond_0

    new-instance v2, Ls/g;

    invoke-direct {v2, v1}, Ls/g;-><init>(Ls/f;)V

    invoke-virtual {v0, v2}, Ls/i;->b(Ls/h;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp/g;->N:Ls/f;

    iget-object p0, p0, Lp/g;->K:Ly1/k0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ly1/k0;->F()V

    :cond_1
    return-void
.end method

.method public final F0()V
    .locals 2

    invoke-virtual {p0}, Lp/g;->S0()V

    iget-object v0, p0, Lp/g;->R:Ls/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lp/g;->B:Ls/i;

    :cond_0
    iget-object v0, p0, Lp/g;->L:Le2/j;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Le2/k;->N0(Le2/j;)V

    :cond_1
    iput-object v1, p0, Lp/g;->L:Le2/j;

    return-void
.end method

.method public P0(Lm2/x;)V
    .locals 0

    return-void
.end method

.method public abstract Q0()Ly1/k0;
.end method

.method public final R0()Z
    .locals 4

    new-instance v0, Lj9/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lm0/v0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lm0/v0;-><init>(Lj9/u;I)V

    sget-object v3, Lr/t1;->A:Lmb/q;

    invoke-static {p0, v3, v1}, Le2/l;->y(Le2/j;Ljava/lang/Object;Li9/c;)V

    iget-boolean v0, v0, Lj9/u;->l:Z

    if-nez v0, :cond_2

    sget v0, Lp/b0;->b:I

    invoke-static {p0}, Le2/l;->x(Le2/j;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    return v2
.end method

.method public final S0()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lp/g;->B:Ls/i;

    iget-object v2, v0, Lp/g;->O:Lk/b0;

    if-eqz v1, :cond_6

    iget-object v3, v0, Lp/g;->M:Ls/k;

    if-eqz v3, :cond_0

    new-instance v4, Ls/j;

    invoke-direct {v4, v3}, Ls/j;-><init>(Ls/k;)V

    invoke-virtual {v1, v4}, Ls/i;->b(Ls/h;)V

    :cond_0
    iget-object v3, v0, Lp/g;->Q:Ls/k;

    if-eqz v3, :cond_1

    new-instance v4, Ls/j;

    invoke-direct {v4, v3}, Ls/j;-><init>(Ls/k;)V

    invoke-virtual {v1, v4}, Ls/i;->b(Ls/h;)V

    :cond_1
    iget-object v3, v0, Lp/g;->N:Ls/f;

    if-eqz v3, :cond_2

    new-instance v4, Ls/g;

    invoke-direct {v4, v3}, Ls/g;-><init>(Ls/f;)V

    invoke-virtual {v1, v4}, Ls/i;->b(Ls/h;)V

    :cond_2
    iget-object v3, v2, Lk/b0;->c:[Ljava/lang/Object;

    iget-object v4, v2, Lk/b0;->a:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_6

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    aget-wide v8, v4, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v6

    :goto_1
    if-ge v12, v10, :cond_4

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_3

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v3, v13

    check-cast v13, Ls/k;

    new-instance v14, Ls/j;

    invoke-direct {v14, v13}, Ls/j;-><init>(Ls/k;)V

    invoke-virtual {v1, v14}, Ls/i;->b(Ls/h;)V

    :cond_3
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    if-ne v10, v11, :cond_6

    :cond_5
    if-eq v7, v5, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lp/g;->M:Ls/k;

    iput-object v1, v0, Lp/g;->Q:Ls/k;

    iput-object v1, v0, Lp/g;->N:Ls/f;

    invoke-virtual {v2}, Lk/b0;->a()V

    return-void
.end method

.method public final T0(Z)V
    .locals 7

    iget-object v1, p0, Lp/g;->B:Ls/i;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lp/g;->U:Lu9/j1;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu9/c1;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lp/g;->U:Lu9/j1;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lp/g;->Q:Ls/k;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lp/g;->M:Ls/k;

    :goto_0
    if-eqz v0, :cond_3

    new-instance v2, Ls/j;

    invoke-direct {v2, v0}, Ls/j;-><init>(Ls/k;)V

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    check-cast v0, Lz9/d;

    iget-object v0, v0, Lz9/d;->l:Ly8/h;

    sget-object v3, Lu9/q;->m:Lu9/q;

    invoke-interface {v0, v3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    check-cast v0, Lu9/v0;

    if-eqz v0, :cond_2

    new-instance v3, Lb0/r0;

    const/16 v5, 0x1b

    invoke-direct {v3, v5, v1, v2}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Lu9/v0;->P(Li9/c;)Lu9/g0;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v6

    new-instance v0, Landroidx/lifecycle/m0;

    const/16 v5, 0xb

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v1, 0x3

    invoke-static {v6, v4, v4, v0, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    iput-object v4, p0, Lp/g;->Q:Ls/k;

    return-void

    :cond_4
    iput-object v4, p0, Lp/g;->M:Ls/k;

    :cond_5
    return-void
.end method

.method public final U0(ZJ)V
    .locals 10

    iget-object v4, p0, Lp/g;->B:Ls/i;

    if-eqz v4, :cond_4

    iget-object v1, p0, Lp/g;->U:Lu9/j1;

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lu9/c1;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1, v8}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v9

    new-instance v0, Lb0/m2;

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lb0/m2;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ly8/c;I)V

    invoke-static {v9, v8, v8, v0, v7}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lp/g;->Q:Ls/k;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lp/g;->M:Ls/k;

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object p3

    new-instance v0, Lp/d;

    invoke-direct {v0, p2, v4, v8}, Lp/d;-><init>(Ls/k;Ls/i;Ly8/c;)V

    invoke-static {p3, v8, v8, v0, v7}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    iput-object v8, p0, Lp/g;->Q:Ls/k;

    return-void

    :cond_3
    iput-object v8, p0, Lp/g;->M:Ls/k;

    :cond_4
    return-void
.end method

.method public final V0(ZJ)V
    .locals 7

    iget-object v1, p0, Lp/g;->B:Ls/i;

    if-eqz v1, :cond_2

    new-instance v2, Ls/k;

    invoke-direct {v2, p2, p3}, Ls/k;-><init>(J)V

    invoke-virtual {p0}, Lp/g;->R0()Z

    move-result p2

    const/4 p3, 0x3

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object p2

    new-instance v0, Lb0/n2;

    const/4 v5, 0x0

    move-object v4, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lb0/n2;-><init>(Ls/i;Ls/k;ZLp/g;Ly8/c;)V

    invoke-static {p2, v6, v6, v0, p3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p0

    iput-object p0, v4, Lp/g;->U:Lu9/j1;

    return-void

    :cond_0
    move-object v4, p0

    move v3, p1

    if-eqz v3, :cond_1

    iput-object v2, v4, Lp/g;->Q:Ls/k;

    goto :goto_0

    :cond_1
    iput-object v2, v4, Lp/g;->M:Ls/k;

    :goto_0
    invoke-virtual {v4}, Lf1/q;->A0()Lu9/t;

    move-result-object p0

    new-instance p1, Lp/d;

    invoke-direct {p1, v1, v2, v6}, Lp/d;-><init>(Ls/i;Ls/k;Ly8/c;)V

    invoke-static {p0, v6, v6, p1, p3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_2
    return-void
.end method

.method public final W()V
    .locals 0

    iget-object p0, p0, Lp/g;->T:Lg5/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg5/e;->q()V

    :cond_0
    return-void
.end method

.method public final W0()V
    .locals 3

    iget-object v0, p0, Lp/g;->L:Le2/j;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lp/g;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp/g;->J:Lp/e1;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lp/g;->C:Lp/e1;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lp/g;->B:Ls/i;

    if-nez v1, :cond_2

    new-instance v1, Ls/i;

    invoke-direct {v1}, Ls/i;-><init>()V

    iput-object v1, p0, Lp/g;->B:Ls/i;

    :cond_2
    iget-object v1, p0, Lp/g;->I:Lp/p0;

    iget-object v2, p0, Lp/g;->B:Ls/i;

    invoke-virtual {v1, v2}, Lp/p0;->R0(Ls/i;)V

    iget-object v1, p0, Lp/g;->B:Ls/i;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lp/e1;->a(Ls/i;)Le2/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v0, p0, Lp/g;->L:Le2/j;

    :cond_3
    :goto_1
    return-void
.end method

.method public X0()V
    .locals 0

    return-void
.end method

.method public abstract Y0(Landroid/view/KeyEvent;)Z
.end method

.method public abstract Z0(Landroid/view/KeyEvent;)V
.end method

.method public final a1(Ls/i;Lp/e1;ZZLjava/lang/String;Lm2/h;Li9/a;)V
    .locals 3

    iget-object v0, p0, Lp/g;->R:Ls/i;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lp/g;->S0()V

    iput-object p1, p0, Lp/g;->R:Ls/i;

    iput-object p1, p0, Lp/g;->B:Ls/i;

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v0, p0, Lp/g;->C:Lp/e1;

    invoke-static {v0, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Lp/g;->C:Lp/e1;

    move p1, v1

    :cond_1
    iget-boolean p2, p0, Lp/g;->D:Z

    if-eq p2, p3, :cond_3

    iput-boolean p3, p0, Lp/g;->D:Z

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lp/g;->d0()V

    :cond_2
    move p1, v1

    :cond_3
    iget-boolean p2, p0, Lp/g;->G:Z

    iget-object p3, p0, Lp/g;->I:Lp/p0;

    if-eq p2, p4, :cond_5

    if-eqz p4, :cond_4

    invoke-virtual {p0, p3}, Le2/k;->M0(Le2/j;)Le2/j;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p3}, Le2/k;->N0(Le2/j;)V

    invoke-virtual {p0}, Lp/g;->S0()V

    :goto_1
    invoke-static {p0}, Le2/l;->m(Le2/z1;)V

    iput-boolean p4, p0, Lp/g;->G:Z

    :cond_5
    iget-object p2, p0, Lp/g;->E:Ljava/lang/String;

    invoke-static {p2, p5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    iput-object p5, p0, Lp/g;->E:Ljava/lang/String;

    invoke-static {p0}, Le2/l;->m(Le2/z1;)V

    :cond_6
    iget-object p2, p0, Lp/g;->F:Lm2/h;

    invoke-static {p2, p6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    iput-object p6, p0, Lp/g;->F:Lm2/h;

    invoke-static {p0}, Le2/l;->m(Le2/z1;)V

    :cond_7
    iput-object p7, p0, Lp/g;->H:Li9/a;

    iget-boolean p2, p0, Lp/g;->S:Z

    iget-object p4, p0, Lp/g;->R:Ls/i;

    if-nez p4, :cond_8

    move p5, v1

    goto :goto_2

    :cond_8
    move p5, v2

    :goto_2
    if-eq p2, p5, :cond_a

    if-nez p4, :cond_9

    move v2, v1

    :cond_9
    iput-boolean v2, p0, Lp/g;->S:Z

    if-nez v2, :cond_a

    iget-object p2, p0, Lp/g;->L:Le2/j;

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    move v1, p1

    :goto_3
    if-eqz v1, :cond_d

    iget-object p1, p0, Lp/g;->L:Le2/j;

    if-nez p1, :cond_b

    iget-boolean p2, p0, Lp/g;->S:Z

    if-nez p2, :cond_d

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Le2/k;->N0(Le2/j;)V

    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Lp/g;->L:Le2/j;

    invoke-virtual {p0}, Lp/g;->W0()V

    :cond_d
    iget-object p0, p0, Lp/g;->B:Ls/i;

    invoke-virtual {p3, p0}, Lp/p0;->R0(Ls/i;)V

    return-void
.end method

.method public final d0()V
    .locals 2

    iget-boolean v0, p0, Lp/g;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Lp/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lp/a;-><init>(Lp/g;I)V

    invoke-static {p0, v0}, Le2/l;->r(Lf1/q;Li9/a;)V

    :cond_0
    return-void
.end method

.method public final f(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp/g;->V:Lp/v1;

    return-object p0
.end method

.method public final t0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public w0(Ly1/l;Ly1/m;J)V
    .locals 8

    const/16 v0, 0x21

    shr-long v1, p3, v0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    shl-long v4, p3, v3

    shr-long/2addr v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long v0, v1, v4

    shr-long v4, v0, v3

    long-to-int v2, v4

    int-to-float v2, v2

    and-long/2addr v0, v6

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    shl-long v0, v1, v3

    and-long v2, v4, v6

    or-long/2addr v0, v2

    iput-wide v0, p0, Lp/g;->P:J

    invoke-virtual {p0}, Lp/g;->W0()V

    iget-boolean v0, p0, Lp/g;->G:Z

    if-eqz v0, :cond_1

    sget-object v0, Ly1/m;->m:Ly1/m;

    if-ne p2, v0, :cond_1

    iget v0, p1, Ly1/l;->f:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    new-instance v1, Lp/f;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lp/f;-><init>(Lp/g;Ly8/c;I)V

    invoke-static {v0, v3, v3, v1, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    new-instance v1, Lp/f;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v3, v4}, Lp/f;-><init>(Lp/g;Ly8/c;I)V

    invoke-static {v0, v3, v3, v1, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_1
    :goto_0
    iget-object v0, p0, Lp/g;->K:Ly1/k0;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lp/g;->Q0()Ly1/k0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v0, p0, Lp/g;->K:Ly1/k0;

    :cond_2
    iget-object p0, p0, Lp/g;->K:Ly1/k0;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, Ly1/k0;->w0(Ly1/l;Ly1/m;J)V

    :cond_3
    return-void
.end method
