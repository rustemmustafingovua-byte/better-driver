.class public final synthetic Lb0/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lb0/r1;

.field public final synthetic m:Z

.field public final synthetic n:Lu2/y;

.field public final synthetic o:Lu2/x;

.field public final synthetic p:Lu2/k;

.field public final synthetic q:Lu2/q;

.field public final synthetic r:Lm0/v1;

.field public final synthetic s:Lu9/t;

.field public final synthetic t:Ly/c;


# direct methods
.method public synthetic constructor <init>(Lb0/r1;ZLu2/y;Lu2/x;Lu2/k;Lu2/q;Lm0/v1;Lu9/t;Ly/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/g0;->l:Lb0/r1;

    iput-boolean p2, p0, Lb0/g0;->m:Z

    iput-object p3, p0, Lb0/g0;->n:Lu2/y;

    iput-object p4, p0, Lb0/g0;->o:Lu2/x;

    iput-object p5, p0, Lb0/g0;->p:Lu2/k;

    iput-object p6, p0, Lb0/g0;->q:Lu2/q;

    iput-object p7, p0, Lb0/g0;->r:Lm0/v1;

    iput-object p8, p0, Lb0/g0;->s:Lu9/t;

    iput-object p9, p0, Lb0/g0;->t:Ly/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lk1/y;

    iget-object v3, p0, Lb0/g0;->l:Lb0/r1;

    invoke-virtual {v3}, Lb0/r1;->b()Z

    move-result v0

    check-cast p1, Lk1/z;

    invoke-virtual {p1}, Lk1/z;->b()Z

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lk1/z;->b()Z

    move-result v0

    iget-object v1, v3, Lb0/r1;->f:Lr0/e1;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lb0/r1;->b()Z

    move-result v0

    iget-object v2, p0, Lb0/g0;->o:Lu2/x;

    iget-object v5, p0, Lb0/g0;->q:Lu2/q;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lb0/g0;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb0/g0;->n:Lu2/y;

    iget-object v1, p0, Lb0/g0;->p:Lu2/k;

    invoke-static {v0, v3, v2, v1, v5}, Lb0/n1;->z(Lu2/y;Lb0/r1;Lu2/x;Lu2/k;Lu2/q;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lb0/n1;->q(Lb0/r1;)V

    :goto_0
    invoke-virtual {p1}, Lk1/z;->b()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lb0/r1;->d()Lb0/z2;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v0, Landroidx/lifecycle/l0;

    const/4 v6, 0x0

    const/4 v7, 0x2

    iget-object v1, p0, Lb0/g0;->t:Ly/c;

    invoke-direct/range {v0 .. v7}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lb0/g0;->s:Lu9/t;

    invoke-static {v2, v8, v8, v0, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_2
    invoke-virtual {p1}, Lk1/z;->b()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lb0/g0;->r:Lm0/v1;

    invoke-virtual {p0, v8}, Lm0/v1;->g(Ll1/b;)V

    :cond_3
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
