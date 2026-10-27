.class public final Ln0/a;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/i;
.implements Le2/n;
.implements Le2/w;


# instance fields
.field public final A:Z

.field public final B:F

.field public final C:Lo0/e1;

.field public final D:Lo0/d1;

.field public E:Lf8/p2;

.field public F:F

.field public G:J

.field public H:Z

.field public final I:Lk/h0;

.field public J:Ln0/d;

.field public K:Ln0/e;

.field public final z:Ls/i;


# direct methods
.method public constructor <init>(Ls/i;ZFLo0/e1;Lo0/d1;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Ln0/a;->z:Ls/i;

    iput-boolean p2, p0, Ln0/a;->A:Z

    iput p3, p0, Ln0/a;->B:F

    iput-object p4, p0, Ln0/a;->C:Lo0/e1;

    iput-object p5, p0, Ln0/a;->D:Lo0/d1;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ln0/a;->G:J

    new-instance p1, Lk/h0;

    invoke-direct {p1}, Lk/h0;-><init>()V

    iput-object p1, p0, Ln0/a;->I:Lk/h0;

    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E0()V
    .locals 4

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/i0;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final F0()V
    .locals 5

    iget-object v0, p0, Ln0/a;->J:Ln0/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Ln0/a;->K:Ln0/e;

    invoke-static {p0}, Le2/l;->k(Le2/n;)V

    iget-object v1, v0, Ln0/d;->o:Lk0/l;

    iget-object v2, v1, Lk0/l;->m:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln0/e;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ln0/e;->c()V

    iget-object v3, v1, Lk0/l;->m:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/e;

    if-eqz v4, :cond_0

    iget-object v1, v1, Lk0/l;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/a;

    :cond_0
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Ln0/d;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final M0(Ls/m;)V
    .locals 11

    instance-of v0, p1, Ls/k;

    if-eqz v0, :cond_c

    move-object v2, p1

    check-cast v2, Ls/k;

    iget-wide v4, p0, Ln0/a;->G:J

    iget p1, p0, Ln0/a;->F:F

    iget-object v0, p0, Ln0/a;->J:Ln0/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lf2/o0;->f:Lr0/s2;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v6, v3, Landroid/view/View;

    if-eqz v6, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Couldn\'t find a valid parent for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v6, v1

    :goto_1
    if-ge v6, v3, :cond_4

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Ln0/d;

    if-eqz v8, :cond_3

    check-cast v7, Ln0/d;

    move-object v0, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    new-instance v3, Ln0/d;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Ln0/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v3

    :goto_2
    iput-object v0, p0, Ln0/a;->J:Ln0/d;

    :goto_3
    iget-object v3, v0, Ln0/d;->m:Ljava/util/ArrayList;

    iget-object v6, v0, Ln0/d;->o:Lk0/l;

    iget-object v7, v6, Lk0/l;->m:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedHashMap;

    iget-object v8, v6, Lk0/l;->m:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashMap;

    iget-object v6, v6, Lk0/l;->n:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashMap;

    invoke-virtual {v7, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln0/e;

    if-eqz v7, :cond_5

    :goto_4
    move-object v1, v7

    goto/16 :goto_8

    :cond_5
    iget-object v7, v0, Ln0/d;->n:Ljava/util/ArrayList;

    const-string v9, "<this>"

    invoke-static {v7, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    move-object v7, v10

    goto :goto_5

    :cond_6
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    :goto_5
    check-cast v7, Ln0/e;

    if-nez v7, :cond_b

    iget v7, v0, Ln0/d;->p:I

    invoke-static {v3}, Lg5/f;->A(Ljava/util/List;)I

    move-result v9

    if-le v7, v9, :cond_7

    new-instance v7, Ln0/e;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    iget v7, v0, Ln0/d;->p:I

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ln0/e;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/a;

    if-eqz v3, :cond_9

    iput-object v10, v3, Ln0/a;->K:Ln0/e;

    invoke-static {v3}, Le2/l;->k(Le2/n;)V

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln0/e;

    if-eqz v9, :cond_8

    invoke-interface {v6, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln0/a;

    :cond_8
    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ln0/e;->c()V

    :cond_9
    :goto_6
    iget v3, v0, Ln0/d;->p:I

    iget v9, v0, Ln0/d;->l:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_a

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Ln0/d;->p:I

    goto :goto_7

    :cond_a
    iput v1, v0, Ln0/d;->p:I

    :cond_b
    :goto_7
    invoke-interface {v8, p0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :goto_8
    invoke-static {p1}, Ll9/a;->z(F)I

    move-result v6

    iget-object p1, p0, Ln0/a;->C:Lo0/e1;

    invoke-virtual {p1}, Lo0/e1;->a()J

    move-result-wide v7

    iget-object p1, p0, Ln0/a;->D:Lo0/d1;

    invoke-virtual {p1}, Lo0/d1;->invoke()Ljava/lang/Object;

    new-instance v9, Lad/t;

    const/16 p1, 0x18

    invoke-direct {v9, p1, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    iget-boolean v3, p0, Ln0/a;->A:Z

    invoke-virtual/range {v1 .. v9}, Ln0/e;->b(Ls/k;ZJIJLad/t;)V

    iput-object v1, p0, Ln0/a;->K:Ln0/e;

    invoke-static {p0}, Le2/l;->k(Le2/n;)V

    return-void

    :cond_c
    instance-of v0, p1, Ls/l;

    if-eqz v0, :cond_d

    iget-object p0, p0, Ln0/a;->K:Ln0/e;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ln0/e;->d()V

    return-void

    :cond_d
    instance-of p1, p1, Ls/j;

    if-eqz p1, :cond_e

    iget-object p0, p0, Ln0/a;->K:Ln0/e;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ln0/e;->d()V

    :cond_e
    return-void
.end method

.method public final l(J)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln0/a;->H:Z

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget-object v0, v0, Le2/g0;->K:Lb3/c;

    invoke-static {p1, p2}, Ly4/s;->E(J)J

    move-result-wide p1

    iput-wide p1, p0, Ln0/a;->G:J

    iget p1, p0, Ln0/a;->B:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide p1, p0, Ln0/a;->G:J

    sget v1, Ln0/c;->a:F

    const/16 v1, 0x20

    shr-long v2, p1, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const-wide v3, 0xffffffffL

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v5, p2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    shl-long v1, v5, v1

    and-long/2addr p1, v3

    or-long/2addr p1, v1

    invoke-static {p1, p2}, Ll1/b;->c(J)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget-boolean p2, p0, Ln0/a;->A:Z

    if-eqz p2, :cond_1

    sget p2, Ln0/c;->a:F

    invoke-interface {v0, p2}, Lb3/c;->V(F)F

    move-result p2

    add-float/2addr p1, p2

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lb3/c;->V(F)F

    move-result p1

    :cond_1
    :goto_0
    iput p1, p0, Ln0/a;->F:F

    iget-object p1, p0, Ln0/a;->I:Lk/h0;

    iget-object p2, p1, Lk/h0;->a:[Ljava/lang/Object;

    iget v0, p1, Lk/h0;->b:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    check-cast v2, Ls/m;

    invoke-virtual {p0, v2}, Ln0/a;->M0(Ls/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lk/h0;->d()V

    return-void
.end method

.method public final z(Le2/j0;)V
    .locals 14

    iget-object v0, p1, Le2/j0;->l:Lo1/b;

    invoke-virtual {p1}, Le2/j0;->b()V

    iget-object v1, p0, Ln0/a;->E:Lf8/p2;

    if-eqz v1, :cond_1

    iget v5, p0, Ln0/a;->F:F

    iget-object v2, p0, Ln0/a;->C:Lo0/e1;

    invoke-virtual {v2}, Lo0/e1;->a()J

    move-result-wide v2

    iget-object v4, v1, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v4, Ln/c;

    invoke-virtual {v4}, Ln/c;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1

    invoke-static {v4, v2, v3}, Lm1/p;->b(FJ)J

    move-result-wide v3

    iget-boolean v1, v1, Lf8/p2;->a:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v1

    const/16 v6, 0x20

    shr-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v1

    const-wide v6, 0xffffffffL

    and-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    iget-object v1, v0, Lo1/b;->m:Lg5/m;

    invoke-virtual {v1}, Lg5/m;->m()J

    move-result-wide v12

    invoke-virtual {v1}, Lg5/m;->h()Lm1/o;

    move-result-object v2

    invoke-interface {v2}, Lm1/o;->h()V

    :try_start_0
    iget-object v2, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lm2/j;

    iget-object v2, v2, Lm2/j;->m:Ljava/lang/Object;

    check-cast v2, Lg5/m;

    invoke-virtual {v2}, Lg5/m;->h()Lm1/o;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v6 .. v11}, Lm1/o;->o(FFFFI)V

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const-wide/16 v6, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v12, v13}, Lm/a;->t(Lg5/m;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v12, v13}, Lm/a;->t(Lg5/m;J)V

    throw p0

    :cond_0
    move-object v2, p1

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v9}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    :cond_1
    :goto_0
    iget-object p1, v0, Lo1/b;->m:Lg5/m;

    invoke-virtual {p1}, Lg5/m;->h()Lm1/o;

    move-result-object p1

    iget-object v0, p0, Ln0/a;->K:Ln0/e;

    if-eqz v0, :cond_2

    iget-wide v2, p0, Ln0/a;->G:J

    iget v1, p0, Ln0/a;->F:F

    invoke-static {v1}, Ll9/a;->z(F)I

    move-result v1

    iget-object v4, p0, Ln0/a;->C:Lo0/e1;

    invoke-virtual {v4}, Lo0/e1;->a()J

    move-result-wide v4

    iget-object p0, p0, Ln0/a;->D:Lo0/d1;

    invoke-virtual {p0}, Lo0/d1;->invoke()Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Ln0/e;->e(IJJ)V

    invoke-static {p1}, Lm1/b;->a(Lm1/o;)Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln0/e;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method
