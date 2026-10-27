.class public final Lad/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldd/k0;

.field public final b:Lu9/t;

.field public final c:Lp/a1;

.field public final d:Lad/r;

.field public e:Lid/d0;

.field public f:Lb0/a;

.field public g:Lad/f2;

.field public final h:Lad/l;

.field public i:Li9/a;

.field public final j:Lx9/l0;

.field public final k:Lx9/l0;

.field public l:Lu9/j1;

.field public m:J

.field public n:J

.field public o:Li9/a;

.field public p:Lsc/a0;

.field public q:Ljava/util/List;

.field public r:Lua/nav/routing/GeoPoint;

.field public s:J

.field public t:Lu9/j1;

.field public u:Ljava/lang/Long;

.field public v:Lid/a0;

.field public w:Ljava/lang/Long;

.field public x:J

.field public y:Z

.field public z:J


# direct methods
.method public constructor <init>(Ldd/k0;Lu9/t;Lp/a1;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "scope"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    iput-object v2, v0, Lad/x;->a:Ldd/k0;

    iput-object v1, v0, Lad/x;->b:Lu9/t;

    move-object/from16 v1, p3

    iput-object v1, v0, Lad/x;->c:Lp/a1;

    new-instance v1, Lad/r;

    invoke-direct {v1}, Lad/r;-><init>()V

    iput-object v1, v0, Lad/x;->d:Lad/r;

    new-instance v1, Lad/l;

    new-instance v2, Lad/t;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2}, Lad/l;-><init>(Li9/a;)V

    new-instance v2, Lad/u;

    invoke-direct {v2, v0, v3}, Lad/u;-><init>(Lad/x;I)V

    iput-object v2, v1, Lad/l;->l:Li9/c;

    iput-object v1, v0, Lad/x;->h:Lad/l;

    new-instance v1, La1/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, La1/b;-><init>(I)V

    iput-object v1, v0, Lad/x;->i:Li9/a;

    new-instance v3, Lad/s;

    const/4 v15, 0x0

    const/16 v16, 0xfff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    invoke-direct/range {v3 .. v16}, Lad/s;-><init>(Lua/nav/routing/GeoPoint;FZDZDLjava/lang/String;JZI)V

    invoke-static {v3}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v1

    iput-object v1, v0, Lad/x;->j:Lx9/l0;

    iput-object v1, v0, Lad/x;->k:Lx9/l0;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lad/x;->m:J

    iput-wide v1, v0, Lad/x;->n:J

    new-instance v1, La1/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, La1/b;-><init>(I)V

    iput-object v1, v0, Lad/x;->o:Li9/a;

    sget-object v1, Lu8/r;->l:Lu8/r;

    iput-object v1, v0, Lad/x;->q:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lad/x;->y:Z

    return-void
.end method


# virtual methods
.method public final a()Ldd/l0;
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lad/x;->j:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/s;

    iget-object v1, v0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lad/s;->g:Ljava/lang/String;

    const-string v4, "GPS"

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v4, Ldd/l0;

    sget-object v5, Ldd/o;->n:Ldd/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v12, v1, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v14, v0, Lad/s;->d:D

    double-to-float v1, v14

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    iget-boolean v1, v0, Lad/s;->c:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lad/s;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_2
    move-object/from16 v16, v2

    iget-wide v0, v0, Lad/s;->f:D

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v4 .. v20}, Ldd/l0;-><init>(Ldd/o;JJDDLjava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Z)V

    return-object v4
.end method

.method public final b(Lua/nav/routing/GeoPoint;DJ)V
    .locals 12

    iget-object v3, p0, Lad/x;->p:Lsc/a0;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lad/x;->t:Lu9/j1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lu9/c1;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lad/x;->r:Lua/nav/routing/GeoPoint;

    if-eqz v0, :cond_3

    sget-object v1, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v4, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v6, v0, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v8, p1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v10, p1, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v4 .. v11}, Ldd/s0;->a(DDDD)D

    move-result-wide v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, p2

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lad/x;->s:J

    sub-long v0, p4, v0

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-instance v0, Lad/v;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lad/v;-><init>(Lad/x;Lua/nav/routing/GeoPoint;Li9/g;DLy8/c;)V

    const/4 p1, 0x3

    iget-object v2, p0, Lad/x;->b:Lu9/t;

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v0, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p1

    iput-object p1, p0, Lad/x;->t:Lu9/j1;

    return-void
.end method
