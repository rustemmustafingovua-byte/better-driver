.class public final Lo0/g5;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# instance fields
.field public A:Z

.field public B:Ln/r0;

.field public C:Z

.field public D:Ln/c;

.field public E:Ln/c;

.field public F:F

.field public G:F

.field public z:Ls/i;


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

    new-instance v1, Lad/w;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 6

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v0

    invoke-interface {p2, v0}, Lc2/q0;->c(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result p3

    invoke-interface {p2, p3}, Lc2/q0;->z(I)I

    move-result p3

    if-eqz p3, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iget-boolean p4, p0, Lo0/g5;->C:Z

    if-eqz p4, :cond_1

    sget p3, Lq0/c0;->n:F

    goto :goto_2

    :cond_1
    if-nez p3, :cond_3

    iget-boolean p3, p0, Lo0/g5;->A:Z

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    sget p3, Lo0/w4;->b:F

    goto :goto_2

    :cond_3
    :goto_1
    sget p3, Lo0/w4;->a:F

    :goto_2
    invoke-interface {p1, p3}, Lb3/c;->V(F)F

    move-result p3

    iget-object p4, p0, Lo0/g5;->E:Ln/c;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ln/c;->d()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    goto :goto_3

    :cond_4
    move p4, p3

    :goto_3
    float-to-int p4, p4

    if-ltz p4, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    if-ltz p4, :cond_6

    move v1, v2

    :cond_6
    and-int/2addr v0, v1

    if-nez v0, :cond_7

    const-string v0, "width and height must be >= 0"

    invoke-static {v0}, Lb3/i;->a(Ljava/lang/String;)V

    :cond_7
    invoke-static {p4, p4, p4, p4}, Lb3/b;->h(IIII)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    sget v0, Lo0/w4;->d:F

    invoke-interface {p1, p3}, Lb3/c;->P(F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lb3/c;->V(F)F

    move-result v0

    sget v1, Lo0/w4;->c:F

    sget v2, Lo0/w4;->a:F

    sub-float/2addr v1, v2

    sget v2, Lo0/w4;->e:F

    sub-float/2addr v1, v2

    invoke-interface {p1, v1}, Lb3/c;->V(F)F

    move-result v1

    iget-boolean v2, p0, Lo0/g5;->C:Z

    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lo0/g5;->A:Z

    if-eqz v3, :cond_8

    sget v0, Lq0/c0;->u:F

    invoke-interface {p1, v0}, Lb3/c;->V(F)F

    move-result v0

    sub-float v0, v1, v0

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lo0/g5;->A:Z

    if-nez v2, :cond_9

    sget v0, Lq0/c0;->u:F

    invoke-interface {p1, v0}, Lb3/c;->V(F)F

    move-result v0

    goto :goto_5

    :cond_9
    iget-boolean v2, p0, Lo0/g5;->A:Z

    if-eqz v2, :cond_a

    move v0, v1

    :cond_a
    :goto_5
    iget-object v1, p0, Lo0/g5;->E:Ln/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget-object v1, v1, Ln/c;->e:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    goto :goto_6

    :cond_b
    move-object v1, v2

    :goto_6
    const/4 v3, 0x3

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, p3

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v1

    new-instance v4, Lo0/f5;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p3, v2, v5}, Lo0/f5;-><init>(Lo0/g5;FLy8/c;I)V

    invoke-static {v1, v2, v2, v4, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :goto_7
    iget-object v1, p0, Lo0/g5;->D:Ln/c;

    if-eqz v1, :cond_d

    iget-object v1, v1, Ln/c;->e:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    goto :goto_8

    :cond_d
    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v1

    new-instance v4, Lo0/f5;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v2, v5}, Lo0/f5;-><init>(Lo0/g5;FLy8/c;I)V

    invoke-static {v1, v2, v2, v4, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :goto_9
    iget v1, p0, Lo0/g5;->G:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lo0/g5;->F:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_f

    iput p3, p0, Lo0/g5;->G:F

    iput v0, p0, Lo0/g5;->F:F

    :cond_f
    new-instance p3, Lb0/f;

    invoke-direct {p3, p2, p0, v0}, Lb0/f;-><init>(Lc2/f1;Lo0/g5;F)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p4, p4, p0, p3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
