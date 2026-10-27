.class public final Lk1/b0;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/i;
.implements Le2/w;
.implements Le2/l1;
.implements Ld2/c;
.implements Le2/j;


# instance fields
.field public final A:Li9/e;

.field public B:Z

.field public C:Z

.field public final D:I

.field public final z:Z


# direct methods
.method public constructor <init>(IILi9/e;)V
    .locals 2

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-boolean v1, p0, Lk1/b0;->z:Z

    iput-object p3, p0, Lk1/b0;->A:Li9/e;

    iput p1, p0, Lk1/b0;->D:I

    return-void
.end method

.method public static synthetic U0(Lk1/b0;)Z
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lk1/b0;->T0(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final F0()V
    .locals 4

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    invoke-static {p0}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-boolean p0, p0, Lk1/b0;->z:Z

    if-ne p0, v1, :cond_2

    check-cast v0, Lk1/o;

    iget-object p0, v0, Lk1/o;->a:Lf2/y;

    invoke-virtual {p0}, Lf2/y;->F()Z

    iget-object p0, v0, Lk1/o;->d:Lk1/i;

    invoke-virtual {p0}, Lk1/i;->a()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lk1/o;->b(IZZ)Z

    iget-boolean p0, p0, Lk1/b0;->z:Z

    if-eqz p0, :cond_4

    iget-object p0, v0, Lk1/o;->a:Lf2/y;

    invoke-virtual {p0}, Lf2/y;->F()Z

    :cond_4
    iget-object p0, v0, Lk1/o;->d:Lk1/i;

    invoke-virtual {p0}, Lk1/i;->a()V

    return-void
.end method

.method public final G0()V
    .locals 2

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Lk1/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object p0

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p0

    const/16 v0, 0x8

    check-cast p0, Lk1/o;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lk1/o;->b(IZZ)Z

    :cond_0
    return-void
.end method

.method public final M0(I)Z
    .locals 1

    invoke-static {p0, p1}, Lk1/d;->v(Lk1/b0;I)Lk1/b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-static {p0}, Lk1/d;->w(Lk1/b0;)Z

    move-result p0

    return p0
.end method

.method public final N0(Lk1/z;Lk1/z;)V
    .locals 10

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    invoke-virtual {v0}, Lk1/o;->f()Lk1/b0;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lk1/b0;->A:Li9/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v2, p1, Lf1/q;->y:Z

    if-nez v2, :cond_1

    const-string v2, "visitAncestors called on an unattached node"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lf1/q;->l:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_e

    iget-object v3, p0, Le2/g0;->R:Le2/c1;

    iget-object v3, v3, Le2/c1;->f:Lf1/q;

    iget v3, v3, Lf1/q;->o:I

    and-int/lit16 v3, v3, 0x1400

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    :goto_1
    if-eqz v2, :cond_c

    iget v3, v2, Lf1/q;->n:I

    and-int/lit16 v5, v3, 0x1400

    if-eqz v5, :cond_b

    if-eq v2, p1, :cond_2

    and-int/lit16 v5, v3, 0x400

    if-eqz v5, :cond_2

    goto/16 :goto_6

    :cond_2
    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_b

    move-object v3, v2

    move-object v5, v4

    :goto_2
    if-eqz v3, :cond_b

    instance-of v6, v3, Lk1/g;

    if-eqz v6, :cond_4

    check-cast v3, Lk1/g;

    invoke-virtual {v0}, Lk1/o;->f()Lk1/b0;

    move-result-object v6

    if-eq v1, v6, :cond_3

    goto :goto_5

    :cond_3
    invoke-interface {v3, p2}, Lk1/g;->s0(Lk1/z;)V

    goto :goto_5

    :cond_4
    iget v6, v3, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_a

    instance-of v6, v3, Le2/k;

    if-eqz v6, :cond_a

    move-object v6, v3

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x1

    if-eqz v6, :cond_9

    iget v9, v6, Lf1/q;->n:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_8

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_5

    move-object v3, v6

    goto :goto_4

    :cond_5
    if-nez v5, :cond_6

    new-instance v5, Lt0/b;

    const/16 v8, 0x10

    new-array v8, v8, [Lf1/q;

    invoke-direct {v5, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v5, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v3, v4

    :cond_7
    invoke-virtual {v5, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_8
    :goto_4
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_9
    if-ne v7, v8, :cond_a

    goto :goto_2

    :cond_a
    :goto_5
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v3

    goto :goto_2

    :cond_b
    iget-object v2, v2, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object v2, p0, Le2/g0;->R:Le2/c1;

    if-eqz v2, :cond_d

    iget-object v2, v2, Le2/c1;->e:Le2/b2;

    goto/16 :goto_0

    :cond_d
    move-object v2, v4

    goto/16 :goto_0

    :cond_e
    :goto_6
    return-void
.end method

.method public final O0()Lk1/s;
    .locals 11

    new-instance v0, Lk1/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lk1/s;->a:Z

    sget-object v2, Lk1/u;->b:Lk1/u;

    iput-object v2, v0, Lk1/s;->b:Lk1/u;

    iput-object v2, v0, Lk1/s;->c:Lk1/u;

    iput-object v2, v0, Lk1/s;->d:Lk1/u;

    iput-object v2, v0, Lk1/s;->e:Lk1/u;

    iput-object v2, v0, Lk1/s;->f:Lk1/u;

    iput-object v2, v0, Lk1/s;->g:Lk1/u;

    iput-object v2, v0, Lk1/s;->h:Lk1/u;

    iput-object v2, v0, Lk1/s;->i:Lk1/u;

    sget-object v2, Lk1/r;->m:Lk1/r;

    iput-object v2, v0, Lk1/s;->j:Lj9/o;

    sget-object v2, Lk1/r;->n:Lk1/r;

    iput-object v2, v0, Lk1/s;->k:Lj9/o;

    sget-object v2, Lk1/p;->a:Ll1/c;

    iput-object v2, v0, Lk1/s;->l:Ll1/c;

    iget v2, p0, Lk1/b0;->D:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    if-nez v2, :cond_2

    sget-object v2, Lf2/l1;->m:Lr0/s2;

    invoke-static {p0, v2}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu1/b;

    check-cast v2, Lu1/c;

    iget-object v2, v2, Lu1/c;->a:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu1/a;

    iget v2, v2, Lu1/a;->a:I

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    xor-int/2addr v2, v1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_10

    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lk1/s;->a:Z

    iget-object v2, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v4, v2, Lf1/q;->y:Z

    if-nez v4, :cond_3

    const-string v4, "visitAncestors called on an unattached node"

    invoke-static {v4}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lf1/q;->l:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_f

    iget-object v5, p0, Le2/g0;->R:Le2/c1;

    iget-object v5, v5, Le2/c1;->f:Lf1/q;

    iget v5, v5, Lf1/q;->o:I

    and-int/lit16 v5, v5, 0xc00

    const/4 v6, 0x0

    if-eqz v5, :cond_d

    :goto_3
    if-eqz v4, :cond_d

    iget v5, v4, Lf1/q;->n:I

    and-int/lit16 v7, v5, 0xc00

    if-eqz v7, :cond_c

    if-eq v4, v2, :cond_4

    and-int/lit16 v7, v5, 0x400

    if-eqz v7, :cond_4

    goto/16 :goto_8

    :cond_4
    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_c

    move-object v5, v4

    move-object v7, v6

    :goto_4
    if-eqz v5, :cond_c

    instance-of v8, v5, Lk1/t;

    if-eqz v8, :cond_5

    check-cast v5, Lk1/t;

    invoke-interface {v5, v0}, Lk1/t;->z0(Lk1/q;)V

    goto :goto_7

    :cond_5
    iget v8, v5, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_b

    instance-of v8, v5, Le2/k;

    if-eqz v8, :cond_b

    move-object v8, v5

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    move v9, v3

    :goto_5
    if-eqz v8, :cond_a

    iget v10, v8, Lf1/q;->n:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_9

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v1, :cond_6

    move-object v5, v8

    goto :goto_6

    :cond_6
    if-nez v7, :cond_7

    new-instance v7, Lt0/b;

    const/16 v10, 0x10

    new-array v10, v10, [Lf1/q;

    invoke-direct {v7, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v7, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v5, v6

    :cond_8
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_6
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_5

    :cond_a
    if-ne v9, v1, :cond_b

    goto :goto_4

    :cond_b
    :goto_7
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v5

    goto :goto_4

    :cond_c
    iget-object v4, v4, Lf1/q;->p:Lf1/q;

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_e

    iget-object v4, p0, Le2/g0;->R:Le2/c1;

    if-eqz v4, :cond_e

    iget-object v4, v4, Le2/c1;->e:Le2/b2;

    goto :goto_2

    :cond_e
    move-object v4, v6

    goto :goto_2

    :cond_f
    :goto_8
    return-object v0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown Focusability"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final P0(Lc2/u;)Ll1/c;
    .locals 4

    invoke-virtual {p0}, Lk1/b0;->O0()Lk1/s;

    move-result-object v0

    iget-object v0, v0, Lk1/s;->l:Ll1/c;

    sget-object v1, Lk1/p;->a:Ll1/c;

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object p0

    invoke-interface {p1, p0, v2, v3}, Lc2/u;->K(Lc2/u;J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ll1/c;->j(J)Ll1/c;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object p0

    iget-wide p0, p0, Lc2/f1;->n:J

    invoke-static {p0, p1}, Ly4/s;->E(J)J

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lr5/u0;->c(JJ)Ll1/c;

    move-result-object p0

    return-object p0
.end method

.method public final Q0()Lx/o;
    .locals 6

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "visitAncestors called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    if-eqz p0, :cond_d

    iget-object v2, p0, Le2/g0;->R:Le2/c1;

    iget-object v2, v2, Le2/c1;->f:Lf1/q;

    iget v2, v2, Lf1/q;->o:I

    const v3, 0x800020

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    :goto_1
    if-eqz v0, :cond_b

    iget v2, v0, Lf1/q;->n:I

    and-int v4, v2, v3

    if-eqz v4, :cond_a

    const/high16 v4, 0x800000

    and-int/2addr v4, v2

    if-eqz v4, :cond_5

    instance-of p0, v0, Lx/o;

    if-eqz p0, :cond_1

    goto :goto_3

    :cond_1
    instance-of p0, v0, Le2/k;

    if-eqz p0, :cond_3

    check-cast v0, Le2/k;

    iget-object p0, v0, Le2/k;->A:Lf1/q;

    move-object v0, v1

    :goto_2
    if-eqz p0, :cond_4

    instance-of v2, p0, Lx/o;

    if-eqz v2, :cond_2

    move-object v0, p0

    :cond_2
    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_3
    check-cast v0, Lx/o;

    if-eqz v0, :cond_d

    return-object v0

    :cond_5
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_a

    instance-of v2, v0, Ld2/c;

    if-eqz v2, :cond_6

    move-object v4, v0

    goto :goto_5

    :cond_6
    instance-of v2, v0, Le2/k;

    if-eqz v2, :cond_8

    move-object v2, v0

    check-cast v2, Le2/k;

    iget-object v2, v2, Le2/k;->A:Lf1/q;

    move-object v4, v1

    :goto_4
    if-eqz v2, :cond_9

    instance-of v5, v2, Ld2/c;

    if-eqz v5, :cond_7

    move-object v4, v2

    :cond_7
    iget-object v2, v2, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_8
    move-object v4, v1

    :cond_9
    :goto_5
    check-cast v4, Ld2/c;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ld2/c;->R()Ld2/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_c

    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    if-eqz v0, :cond_c

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    goto :goto_0

    :cond_c
    move-object v0, v1

    goto :goto_0

    :cond_d
    return-object v1
.end method

.method public final R0()Lk1/z;
    .locals 9

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    sget-object p0, Lk1/z;->n:Lk1/z;

    return-object p0

    :cond_0
    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    invoke-virtual {v0}, Lk1/o;->f()Lk1/b0;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lk1/z;->n:Lk1/z;

    return-object p0

    :cond_1
    if-ne p0, v0, :cond_2

    sget-object p0, Lk1/z;->l:Lk1/z;

    return-object p0

    :cond_2
    iget-boolean v1, v0, Lf1/q;->y:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_3

    const-string v1, "visitAncestors called on an unattached node"

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_e

    iget-object v2, v0, Le2/g0;->R:Le2/c1;

    iget-object v2, v2, Le2/c1;->f:Lf1/q;

    iget v2, v2, Lf1/q;->o:I

    and-int/lit16 v2, v2, 0x400

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    :goto_1
    if-eqz v1, :cond_c

    iget v2, v1, Lf1/q;->n:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_b

    move-object v2, v1

    move-object v4, v3

    :goto_2
    if-eqz v2, :cond_b

    instance-of v5, v2, Lk1/b0;

    if-eqz v5, :cond_4

    check-cast v2, Lk1/b0;

    if-ne p0, v2, :cond_a

    sget-object p0, Lk1/z;->m:Lk1/z;

    return-object p0

    :cond_4
    iget v5, v2, Lf1/q;->n:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_a

    instance-of v5, v2, Le2/k;

    if-eqz v5, :cond_a

    move-object v5, v2

    check-cast v5, Le2/k;

    iget-object v5, v5, Le2/k;->A:Lf1/q;

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x1

    if-eqz v5, :cond_9

    iget v8, v5, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_8

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_5

    move-object v2, v5

    goto :goto_4

    :cond_5
    if-nez v4, :cond_6

    new-instance v4, Lt0/b;

    const/16 v7, 0x10

    new-array v7, v7, [Lf1/q;

    invoke-direct {v4, v7}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v4, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v2, v3

    :cond_7
    invoke-virtual {v4, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_8
    :goto_4
    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_9
    if-ne v6, v7, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {v4}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v2

    goto :goto_2

    :cond_b
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_c
    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, v0, Le2/g0;->R:Le2/c1;

    if-eqz v1, :cond_d

    iget-object v1, v1, Le2/c1;->e:Le2/b2;

    goto :goto_0

    :cond_d
    move-object v1, v3

    goto :goto_0

    :cond_e
    sget-object p0, Lk1/z;->n:Lk1/z;

    return-object p0
.end method

.method public final S0()V
    .locals 4

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    new-instance v0, Lj9/y;

    invoke-direct {v0}, Lj9/y;-><init>()V

    new-instance v2, Ld5/a;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v0, p0}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v2}, Le2/l;->r(Lf1/q;Li9/a;)V

    iget-object v0, v0, Lj9/y;->m:Ljava/lang/Object;

    if-eqz v0, :cond_3

    check-cast v0, Lk1/q;

    invoke-interface {v0}, Lk1/q;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object p0

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p0

    check-cast p0, Lk1/o;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1, v1}, Lk1/o;->b(IZZ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p0, "focusProperties"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final T0(I)Z
    .locals 2

    const-string v0, "FocusTransactions:requestFocus"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lk1/b0;->O0()Lk1/s;

    move-result-object v0

    iget-boolean v0, v0, Lk1/s;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lk1/b0;->M0(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    new-instance v0, Lf2/u;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lf2/u;-><init>(II)V

    invoke-static {p0, p1, v0}, Lk1/d;->h(Lk1/b0;ILi9/c;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final d0()V
    .locals 0

    invoke-virtual {p0}, Lk1/b0;->S0()V

    return-void
.end method

.method public final u(Lc2/u;)V
    .locals 0

    return-void
.end method
