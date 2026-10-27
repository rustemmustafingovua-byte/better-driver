.class public final Lm0/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/c2;


# instance fields
.field public a:Z

.field public b:Lp2/l0;

.field public c:Lm0/b0;

.field public final synthetic d:Lm0/v1;


# direct methods
.method public constructor <init>(Lm0/v1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/t1;->d:Lm0/v1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm0/t1;->a:Z

    sget-object p1, Lm0/c0;->d:Lm0/b0;

    iput-object p1, p0, Lm0/t1;->c:Lm0/b0;

    return-void
.end method


# virtual methods
.method public final a(JLm0/b0;)V
    .locals 8

    iget-object v0, p0, Lm0/t1;->d:Lm0/v1;

    iget-object v1, v0, Lm0/v1;->r:Lr0/e1;

    invoke-virtual {v0}, Lm0/v1;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/d1;

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v2, Lb0/d1;->n:Lb0/d1;

    invoke-virtual {v1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/4 v1, -0x1

    iput v1, v0, Lm0/v1;->t:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lm0/t1;->a:Z

    iput-object p3, p0, Lm0/t1;->c:Lm0/b0;

    invoke-virtual {v0}, Lm0/v1;->o()V

    iget-object p3, v0, Lm0/v1;->d:Lb0/r1;

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lb0/r1;->d()Lb0/z2;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, p2}, Lb0/z2;->c(J)Z

    move-result p3

    if-ne p3, v1, :cond_2

    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object p3

    iget-object p3, p3, Lu2/x;->a:Lp2/g;

    iget-object p3, p3, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lm0/v1;->h(Z)V

    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object p3

    sget-wide v1, Lp2/l0;->b:J

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {p3, v4, v1, v2, v3}, Lu2/x;->a(Lu2/x;Lp2/g;JI)Lu2/x;

    move-result-object v1

    iget-object v6, p0, Lm0/t1;->c:Lm0/b0;

    const/4 v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lm0/v1;->c(Lm0/v1;Lu2/x;JZZLm0/b0;Z)J

    move-result-wide p1

    move-wide v3, v2

    new-instance p3, Lp2/l0;

    invoke-direct {p3, p1, p2}, Lp2/l0;-><init>(J)V

    iput-object p3, v0, Lm0/v1;->p:Lp2/l0;

    new-instance p3, Lp2/l0;

    invoke-direct {p3, p1, p2}, Lp2/l0;-><init>(J)V

    iput-object p3, p0, Lm0/t1;->b:Lp2/l0;

    goto :goto_0

    :cond_2
    move-wide v3, p1

    iget-object p1, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lb0/r1;->d()Lb0/z2;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1, v3, v4}, Lb0/z2;->b(ZJ)I

    move-result p1

    iget-object p2, v0, Lm0/v1;->b:Lu2/q;

    invoke-interface {p2, p1}, Lu2/q;->j(I)I

    move-result p1

    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object p2

    iget-object p2, p2, Lu2/x;->a:Lp2/g;

    invoke-static {p1, p1}, Lp2/d0;->b(II)J

    move-result-wide v5

    invoke-static {p2, v5, v6}, Lm0/v1;->e(Lp2/g;J)Lu2/x;

    move-result-object p1

    invoke-virtual {v0, v2}, Lm0/v1;->h(Z)V

    iget-object p2, v0, Lm0/v1;->k:Lt1/a;

    if-eqz p2, :cond_3

    const/16 p3, 0x9

    invoke-interface {p2, p3}, Lt1/a;->a(I)V

    :cond_3
    iget-object p2, v0, Lm0/v1;->c:Li9/c;

    invoke-interface {p2, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p1, p1, Lu2/x;->b:J

    new-instance p3, Lp2/l0;

    invoke-direct {p3, p1, p2}, Lp2/l0;-><init>(J)V

    iput-object p3, v0, Lm0/v1;->w:Lp2/l0;

    :cond_4
    iput-boolean v2, p0, Lm0/t1;->a:Z

    :goto_0
    sget-object p0, Lb0/e1;->l:Lb0/e1;

    invoke-virtual {v0, p0}, Lm0/v1;->q(Lb0/e1;)V

    iput-wide v3, v0, Lm0/v1;->o:J

    new-instance p0, Ll1/b;

    invoke-direct {p0, v3, v4}, Ll1/b;-><init>(J)V

    iget-object p1, v0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {p1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const-wide/16 p0, 0x0

    iput-wide p0, v0, Lm0/v1;->q:J

    :cond_5
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lm0/t1;->f()V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(J)V
    .locals 8

    iget-object v0, p0, Lm0/t1;->d:Lm0/v1;

    invoke-virtual {v0}, Lm0/v1;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    iget-object v1, v1, Lu2/x;->a:Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-wide v1, v0, Lm0/v1;->q:J

    invoke-static {v1, v2, p1, p2}, Ll1/b;->e(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lm0/v1;->q:J

    iget-object p1, v0, Lm0/v1;->d:Lb0/r1;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lb0/r1;->d()Lb0/z2;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-wide v1, v0, Lm0/v1;->o:J

    iget-wide v3, v0, Lm0/v1;->q:J

    invoke-static {v1, v2, v3, v4}, Ll1/b;->e(JJ)J

    move-result-wide v1

    new-instance v3, Ll1/b;

    invoke-direct {v3, v1, v2}, Ll1/b;-><init>(J)V

    iget-object v1, v0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {v1, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lm0/v1;->p:Lp2/l0;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lm0/v1;->i()Ll1/b;

    move-result-object v1

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v1, v1, Ll1/b;->a:J

    invoke-virtual {p1, v1, v2}, Lb0/z2;->c(J)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lm0/v1;->b:Lu2/q;

    iget-wide v2, v0, Lm0/v1;->o:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v2, v3}, Lb0/z2;->b(ZJ)I

    move-result v2

    invoke-interface {v1, v2}, Lu2/q;->j(I)I

    move-result v1

    iget-object v2, v0, Lm0/v1;->b:Lu2/q;

    invoke-virtual {v0}, Lm0/v1;->i()Ll1/b;

    move-result-object v3

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v5, v3, Ll1/b;->a:J

    invoke-virtual {p1, v4, v5, v6}, Lb0/z2;->b(ZJ)I

    move-result p1

    invoke-interface {v2, p1}, Lu2/q;->j(I)I

    move-result p1

    if-ne v1, p1, :cond_1

    sget-object p1, Lm0/c0;->d:Lm0/b0;

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_1
    sget-object p1, Lm0/c0;->e:Lm0/b0;

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    invoke-virtual {v0}, Lm0/v1;->i()Ll1/b;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v2, p1, Ll1/b;->a:J

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lm0/v1;->c(Lm0/v1;Lu2/x;JZZLm0/b0;Z)J

    move-result-wide v1

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lm0/v1;->p:Lp2/l0;

    if-eqz v1, :cond_3

    iget-wide v1, v1, Lp2/l0;->a:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_2

    :cond_3
    iget-wide v1, v0, Lm0/v1;->o:J

    invoke-virtual {p1, p2, v1, v2}, Lb0/z2;->b(ZJ)I

    move-result v1

    :goto_2
    invoke-virtual {v0}, Lm0/v1;->i()Ll1/b;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v2, v2, Ll1/b;->a:J

    invoke-virtual {p1, p2, v2, v3}, Lb0/z2;->b(ZJ)I

    move-result p1

    iget-object v2, v0, Lm0/v1;->p:Lp2/l0;

    if-nez v2, :cond_4

    if-ne v1, p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    invoke-virtual {v0}, Lm0/v1;->i()Ll1/b;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v2, p1, Ll1/b;->a:J

    iget-object v6, p0, Lm0/t1;->c:Lm0/b0;

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lm0/v1;->c(Lm0/v1;Lu2/x;JZZLm0/b0;Z)J

    move-result-wide v1

    :goto_3
    new-instance p1, Lp2/l0;

    invoke-direct {p1, v1, v2}, Lp2/l0;-><init>(J)V

    iput-object p1, p0, Lm0/t1;->b:Lp2/l0;

    iget-object p1, v0, Lm0/v1;->p:Lp2/l0;

    invoke-static {v1, v2, p1}, Lp2/l0;->a(JLjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iput-boolean p2, p0, Lm0/t1;->a:Z

    :cond_5
    invoke-virtual {v0, p2}, Lm0/v1;->t(Z)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Lm0/t1;->d:Lm0/v1;

    iget-object v1, v0, Lm0/v1;->r:Lr0/e1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {v1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lm0/c0;->d:Lm0/b0;

    iput-object v1, p0, Lm0/t1;->c:Lm0/b0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm0/v1;->t(Z)V

    iget-object v3, p0, Lm0/t1;->b:Lp2/l0;

    if-eqz v3, :cond_0

    iget-wide v3, v3, Lp2/l0;->a:J

    :goto_0
    invoke-static {v3, v4}, Lp2/l0;->c(J)Z

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object v3

    iget-wide v3, v3, Lu2/x;->b:J

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_1

    sget-object v4, Lb0/e1;->n:Lb0/e1;

    goto :goto_2

    :cond_1
    sget-object v4, Lb0/e1;->m:Lb0/e1;

    :goto_2
    invoke-virtual {v0, v4}, Lm0/v1;->q(Lb0/e1;)V

    iget-object v4, v0, Lm0/v1;->d:Lb0/r1;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    invoke-static {v0, v1}, Lm0/d1;->w(Lm0/v1;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v1

    goto :goto_3

    :cond_2
    move v6, v5

    :goto_3
    iget-object v4, v4, Lb0/r1;->m:Lr0/e1;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_3
    iget-object v4, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v4, :cond_5

    if-nez v3, :cond_4

    invoke-static {v0, v5}, Lm0/d1;->w(Lm0/v1;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    move v6, v5

    :goto_4
    iget-object v4, v4, Lb0/r1;->n:Lr0/e1;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_5
    iget-object v4, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    invoke-static {v0, v1}, Lm0/d1;->w(Lm0/v1;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v1, v5

    :goto_5
    iget-object v3, v4, Lb0/r1;->o:Lr0/e1;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_7
    iget-boolean p0, p0, Lm0/t1;->a:Z

    if-eqz p0, :cond_8

    iget-object p0, v0, Lm0/v1;->p:Lp2/l0;

    invoke-static {v0, p0}, Lm0/v1;->b(Lm0/v1;Lp2/l0;)V

    :cond_8
    iput-object v2, v0, Lm0/v1;->p:Lp2/l0;

    return-void
.end method

.method public final onCancel()V
    .locals 0

    invoke-virtual {p0}, Lm0/t1;->f()V

    return-void
.end method
