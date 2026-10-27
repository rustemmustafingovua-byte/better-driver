.class public final synthetic Lb0/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lb0/r1;

.field public final synthetic m:Z

.field public final synthetic n:Lf2/s2;

.field public final synthetic o:Lm0/v1;

.field public final synthetic p:Lu2/x;

.field public final synthetic q:Lu2/q;


# direct methods
.method public synthetic constructor <init>(Lb0/r1;ZLf2/s2;Lm0/v1;Lu2/x;Lu2/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/j0;->l:Lb0/r1;

    iput-boolean p2, p0, Lb0/j0;->m:Z

    iput-object p3, p0, Lb0/j0;->n:Lf2/s2;

    iput-object p4, p0, Lb0/j0;->o:Lm0/v1;

    iput-object p5, p0, Lb0/j0;->p:Lu2/x;

    iput-object p6, p0, Lb0/j0;->q:Lu2/q;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lb0/j0;->l:Lb0/r1;

    iget-object v1, v0, Lb0/r1;->o:Lr0/e1;

    check-cast p1, Lc2/u;

    iput-object p1, v0, Lb0/r1;->h:Lc2/u;

    invoke-virtual {v0}, Lb0/r1;->d()Lb0/z2;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object p1, v2, Lb0/z2;->b:Lc2/u;

    :cond_0
    iget-boolean p1, p0, Lb0/j0;->m:Z

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lb0/r1;->a()Lb0/e1;

    move-result-object p1

    sget-object v2, Lb0/e1;->m:Lb0/e1;

    iget-object v3, p0, Lb0/j0;->o:Lm0/v1;

    iget-object v5, p0, Lb0/j0;->p:Lu2/x;

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-ne p1, v2, :cond_2

    iget-object p1, v0, Lb0/r1;->l:Lr0/e1;

    invoke-virtual {p1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb0/j0;->n:Lf2/s2;

    check-cast p1, Lf2/x1;

    iget-object p1, p1, Lf2/x1;->a:Lr0/e1;

    invoke-virtual {p1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Lm0/v1;->r()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lm0/v1;->o()V

    :goto_0
    invoke-static {v3, v6}, Lm0/d1;->w(Lm0/v1;Z)Z

    move-result p1

    iget-object v2, v0, Lb0/r1;->m:Lr0/e1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lm0/d1;->w(Lm0/v1;Z)Z

    move-result p1

    iget-object v2, v0, Lb0/r1;->n:Lr0/e1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-wide v2, v5, Lu2/x;->b:J

    invoke-static {v2, v3}, Lp2/l0;->c(J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lb0/r1;->a()Lb0/e1;

    move-result-object p1

    sget-object v2, Lb0/e1;->n:Lb0/e1;

    if-ne p1, v2, :cond_3

    invoke-static {v3, v6}, Lm0/d1;->w(Lm0/v1;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object v6, p0, Lb0/j0;->q:Lu2/q;

    invoke-static {v0, v5, v6}, Lb0/n1;->x(Lb0/r1;Lu2/x;Lu2/q;)V

    invoke-virtual {v0}, Lb0/r1;->d()Lb0/z2;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p1, v0, Lb0/r1;->e:Lu2/a0;

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lb0/r1;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb0/z2;->b:Lc2/u;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lc2/u;->j()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lb0/z2;->c:Lc2/u;

    if-eqz v1, :cond_5

    iget-object v7, p0, Lb0/z2;->a:Lp2/j0;

    new-instance v8, Lb0/g2;

    const/4 p0, 0x0

    invoke-direct {v8, p0, v0}, Lb0/g2;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lm0/d1;->A(Lc2/u;)Ll1/c;

    move-result-object v9

    invoke-interface {v0, v1, v4}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object v10

    iget-object p0, p1, Lu2/a0;->a:Lu2/y;

    iget-object p0, p0, Lu2/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu2/a0;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object v4, p1, Lu2/a0;->b:Lu2/s;

    invoke-interface/range {v4 .. v10}, Lu2/s;->d(Lu2/x;Lu2/q;Lp2/j0;Lb0/g2;Ll1/c;Ll1/c;)V

    :cond_5
    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
