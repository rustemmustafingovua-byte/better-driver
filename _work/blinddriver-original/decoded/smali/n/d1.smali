.class public final Ln/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/r2;


# instance fields
.field public final l:Ln/o1;

.field public final m:Lr0/e1;

.field public final n:Lr0/e1;

.field public final o:Lr0/e1;

.field public final p:Lr0/e1;

.field public final q:Lr0/a1;

.field public r:Z

.field public final s:Lr0/e1;

.field public t:Ln/p;

.field public final u:Lr0/c1;

.field public v:Z

.field public final w:Ln/r0;

.field public final synthetic x:Ln/h1;


# direct methods
.method public constructor <init>(Ln/h1;Ljava/lang/Object;Ln/p;Ln/o1;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/d1;->x:Ln/h1;

    iput-object p4, p0, Ln/d1;->l:Ln/o1;

    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/d1;->m:Lr0/e1;

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v1, v2, v0}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Ln/d1;->n:Lr0/e1;

    new-instance v3, Ln/y0;

    invoke-virtual {p0}, Ln/d1;->b()Ln/x;

    move-result-object v4

    invoke-virtual {p1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v6, p2

    move-object v8, p3

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Ln/y0;-><init>(Ln/j;Ln/o1;Ljava/lang/Object;Ljava/lang/Object;Ln/p;)V

    invoke-static {v3}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/d1;->o:Lr0/e1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/d1;->p:Lr0/e1;

    new-instance p1, Lr0/a1;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-direct {p1, p2}, Lr0/a1;-><init>(F)V

    iput-object p1, p0, Ln/d1;->q:Lr0/a1;

    invoke-static {v6}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/d1;->s:Lr0/e1;

    iput-object v8, p0, Ln/d1;->t:Ln/p;

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object p1

    invoke-virtual {p1}, Ln/y0;->b()J

    move-result-wide p1

    new-instance p3, Lr0/c1;

    invoke-direct {p3, p1, p2}, Lr0/c1;-><init>(J)V

    iput-object p3, p0, Ln/d1;->u:Lr0/c1;

    sget-object p1, Ln/y1;->a:Ljava/lang/Object;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p2, v5, Ln/o1;->a:Li9/c;

    invoke-interface {p2, v6}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln/p;

    invoke-virtual {p2}, Ln/p;->b()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    invoke-virtual {p2, p1, p4}, Ln/p;->e(FI)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ln/d1;->l:Ln/o1;

    iget-object p1, p1, Ln/o1;->b:Li9/c;

    invoke-interface {p1, p2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    const/4 p1, 0x3

    invoke-static {v1, v1, v2, p1}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object p1

    iput-object p1, p0, Ln/d1;->w:Ln/r0;

    return-void
.end method


# virtual methods
.method public final a()Ln/y0;
    .locals 0

    iget-object p0, p0, Ln/d1;->o:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/y0;

    return-object p0
.end method

.method public final b()Ln/x;
    .locals 0

    iget-object p0, p0, Ln/d1;->n:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/x;

    return-object p0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Ln/d1;->q:Lr0/a1;

    invoke-virtual {v0}, Lr0/a1;->g()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln/d1;->v:Z

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object v0

    iget-object v0, v0, Ln/y0;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object v1

    iget-object v1, v1, Ln/y0;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Ln/d1;->s:Lr0/e1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object p0

    iget-object p0, p0, Ln/y0;->c:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ln/y0;->f(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ln/y0;->d(J)Ln/p;

    move-result-object v0

    iput-object v0, p0, Ln/d1;->t:Ln/p;

    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/Object;Z)V
    .locals 14

    iget-object v0, p0, Ln/d1;->x:Ln/h1;

    iget-object v1, v0, Ln/h1;->h:Lr0/e1;

    iget-object v2, p0, Ln/d1;->m:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Ln/d1;->u:Lr0/c1;

    iget-object v5, p0, Ln/d1;->o:Lr0/e1;

    if-eqz v3, :cond_0

    new-instance v6, Ln/y0;

    iget-object v0, p0, Ln/d1;->t:Ln/p;

    invoke-virtual {v0}, Ln/p;->c()Ln/p;

    move-result-object v11

    iget-object v7, p0, Ln/d1;->w:Ln/r0;

    iget-object v8, p0, Ln/d1;->l:Ln/o1;

    move-object v10, p1

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Ln/y0;-><init>(Ln/j;Ln/o1;Ljava/lang/Object;Ljava/lang/Object;Ln/p;)V

    invoke-virtual {v5, v6}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln/d1;->r:Z

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object p0

    invoke-virtual {p0}, Ln/y0;->b()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lr0/c1;->g(J)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-boolean v3, p0, Ln/d1;->v:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Ln/d1;->b()Ln/x;

    move-result-object v3

    instance-of v3, v3, Ln/r0;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ln/d1;->b()Ln/x;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Ln/d1;->w:Ln/r0;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ln/d1;->b()Ln/x;

    move-result-object v3

    :goto_0
    invoke-virtual {v0}, Ln/h1;->e()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-gtz v6, :cond_3

    move-object v7, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ln/h1;->e()J

    move-result-wide v6

    new-instance v8, Ln/s0;

    invoke-direct {v8, v3, v6, v7}, Ln/s0;-><init>(Ln/x;J)V

    move-object v7, v8

    :goto_1
    new-instance v6, Ln/y0;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v10

    iget-object v11, p0, Ln/d1;->t:Ln/p;

    iget-object v8, p0, Ln/d1;->l:Ln/o1;

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Ln/y0;-><init>(Ln/j;Ln/o1;Ljava/lang/Object;Ljava/lang/Object;Ln/p;)V

    invoke-virtual {v5, v6}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object v2

    invoke-virtual {v2}, Ln/y0;->b()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lr0/c1;->g(J)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Ln/d1;->r:Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ln/h1;->g()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Ln/h1;->i:Ld1/v;

    invoke-virtual {p0}, Ld1/v;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/d1;

    iget-object v4, v3, Ln/d1;->u:Lr0/c1;

    iget-object v5, v4, Lr0/c1;->m:Lr0/k2;

    invoke-static {v5, v4}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object v4

    check-cast v4, Lr0/k2;

    iget-wide v4, v4, Lr0/k2;->c:J

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-virtual {v3}, Ln/d1;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ln/x;)V
    .locals 1

    iget-object v0, p0, Ln/d1;->m:Lr0/e1;

    invoke-virtual {v0, p2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Ln/d1;->n:Lr0/e1;

    invoke-virtual {v0, p3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object p3

    iget-object p3, p3, Ln/y0;->d:Ljava/lang/Object;

    invoke-static {p3, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object p3

    iget-object p3, p3, Ln/y0;->c:Ljava/lang/Object;

    invoke-static {p3, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ln/d1;->e(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final g(Ljava/lang/Object;Ln/x;)V
    .locals 7

    iget-boolean v0, p0, Ln/d1;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln/d1;->m:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Ln/d1;->q:Lr0/a1;

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lr0/a1;->g()F

    move-result v1

    cmpg-float v1, v1, v3

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Ln/d1;->n:Lr0/e1;

    invoke-virtual {v0, p2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lr0/a1;->g()F

    move-result p2

    const/high16 v0, -0x3fc00000    # -3.0f

    cmpg-float p2, p2, v0

    iget-object v1, p0, Ln/d1;->s:Lr0/e1;

    if-nez p2, :cond_2

    move-object p2, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p2

    :goto_1
    iget-object v4, p0, Ln/d1;->p:Lr0/e1;

    invoke-virtual {v4}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-virtual {p0, p2, v5}, Ln/d1;->e(Ljava/lang/Object;Z)V

    invoke-virtual {v2}, Lr0/a1;->g()F

    move-result p2

    cmpg-float p2, p2, v0

    const/4 v5, 0x0

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v4, p2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lr0/a1;->g()F

    move-result p2

    const/4 v4, 0x0

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_4

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object p1

    invoke-virtual {p1}, Ln/y0;->b()J

    move-result-wide p1

    invoke-virtual {p0}, Ln/d1;->a()Ln/y0;

    move-result-object v0

    long-to-float p1, p1

    invoke-virtual {v2}, Lr0/a1;->g()F

    move-result p2

    mul-float/2addr p2, p1

    float-to-long p1, p2

    invoke-virtual {v0, p1, p2}, Ln/y0;->f(J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lr0/a1;->g()F

    move-result p2

    cmpg-float p2, p2, v0

    if-nez p2, :cond_5

    invoke-virtual {v1, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    iput-boolean v5, p0, Ln/d1;->r:Z

    invoke-virtual {v2, v3}, Lr0/a1;->h(F)V

    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln/d1;->s:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ln/d1;->s:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln/d1;->m:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ln/d1;->b()Ln/x;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
