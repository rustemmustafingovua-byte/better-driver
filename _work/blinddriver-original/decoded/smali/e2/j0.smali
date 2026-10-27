.class public final Le2/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/d;


# instance fields
.field public final l:Lo1/b;

.field public m:Le2/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lo1/b;

    invoke-direct {v0}, Lo1/b;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le2/j0;->l:Lo1/b;

    return-void
.end method


# virtual methods
.method public final B(JJJFI)V
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual/range {p0 .. p8}, Lo1/b;->B(JJJFI)V

    return-void
.end method

.method public final H(F)J
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {p0, p1}, Lb3/c;->H(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final M(I)F
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {p0, p1}, Lb3/c;->M(I)F

    move-result p0

    return p0
.end method

.method public final P(F)F
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual {p0}, Lo1/b;->a()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public final S()F
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual {p0}, Lo1/b;->S()F

    move-result p0

    return p0
.end method

.method public final V(F)F
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual {p0}, Lo1/b;->a()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final Y()Lg5/m;
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    iget-object p0, p0, Lo1/b;->m:Lg5/m;

    return-object p0
.end method

.method public final Z(JFJLo1/e;)V
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual/range {p0 .. p6}, Lo1/b;->Z(JFJLo1/e;)V

    return-void
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual {p0}, Lo1/b;->a()F

    move-result p0

    return p0
.end method

.method public final a0(Lm1/g;JLo1/e;)V
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo1/b;->a0(Lm1/g;JLo1/e;)V

    return-void
.end method

.method public final b()V
    .locals 11

    iget-object v0, p0, Le2/j0;->l:Lo1/b;

    iget-object v1, v0, Lo1/b;->m:Lg5/m;

    invoke-virtual {v1}, Lg5/m;->h()Lm1/o;

    move-result-object v3

    iget-object p0, p0, Le2/j0;->m:Le2/n;

    if-eqz p0, :cond_f

    move-object v1, p0

    check-cast v1, Lf1/q;

    iget-object v2, v1, Lf1/q;->l:Lf1/q;

    iget-object v2, v2, Lf1/q;->q:Lf1/q;

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget v4, v2, Lf1/q;->o:I

    and-int/2addr v4, v10

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    iget v4, v2, Lf1/q;->n:I

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, v2, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_4
    :goto_1
    move-object v2, v9

    :goto_2
    if-eqz v2, :cond_d

    move-object p0, v9

    :goto_3
    if-eqz v2, :cond_c

    instance-of v1, v2, Le2/n;

    if-eqz v1, :cond_5

    move-object v7, v2

    check-cast v7, Le2/n;

    iget-object v1, v0, Lo1/b;->m:Lg5/m;

    iget-object v1, v1, Lg5/m;->n:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lp1/b;

    invoke-static {v7, v10}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v6

    iget-wide v1, v6, Lc2/f1;->n:J

    invoke-static {v1, v2}, Ly4/s;->E(J)J

    move-result-wide v4

    iget-object v1, v6, Le2/h1;->z:Le2/g0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getSharedDrawScope()Le2/j0;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Le2/j0;->c(Lm1/o;JLe2/h1;Le2/n;Lp1/b;)V

    goto :goto_6

    :cond_5
    iget v1, v2, Lf1/q;->n:I

    and-int/2addr v1, v10

    if-eqz v1, :cond_b

    instance-of v1, v2, Le2/k;

    if-eqz v1, :cond_b

    move-object v1, v2

    check-cast v1, Le2/k;

    iget-object v1, v1, Le2/k;->A:Lf1/q;

    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x1

    if-eqz v1, :cond_a

    iget v6, v1, Lf1/q;->n:I

    and-int/2addr v6, v10

    if-eqz v6, :cond_9

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_6

    move-object v2, v1

    goto :goto_5

    :cond_6
    if-nez p0, :cond_7

    new-instance p0, Lt0/b;

    const/16 v5, 0x10

    new-array v5, v5, [Lf1/q;

    invoke-direct {p0, v5}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v2, v9

    :cond_8
    invoke-virtual {p0, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v1, v1, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_a
    if-ne v4, v5, :cond_b

    goto :goto_3

    :cond_b
    :goto_6
    invoke-static {p0}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v2

    goto :goto_3

    :cond_c
    return-void

    :cond_d
    invoke-static {p0, v10}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object p0

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v2

    iget-object v1, v1, Lf1/q;->l:Lf1/q;

    if-ne v2, v1, :cond_e

    iget-object p0, p0, Le2/h1;->A:Le2/h1;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, v0, Lo1/b;->m:Lg5/m;

    iget-object v0, v0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v0, Lp1/b;

    invoke-virtual {p0, v3, v0}, Le2/h1;->j1(Lm1/o;Lp1/b;)V

    return-void

    :cond_f
    const-string p0, "Attempting to drawContent for a `null` node. This usually means that a call to ContentDrawScope#drawContent() has been captured inside a lambda, and is being invoked outside of the draw pass. Capturing the scope this way is unsupported - if you are trying to record drawContent with graphicsLayer.record(), make sure you are using the GraphicsLayer#record function within DrawScope, instead of the member function on GraphicsLayer."

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public final c(Lm1/o;JLe2/h1;Le2/n;Lp1/b;)V
    .locals 9

    iget-object v0, p0, Le2/j0;->m:Le2/n;

    iput-object p5, p0, Le2/j0;->m:Le2/n;

    iget-object v1, p4, Le2/h1;->z:Le2/g0;

    iget-object v1, v1, Le2/g0;->L:Lb3/m;

    iget-object v2, p0, Le2/j0;->l:Lo1/b;

    iget-object v3, v2, Lo1/b;->m:Lg5/m;

    invoke-virtual {v3}, Lg5/m;->j()Lb3/c;

    move-result-object v3

    iget-object v2, v2, Lo1/b;->m:Lg5/m;

    invoke-virtual {v2}, Lg5/m;->k()Lb3/m;

    move-result-object v4

    invoke-virtual {v2}, Lg5/m;->h()Lm1/o;

    move-result-object v5

    invoke-virtual {v2}, Lg5/m;->m()J

    move-result-wide v6

    iget-object v8, v2, Lg5/m;->n:Ljava/lang/Object;

    check-cast v8, Lp1/b;

    invoke-virtual {v2, p4}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v2, v1}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v2, p1}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v2, p2, p3}, Lg5/m;->w(J)V

    iput-object p6, v2, Lg5/m;->n:Ljava/lang/Object;

    invoke-interface {p1}, Lm1/o;->h()V

    :try_start_0
    invoke-interface {p5, p0}, Le2/n;->z(Le2/j0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lm1/o;->q()V

    invoke-virtual {v2, v3}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v2, v4}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v2, v5}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v2, v6, v7}, Lg5/m;->w(J)V

    iput-object v8, v2, Lg5/m;->n:Ljava/lang/Object;

    iput-object v0, p0, Le2/j0;->m:Le2/n;

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lm1/o;->q()V

    invoke-virtual {v2, v3}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v2, v4}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v2, v5}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v2, v6, v7}, Lg5/m;->w(J)V

    iput-object v8, v2, Lg5/m;->n:Ljava/lang/Object;

    throw p0
.end method

.method public final d()J
    .locals 2

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {p0}, Lo1/d;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e0(JJJI)V
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual/range {p0 .. p7}, Lo1/b;->e0(JJJI)V

    return-void
.end method

.method public final g(JJJJLo1/e;I)V
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual/range {p0 .. p10}, Lo1/b;->g(JJJJLo1/e;I)V

    return-void
.end method

.method public final getLayoutDirection()Lb3/m;
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iget-object p0, p0, Lo1/a;->b:Lb3/m;

    return-object p0
.end method

.method public final h0(F)I
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {p0, p1}, Lb3/c;->h0(F)I

    move-result p0

    return p0
.end method

.method public final j0()J
    .locals 2

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {p0}, Lo1/d;->j0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l0(J)J
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {p0, p1, p2}, Lb3/c;->l0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final m(F)J
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {p0, p1}, Lb3/c;->m(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final m0(Lm1/g;Lm1/m;FLo1/e;I)V
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual/range {p0 .. p5}, Lo1/b;->m0(Lm1/g;Lm1/m;FLo1/e;I)V

    return-void
.end method

.method public final n(J)J
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {p0, p1, p2}, Lb3/c;->n(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final p0(J)F
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {p0, p1, p2}, Lb3/c;->p0(J)F

    move-result p0

    return p0
.end method

.method public final r(Lm1/e;JJJFLm1/j;I)V
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual/range {p0 .. p10}, Lo1/b;->r(Lm1/e;JJJFLm1/j;I)V

    return-void
.end method

.method public final s(JFFJJLo1/h;)V
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-virtual/range {p0 .. p9}, Lo1/b;->s(JFFJJLo1/h;)V

    return-void
.end method

.method public final v(J)F
    .locals 0

    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {p0, p1, p2}, Lb3/c;->v(J)F

    move-result p0

    return p0
.end method
