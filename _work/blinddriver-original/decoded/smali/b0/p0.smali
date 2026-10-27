.class public final synthetic Lb0/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lb0/p0;->l:I

    iput-object p1, p0, Lb0/p0;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/p0;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/p0;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb0/p0;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lb0/p0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Lj9/w;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Lgc/f;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Lr/l2;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Lb0/d2;

    check-cast p1, Ln/i;

    iget-object v3, p1, Ln/i;->e:Lr0/e1;

    iget-object v4, p1, Ln/i;->d:Li9/a;

    iget-object p1, p1, Ln/i;->i:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget v5, v0, Lj9/w;->l:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Lr/f1;->a(F)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v2, v3}, Lgc/f;->c(Lr/l2;F)F

    move-result v1

    sub-float v1, v3, v1

    invoke-static {v1}, Lr/f1;->a(F)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-interface {v4}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v1, v0, Lj9/w;->l:F

    add-float/2addr v1, v3

    iput v1, v0, Lj9/w;->l:F

    :cond_1
    iget v0, v0, Lj9/w;->l:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb0/d2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-interface {v4}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Lj9/w;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Lr/j2;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Lj9/w;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Lr/k;

    check-cast p1, Ln/i;

    iget-object v3, p1, Ln/i;->e:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget v4, v0, Lj9/w;->l:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lr/j2;->a(F)F

    move-result v1

    iget-object v4, p1, Ln/i;->e:Lr0/e1;

    invoke-virtual {v4}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v0, Lj9/w;->l:F

    iget-object v0, p1, Ln/i;->a:Ln/o1;

    iget-object v0, v0, Ln/o1;->b:Li9/c;

    iget-object v4, p1, Ln/i;->f:Ln/p;

    invoke-interface {v0, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, v2, Lj9/w;->l:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p1, Ln/i;->i:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Ln/i;->d:Li9/a;

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Lhd/e;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lhd/e;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Lhd/e;->h:Lu9/j1;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lu9/c1;->b()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, v0, Lhd/e;->e:Landroid/content/SharedPreferences;

    const-string p1, "enabled"

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-boolean p0, v0, Lhd/e;->i:Z

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lhd/e;->d()V

    :cond_6
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/v;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Li9/a;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    check-cast p1, Lr0/g0;

    const-string v3, "$this$DisposableEffect"

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lb4/d;

    const/4 v3, 0x1

    invoke-direct {p1, v1, v2, p0, v3}, Lb4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    new-instance p0, Lb0/q2;

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0, p1}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Li9/a;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    check-cast p1, Ljava/util/Map;

    const-string v3, "it"

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lod/i3;

    invoke-static {v0}, Lod/m;->P(Landroid/content/Context;)Lod/i3;

    move-result-object v3

    invoke-interface {v2, v3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v3}, Ll7/a;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_7
    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lod/i3;

    if-ne v1, p1, :cond_8

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lod/i3;

    sget-object v1, Lod/i3;->l:Lod/i3;

    if-eq p1, v1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x190

    cmp-long p0, v1, p0

    if-gez p0, :cond_8

    invoke-static {v0}, Lod/m;->Q(Landroid/content/Context;)V

    :cond_8
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Lsc/q0;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Lua/nav/c;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Lf2/k2;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Li9/f;

    check-cast p1, Lw/e;

    const-string v3, "$this$LazyColumn"

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lsc/q0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lod/p;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lod/p;-><init>(Ljava/util/List;I)V

    new-instance v5, Lod/d3;

    invoke-direct {v5, v0, v1, v2, p0}, Lod/d3;-><init>(Ljava/util/List;Lua/nav/c;Lf2/k2;Li9/f;)V

    new-instance p0, Lz0/d;

    const v0, 0x2fd4df92

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v5}, Lz0/d;-><init>(IZLt8/e;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0, v4, p0}, Lw/e;->b(ILi9/c;Li9/c;Lz0/d;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Ln/e0;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Lj9/w;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Lu9/t;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr0/r2;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_9
    move-wide v5, v3

    :goto_2
    iget-wide v7, v1, Ln/e0;->c:J

    iget-object p1, v1, Ln/e0;->a:Lt0/b;

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v0, v7, v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_a

    iget v0, v2, Lj9/w;->l:F

    invoke-interface {p0}, Lu9/t;->C()Ly8/h;

    move-result-object v9

    invoke-static {v9}, Ln/d;->j(Ly8/h;)F

    move-result v9

    cmpg-float v0, v0, v9

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    iput-wide v3, v1, Ln/e0;->c:J

    iget-object v0, p1, Lt0/b;->l:[Ljava/lang/Object;

    iget v3, p1, Lt0/b;->n:I

    move v4, v7

    :goto_3
    if-ge v4, v3, :cond_b

    aget-object v9, v0, v4

    check-cast v9, Ln/c0;

    iput-boolean v8, v9, Ln/c0;->q:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    invoke-interface {p0}, Lu9/t;->C()Ly8/h;

    move-result-object p0

    invoke-static {p0}, Ln/d;->j(Ly8/h;)F

    move-result p0

    iput p0, v2, Lj9/w;->l:F

    :goto_4
    iget p0, v2, Lj9/w;->l:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_c

    iget-object p0, p1, Lt0/b;->l:[Ljava/lang/Object;

    iget p1, p1, Lt0/b;->n:I

    :goto_5
    if-ge v7, p1, :cond_11

    aget-object v0, p0, v7

    check-cast v0, Ln/c0;

    iget-object v1, v0, Ln/c0;->o:Ln/y0;

    iget-object v1, v1, Ln/y0;->c:Ljava/lang/Object;

    iget-object v2, v0, Ln/c0;->n:Lr0/e1;

    invoke-virtual {v2, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iput-boolean v8, v0, Ln/c0;->q:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    iget-wide v2, v1, Ln/e0;->c:J

    sub-long/2addr v5, v2

    long-to-float v0, v5

    div-float/2addr v0, p0

    float-to-long v2, v0

    iget-object p0, p1, Lt0/b;->l:[Ljava/lang/Object;

    iget p1, p1, Lt0/b;->n:I

    move v0, v7

    move v4, v8

    :goto_6
    if-ge v0, p1, :cond_10

    aget-object v5, p0, v0

    check-cast v5, Ln/c0;

    iget-boolean v6, v5, Ln/c0;->p:Z

    if-nez v6, :cond_e

    iget-object v6, v5, Ln/c0;->s:Ln/e0;

    iget-object v6, v6, Ln/e0;->b:Lr0/e1;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v9}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-boolean v6, v5, Ln/c0;->q:Z

    if-eqz v6, :cond_d

    iput-boolean v7, v5, Ln/c0;->q:Z

    iput-wide v2, v5, Ln/c0;->r:J

    :cond_d
    iget-wide v9, v5, Ln/c0;->r:J

    sub-long v9, v2, v9

    iget-object v6, v5, Ln/c0;->o:Ln/y0;

    invoke-virtual {v6, v9, v10}, Ln/y0;->f(J)Ljava/lang/Object;

    move-result-object v6

    iget-object v11, v5, Ln/c0;->n:Lr0/e1;

    invoke-virtual {v11, v6}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v6, v5, Ln/c0;->o:Ln/y0;

    invoke-interface {v6, v9, v10}, Ln/f;->e(J)Z

    move-result v6

    iput-boolean v6, v5, Ln/c0;->p:Z

    :cond_e
    iget-boolean v5, v5, Ln/c0;->p:Z

    if-nez v5, :cond_f

    move v4, v7

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    xor-int/lit8 p0, v4, 0x1

    iget-object p1, v1, Ln/e0;->d:Lr0/e1;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_11
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Ln/c;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Ln/k;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Li9/c;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Lj9/u;

    check-cast p1, Ln/i;

    iget-object v3, v0, Ln/c;->c:Ln/k;

    invoke-static {p1, v3}, Ln/d;->o(Ln/i;Ln/k;)V

    iget-object v3, p1, Ln/i;->e:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ln/c;->a(Ln/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v0, Ln/c;->c:Ln/k;

    iget-object v3, v3, Ln/k;->m:Lr0/e1;

    invoke-virtual {v3, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Ln/k;->m:Lr0/e1;

    invoke-virtual {v1, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    if-eqz v2, :cond_12

    invoke-interface {v2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v0, p1, Ln/i;->i:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Ln/i;->d:Li9/a;

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj9/u;->l:Z

    goto :goto_7

    :cond_13
    if-eqz v2, :cond_14

    invoke-interface {v2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    :goto_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_7
    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/maps/MapView;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Lkd/x;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    check-cast p1, Landroid/content/Context;

    const-string v3, "it"

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkd/q;

    invoke-direct {p1, v1, v2, p0}, Lkd/q;-><init>(Lkd/x;Lr0/u0;Lr0/u0;)V

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapView;->getMapAsync(Lorg/maplibre/android/maps/OnMapReadyCallback;)V

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Lkd/x;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    check-cast p1, Lorg/maplibre/android/maps/Style;

    const-string v3, "style"

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "building-3d"

    invoke-virtual {p1, v3}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v3

    if-eqz v3, :cond_15

    const-string v4, "none"

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->visibility(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    filled-new-array {v4}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v3

    invoke-static {v3}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_15
    :goto_8
    :try_start_1
    iget-object v3, v0, Lkd/x;->a:Landroid/app/Application;

    iget-boolean v0, v0, Lkd/x;->r:Z

    invoke-static {p1, v3, v0}, Lod/g3;->r0(Lorg/maplibre/android/maps/Style;Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_9
    invoke-interface {v2, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Lb0/p0;->m:Ljava/lang/Object;

    check-cast v0, Lb0/r1;

    iget-object v1, p0, Lb0/p0;->n:Ljava/lang/Object;

    check-cast v1, Lu2/y;

    iget-object v2, p0, Lb0/p0;->o:Ljava/lang/Object;

    check-cast v2, Lu2/x;

    iget-object p0, p0, Lb0/p0;->p:Ljava/lang/Object;

    check-cast p0, Lu2/k;

    check-cast p1, Lr0/g0;

    invoke-virtual {v0}, Lb0/r1;->b()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, v0, Lb0/r1;->d:Lg5/e;

    iget-object v3, v0, Lb0/r1;->v:Lb0/h0;

    iget-object v4, v0, Lb0/r1;->w:Lb0/h0;

    new-instance v5, Lj9/y;

    invoke-direct {v5}, Lj9/y;-><init>()V

    new-instance v6, Lb0/o;

    const/4 v7, 0x3

    invoke-direct {v6, p1, v3, v5, v7}, Lb0/o;-><init>(Ljava/lang/Object;Li9/c;Ljava/lang/Object;I)V

    iget-object p1, v1, Lu2/y;->a:Lu2/s;

    invoke-interface {p1, v2, p0, v6, v4}, Lu2/s;->g(Lu2/x;Lu2/k;Lb0/o;Lb0/h0;)V

    new-instance p0, Lu2/a0;

    invoke-direct {p0, v1, p1}, Lu2/a0;-><init>(Lu2/y;Lu2/s;)V

    iget-object p1, v1, Lu2/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object p0, v5, Lj9/y;->m:Ljava/lang/Object;

    iput-object p0, v0, Lb0/r1;->e:Lu2/a0;

    :cond_16
    new-instance p0, Lb0/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
