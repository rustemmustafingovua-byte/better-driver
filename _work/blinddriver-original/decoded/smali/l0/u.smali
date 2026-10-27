.class public final Ll0/u;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;
.implements Le2/n;
.implements Le2/z1;


# instance fields
.field public A:Lp2/m0;

.field public B:Lt2/d;

.field public C:I

.field public D:Z

.field public E:I

.field public F:I

.field public G:Ljava/util/HashMap;

.field public H:Ll0/e;

.field public I:Ll0/s;

.field public J:Ll0/t;

.field public z:Ljava/lang/String;


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final C(Lm2/x;)V
    .locals 6

    iget-object v0, p0, Ll0/u;->I:Ll0/s;

    if-nez v0, :cond_0

    new-instance v0, Ll0/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll0/s;-><init>(Ll0/u;I)V

    iput-object v0, p0, Ll0/u;->I:Ll0/s;

    :cond_0
    new-instance v1, Lp2/g;

    iget-object v2, p0, Ll0/u;->z:Ljava/lang/String;

    invoke-direct {v1, v2}, Lp2/g;-><init>(Ljava/lang/String;)V

    sget-object v2, Lm2/v;->a:[Lp9/d;

    sget-object v2, Lm2/t;->B:Lm2/w;

    invoke-static {v1}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object v1, p0, Ll0/u;->J:Ll0/t;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Ll0/t;->c:Z

    sget-object v3, Lm2/t;->D:Lm2/w;

    sget-object v4, Lm2/v;->a:[Lp9/d;

    const/16 v5, 0x11

    aget-object v5, v4, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v2, Lp2/g;

    iget-object v1, v1, Ll0/t;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lp2/g;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm2/t;->C:Lm2/w;

    const/16 v3, 0x10

    aget-object v3, v4, v3

    invoke-interface {p1, v1, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Ll0/s;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ll0/s;-><init>(Ll0/u;I)V

    sget-object v2, Lm2/l;->l:Lm2/w;

    new-instance v3, Lm2/a;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v1, Ll0/s;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Ll0/s;-><init>(Ll0/u;I)V

    sget-object v2, Lm2/l;->m:Lm2/w;

    new-instance v3, Lm2/a;

    invoke-direct {v3, v4, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v1, Lad/t;

    const/16 v2, 0x15

    invoke-direct {v1, v2, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    sget-object p0, Lm2/l;->n:Lm2/w;

    new-instance v2, Lm2/a;

    invoke-direct {v2, v4, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, p0, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lm2/v;->a(Lm2/x;Li9/c;)V

    return-void
.end method

.method public final I(Le2/p0;Lc2/q0;I)I
    .locals 1

    iget-object p2, p0, Ll0/u;->J:Ll0/t;

    if-eqz p2, :cond_1

    iget-boolean v0, p2, Ll0/t;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p2, Ll0/t;->d:Ll0/e;

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Ll0/u;->M0()Ll0/e;

    move-result-object p2

    :cond_2
    invoke-virtual {p2, p1}, Ll0/e;->d(Lb3/c;)V

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Ll0/e;->a(ILb3/m;)I

    move-result p0

    return p0
.end method

.method public final M0()Ll0/e;
    .locals 9

    iget-object v0, p0, Ll0/u;->H:Ll0/e;

    if-nez v0, :cond_0

    new-instance v1, Ll0/e;

    iget-object v2, p0, Ll0/u;->z:Ljava/lang/String;

    iget-object v3, p0, Ll0/u;->A:Lp2/m0;

    iget-object v4, p0, Ll0/u;->B:Lt2/d;

    iget v5, p0, Ll0/u;->C:I

    iget-boolean v6, p0, Ll0/u;->D:Z

    iget v7, p0, Ll0/u;->E:I

    iget v8, p0, Ll0/u;->F:I

    invoke-direct/range {v1 .. v8}, Ll0/e;-><init>(Ljava/lang/String;Lp2/m0;Lt2/d;IZII)V

    iput-object v1, p0, Ll0/u;->H:Ll0/e;

    :cond_0
    iget-object p0, p0, Ll0/u;->H:Ll0/e;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 4

    const-string v0, "TextStringSimpleNode::measure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Ll0/u;->J:Ll0/t;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Ll0/t;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Ll0/t;->d:Ll0/e;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Ll0/u;->M0()Ll0/e;

    move-result-object v0

    :cond_2
    invoke-virtual {v0, p1}, Ll0/e;->d(Lb3/c;)V

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Ll0/e;->b(JLb3/m;)Z

    move-result p3

    iget-object p4, v0, Ll0/e;->n:Lp2/r;

    if-eqz p4, :cond_3

    invoke-interface {p4}, Lp2/r;->a()Z

    :cond_3
    iget-object p4, v0, Ll0/e;->j:Lp2/a;

    invoke-static {p4}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p4, p4, Lp2/a;->d:Lq2/j;

    iget-wide v0, v0, Ll0/e;->l:J

    if-eqz p3, :cond_5

    const/4 p3, 0x2

    invoke-static {p0, p3}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v2

    invoke-virtual {v2}, Le2/h1;->b1()V

    iget-object v2, p0, Ll0/u;->G:Ljava/util/HashMap;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Ll0/u;->G:Ljava/util/HashMap;

    :cond_4
    sget-object p3, Lc2/d;->a:Lc2/k;

    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Lq2/j;->d(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lc2/d;->b:Lc2/k;

    iget v3, p4, Lq2/j;->g:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p4, v3}, Lq2/j;->d(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 p3, 0x20

    shr-long p3, v0, p3

    long-to-int p3, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p4, v0

    invoke-static {p3, p3, p4, p4}, Ll9/a;->m(IIII)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    iget-object p0, p0, Ll0/u;->G:Ljava/util/HashMap;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Lb0/y2;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lb0/y2;-><init>(Lc2/f1;I)V

    invoke-interface {p1, p3, p4, p0, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final b0(Le2/p0;Lc2/q0;I)I
    .locals 1

    iget-object p2, p0, Ll0/u;->J:Ll0/t;

    if-eqz p2, :cond_1

    iget-boolean v0, p2, Ll0/t;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p2, Ll0/t;->d:Ll0/e;

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Ll0/u;->M0()Ll0/e;

    move-result-object p2

    :cond_2
    invoke-virtual {p2, p1}, Ll0/e;->d(Lb3/c;)V

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Ll0/e;->a(ILb3/m;)I

    move-result p0

    return p0
.end method

.method public final o(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-object p2, p0, Ll0/u;->J:Ll0/t;

    if-eqz p2, :cond_1

    iget-boolean p3, p2, Ll0/t;->c:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p2, Ll0/t;->d:Ll0/e;

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Ll0/u;->M0()Ll0/e;

    move-result-object p2

    :cond_2
    invoke-virtual {p2, p1}, Ll0/e;->d(Lb3/c;)V

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object p0

    invoke-virtual {p2, p0}, Ll0/e;->e(Lb3/m;)Lp2/r;

    move-result-object p0

    invoke-interface {p0}, Lp2/r;->d()F

    move-result p0

    invoke-static {p0}, Lb0/n1;->o(F)I

    move-result p0

    return p0
.end method

.method public final x0(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-object p2, p0, Ll0/u;->J:Ll0/t;

    if-eqz p2, :cond_1

    iget-boolean p3, p2, Ll0/t;->c:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p2, Ll0/t;->d:Ll0/e;

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Ll0/u;->M0()Ll0/e;

    move-result-object p2

    :cond_2
    invoke-virtual {p2, p1}, Ll0/e;->d(Lb3/c;)V

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object p0

    invoke-virtual {p2, p0}, Ll0/e;->e(Lb3/m;)Lp2/r;

    move-result-object p0

    invoke-interface {p0}, Lp2/r;->c()F

    move-result p0

    invoke-static {p0}, Lb0/n1;->o(F)I

    move-result p0

    return p0
.end method

.method public final z(Le2/j0;)V
    .locals 10

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Ll0/u;->J:Ll0/t;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Ll0/t;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Ll0/t;->d:Ll0/e;

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Ll0/u;->M0()Ll0/e;

    move-result-object v0

    :cond_3
    iget-object v1, v0, Ll0/e;->j:Lp2/a;

    if-eqz v1, :cond_d

    iget-object p1, p1, Le2/j0;->l:Lo1/b;

    iget-object p1, p1, Lo1/b;->m:Lg5/m;

    invoke-virtual {p1}, Lg5/m;->h()Lm1/o;

    move-result-object v2

    iget-boolean p1, v0, Ll0/e;->k:Z

    if-eqz p1, :cond_4

    iget-wide v3, v0, Ll0/e;->l:J

    const/16 v0, 0x20

    shr-long v5, v3, v0

    long-to-int v0, v5

    int-to-float v5, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    long-to-int v0, v3

    int-to-float v6, v0

    invoke-interface {v2}, Lm1/o;->h()V

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-interface/range {v2 .. v7}, Lm1/o;->o(FFFFI)V

    :cond_4
    :try_start_0
    iget-object v0, p0, Ll0/u;->A:Lp2/m0;

    iget-object v0, v0, Lp2/m0;->a:Lp2/e0;

    iget-object v3, v0, Lp2/e0;->m:La3/l;

    if-nez v3, :cond_5

    sget-object v3, La3/l;->b:La3/l;

    :cond_5
    move-object v6, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :goto_1
    iget-object v3, v0, Lp2/e0;->n:Lm1/g0;

    if-nez v3, :cond_6

    sget-object v3, Lm1/g0;->d:Lm1/g0;

    :cond_6
    move-object v5, v3

    iget-object v3, v0, Lp2/e0;->p:Lo1/e;

    if-nez v3, :cond_7

    sget-object v3, Lo1/g;->a:Lo1/g;

    :cond_7
    move-object v7, v3

    iget-object v0, v0, Lp2/e0;->a:La3/o;

    invoke-interface {v0}, La3/o;->b()Lm1/m;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object p0, p0, Ll0/u;->A:Lp2/m0;

    iget-object p0, p0, Lp2/m0;->a:Lp2/e0;

    iget-object p0, p0, Lp2/e0;->a:La3/o;

    invoke-interface {p0}, La3/o;->c()F

    move-result v4

    invoke-virtual/range {v1 .. v7}, Lp2/a;->g(Lm1/o;Lm1/m;FLm1/g0;La3/l;Lo1/e;)V

    goto :goto_3

    :cond_8
    sget-wide v3, Lm1/p;->g:J

    const-wide/16 v8, 0x10

    cmp-long v0, v3, v8

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    iget-object v0, p0, Ll0/u;->A:Lp2/m0;

    invoke-virtual {v0}, Lp2/m0;->b()J

    move-result-wide v3

    cmp-long v0, v3, v8

    if-eqz v0, :cond_a

    iget-object p0, p0, Ll0/u;->A:Lp2/m0;

    invoke-virtual {p0}, Lp2/m0;->b()J

    move-result-wide v3

    goto :goto_2

    :cond_a
    sget-wide v3, Lm1/p;->b:J

    :goto_2
    invoke-virtual/range {v1 .. v7}, Lp2/a;->f(Lm1/o;JLm1/g0;La3/l;Lo1/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz p1, :cond_b

    invoke-interface {v2}, Lm1/o;->q()V

    :cond_b
    :goto_4
    return-void

    :goto_5
    if-eqz p1, :cond_c

    invoke-interface {v2}, Lm1/o;->q()V

    :cond_c
    throw p0

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Internal Error: ParagraphLayoutCache could not provide a Paragraph during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: (layoutCache="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ll0/u;->H:Ll0/e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", textSubstitution="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll0/u;->J:Ll0/t;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
