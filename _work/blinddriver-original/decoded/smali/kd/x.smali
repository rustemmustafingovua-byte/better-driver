.class public final Lkd/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lx9/u;

.field public final c:Lx9/g;

.field public final d:Lx9/g;

.field public final e:Lp2/y;

.field public final f:Lsc/i;

.field public final g:Lp2/y;

.field public final h:Lad/t;

.field public final i:Landroid/view/WindowManager;

.field public final j:Lkd/n;

.field public final k:Landroid/content/SharedPreferences;

.field public final l:F

.field public final m:Landroid/view/WindowManager$LayoutParams;

.field public final n:Lr0/e1;

.field public final o:Lr0/e1;

.field public p:Lf2/k1;

.field public q:Lorg/maplibre/android/maps/MapView;

.field public final r:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Lx9/u;Lx9/g;Lx9/g;Lp2/y;Lsc/i;Lp2/y;Lad/t;)V
    .locals 6

    const-string v0, "sharing"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabled"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd/x;->a:Landroid/app/Application;

    iput-object p2, p0, Lkd/x;->b:Lx9/u;

    iput-object p3, p0, Lkd/x;->c:Lx9/g;

    iput-object p4, p0, Lkd/x;->d:Lx9/g;

    iput-object p5, p0, Lkd/x;->e:Lp2/y;

    iput-object p6, p0, Lkd/x;->f:Lsc/i;

    iput-object p7, p0, Lkd/x;->g:Lp2/y;

    iput-object p8, p0, Lkd/x;->h:Lad/t;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p2, p3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lkd/x;->i:Landroid/view/WindowManager;

    new-instance p2, Lkd/n;

    invoke-direct {p2}, Lkd/n;-><init>()V

    iput-object p2, p0, Lkd/x;->j:Lkd/n;

    const-string p2, "share_overlay"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lkd/x;->k:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    iput p4, p0, Lkd/x;->l:F

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const-string p5, "w"

    const/16 p6, 0x9c

    invoke-interface {p2, p5, p6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p7

    int-to-float p7, p7

    mul-float/2addr p7, p4

    float-to-int v1, p7

    const/16 v4, 0x28

    const/4 v5, -0x3

    const/4 v2, -0x2

    const/16 v3, 0x7f6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const p7, 0x800033

    iput p7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 p7, 0x10

    int-to-float p7, p7

    mul-float/2addr p7, p4

    float-to-int p7, p7

    const-string p8, "x"

    invoke-interface {p2, p8, p7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p7

    iput p7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 p7, 0x60

    int-to-float p7, p7

    mul-float/2addr p7, p4

    float-to-int p4, p7

    const-string p7, "y"

    invoke-interface {p2, p7, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v0, p0, Lkd/x;->m:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p5, p6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p4

    iput-object p4, p0, Lkd/x;->n:Lr0/e1;

    const-string p4, "h"

    const/16 p5, 0xbe

    invoke-interface {p2, p4, p5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lkd/x;->o:Lr0/e1;

    :try_start_0
    const-string p2, "map"

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "theme"

    const-string p4, "AUTO"

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p1}, Lod/h3;->valueOf(Ljava/lang/String;)Lod/h3;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    :goto_0
    sget-object p2, Lod/h3;->l:Lod/h3;

    instance-of p4, p1, Lt8/l;

    if-eqz p4, :cond_0

    move-object p1, p2

    :cond_0
    check-cast p1, Lod/h3;

    iget-object p2, p0, Lkd/x;->a:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 p4, 0x20

    const/4 p5, 0x1

    if-ne p2, p4, :cond_1

    move p2, p5

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, p5, :cond_4

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    move p3, p5

    goto :goto_2

    :cond_2
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    move p3, p2

    :cond_4
    :goto_2
    iput-boolean p3, p0, Lkd/x;->r:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Li9/a;Lr0/q;I)V
    .locals 29

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    const v1, -0x5ad59df

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v1, p4, 0x6

    move-object/from16 v4, p1

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p4, v1

    goto :goto_1

    :cond_1
    move/from16 v1, p4

    :goto_1
    and-int/lit8 v2, p4, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_3

    invoke-virtual {v0, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x13

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v6, :cond_4

    move v2, v8

    goto :goto_3

    :cond_4
    move v2, v7

    :goto_3
    and-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x2e

    int-to-float v2, v2

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v2}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    const/16 v6, 0x22

    int-to-float v6, v6

    invoke-static {v2, v6}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    const-wide v9, 0xe63949abL

    invoke-static {v9, v10}, Lm1/v;->d(J)J

    move-result-wide v9

    const/16 v6, 0xa

    int-to-float v6, v6

    invoke-static {v6}, La0/e;->a(F)La0/d;

    move-result-object v6

    invoke-static {v2, v9, v10, v6}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v2

    and-int/lit8 v6, v1, 0x70

    if-ne v6, v3, :cond_5

    move v3, v8

    goto :goto_4

    :cond_5
    move v3, v7

    :goto_4
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_6

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v6, v3, :cond_7

    :cond_6
    new-instance v6, Lkd/p;

    const/4 v3, 0x0

    invoke-direct {v6, v5, v3}, Lkd/p;-><init>(Li9/a;I)V

    invoke-virtual {v0, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v6, Li9/a;

    const/16 v3, 0xf

    const/4 v9, 0x0

    invoke-static {v2, v7, v9, v6, v3}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v2

    sget-object v3, Lf1/c;->p:Lf1/j;

    invoke-static {v3, v7}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v6, v0, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v2, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v10, v0, Lr0/q;->S:Z

    if-eqz v10, :cond_8

    invoke-virtual {v0, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_5
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v3, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v7, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v0, v3, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v0, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v2, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move v2, v8

    sget-wide v8, Lm1/p;->c:J

    const/16 v3, 0xd

    invoke-static {v3}, La/a;->k(I)J

    move-result-wide v10

    sget-object v12, Lt2/k;->q:Lt2/k;

    and-int/lit8 v1, v1, 0xe

    const v3, 0x186180

    or-int v26, v1, v3

    const/16 v27, 0x0

    const v28, 0x3ffaa

    const/4 v7, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v0

    move-object v6, v4

    invoke-static/range {v6 .. v28}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v0, v2}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_6
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v0, Lb0/a3;

    const/4 v2, 0x6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method

.method public final b(Lorg/maplibre/android/maps/MapView;Lad/a0;Lr0/q;I)V
    .locals 11

    const v0, 0x70fc5107

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p3, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0x180

    if-nez v1, :cond_3

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    and-int/2addr v0, v4

    invoke-virtual {p3, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v0, v2, :cond_5

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p3, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v6, v0

    check-cast v6, Lr0/u0;

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p3, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    move-object v7, v0

    check-cast v7, Lr0/u0;

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p3, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v0, Lr0/u0;

    sget-object v3, Lu/b1;->c:Lu/v;

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_8

    new-instance v4, Lb0/y;

    const/4 v5, 0x6

    invoke-direct {v4, v0, v5}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {p3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v4, Li9/c;

    invoke-static {v3, v4}, Lc2/x;->n(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v3

    invoke-virtual {p3, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_9

    if-ne v5, v2, :cond_a

    :cond_9
    new-instance v4, Lb0/p0;

    const/4 v9, 0x2

    move-object v5, p1

    move-object v8, v7

    move-object v7, v6

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lb0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v6, v7

    move-object v7, v8

    invoke-virtual {p3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_a
    check-cast v5, Li9/c;

    const/16 v4, 0x30

    invoke-static {v5, v3, v1, p3, v4}, Le3/l;->b(Li9/c;Lf1/r;Li9/c;Lr0/q;I)V

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v3, p2, Lad/a0;->b:Lua/nav/routing/Route;

    iget-object v4, p2, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    iget v5, p2, Lad/a0;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_c

    if-ne v4, v2, :cond_b

    goto :goto_4

    :cond_b
    move-object v5, p2

    goto :goto_5

    :cond_c
    :goto_4
    new-instance v4, Lkd/u;

    const/4 v9, 0x0

    move-object v5, p2

    move-object v8, v0

    invoke-direct/range {v4 .. v9}, Lkd/u;-><init>(Lad/a0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    invoke-virtual {p3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_5
    check-cast v4, Li9/e;

    invoke-static {v1, v4, p3}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    goto :goto_6

    :cond_d
    move-object v5, p2

    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_6
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_e

    move-object v10, v5

    new-instance v5, Lb0/a3;

    const/4 v7, 0x5

    move-object v8, p0

    move-object v9, p1

    move v6, p4

    invoke-direct/range {v5 .. v10}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, p2, Lr0/n1;->d:Li9/e;

    :cond_e
    return-void
.end method

.method public final c(Lorg/maplibre/android/maps/MapView;Lr0/q;I)V
    .locals 95

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const v3, -0x19ba48e6

    invoke-virtual {v2, v3}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p3, v3

    invoke-virtual {v2, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int v25, v3, v6

    and-int/lit8 v3, v25, 0x13

    const/16 v6, 0x12

    const/4 v9, 0x0

    if-eq v3, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v9

    :goto_2
    and-int/lit8 v10, v25, 0x1

    invoke-virtual {v2, v10, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_2b

    new-instance v26, Lad/a0;

    const/16 v49, 0x0

    const/16 v50, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    invoke-direct/range {v26 .. v50}, Lad/a0;-><init>(Lua/nav/routing/Route;Lua/nav/routing/Step;DLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLua/nav/routing/GeoPoint;IDZLjava/lang/String;I)V

    move-object/from16 v3, v26

    iget-object v10, v0, Lkd/x;->b:Lx9/u;

    invoke-static {v10, v3, v2, v9}, Lr0/r;->n(Lx9/g;Ljava/lang/Object;Lr0/q;I)Lr0/u0;

    move-result-object v26

    iget-object v3, v0, Lkd/x;->c:Lx9/g;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v11, 0x30

    invoke-static {v3, v10, v2, v11}, Lr0/r;->n(Lx9/g;Ljava/lang/Object;Lr0/q;I)Lr0/u0;

    move-result-object v27

    iget-object v3, v0, Lkd/x;->d:Lx9/g;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v10, v2, v11}, Lr0/r;->n(Lx9/g;Ljava/lang/Object;Lr0/q;I)Lr0/u0;

    move-result-object v3

    invoke-interface/range {v26 .. v26}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lad/a0;

    iget-object v10, v10, Lad/a0;->b:Lua/nav/routing/Route;

    if-eqz v10, :cond_3

    invoke-interface/range {v26 .. v26}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lad/a0;

    iget-object v10, v10, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    move v10, v9

    :goto_3
    iget-object v12, v0, Lkd/x;->n:Lr0/e1;

    invoke-virtual {v12}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Lf1/o;->a:Lf1/o;

    invoke-static {v13, v12}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v12

    const-wide v14, 0xe6101820L

    invoke-static {v14, v15}, Lm1/v;->d(J)J

    move-result-wide v14

    move-object/from16 v16, v3

    const/16 v3, 0xc

    int-to-float v5, v3

    invoke-static {v5}, La0/e;->a(F)La0/d;

    move-result-object v5

    invoke-static {v12, v14, v15, v5}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v5

    invoke-virtual {v2, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lr0/m;->a:Lr0/e;

    if-nez v12, :cond_4

    if-ne v14, v15, :cond_5

    :cond_4
    new-instance v14, Lkd/w;

    const/4 v12, 0x0

    invoke-direct {v14, v0, v12}, Lkd/w;-><init>(Lkd/x;I)V

    invoke-virtual {v2, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    sget-object v12, Lt8/z;->a:Lt8/z;

    invoke-static {v5, v12, v14}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v5

    sget-object v14, Lf1/c;->l:Lf1/j;

    invoke-static {v14, v9}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v6, v2, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v5, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v21, Le2/h;->b:Le2/g;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v21, v10

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v8, v2, Lr0/q;->S:Z

    if-eqz v8, :cond_6

    invoke-virtual {v2, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_4
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v7, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Le2/g;->g:Le2/e;

    invoke-static {v2, v6, v7}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v6, Le2/g;->h:Le2/d;

    invoke-static {v2, v6}, Lr0/r;->A(Lr0/q;Li9/c;)V

    move-object/from16 v23, v12

    sget-object v12, Le2/g;->d:Le2/e;

    invoke-static {v12, v5, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v5, 0x6

    move-object/from16 v24, v14

    int-to-float v14, v5

    invoke-static {v13, v14}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v9

    int-to-float v4, v4

    invoke-static {v4}, Lu/h;->g(F)Lu/f;

    move-result-object v11

    move/from16 v32, v4

    sget-object v4, Lf1/c;->x:Lf1/h;

    invoke-static {v11, v4, v2, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v4

    move-object v11, v6

    iget-wide v5, v2, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v9, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v9

    invoke-virtual {v2}, Lr0/q;->e0()V

    move-object/from16 v31, v11

    iget-boolean v11, v2, Lr0/q;->S:Z

    if-eqz v11, :cond_7

    invoke-virtual {v2, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_5
    invoke-static {v8, v4, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v6, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v11, v31

    invoke-static {v5, v2, v7, v2, v11}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v12, v9, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v13, v4}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v6, Lf1/c;->v:Lf1/i;

    sget-object v9, Lu/h;->a:Lu/n;

    const/16 v4, 0x30

    invoke-static {v9, v6, v2, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v4

    move v9, v14

    move-object v6, v15

    iget-wide v14, v2, Lr0/q;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v15

    invoke-static {v5, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    invoke-virtual {v2}, Lr0/q;->e0()V

    move-object/from16 v29, v6

    iget-boolean v6, v2, Lr0/q;->S:Z

    if-eqz v6, :cond_8

    invoke-virtual {v2, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_6
    invoke-static {v8, v4, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v15, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v14, v2, v7, v2, v11}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v12, v5, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v4, 0xa

    int-to-float v5, v4

    invoke-static {v13, v5}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v6

    invoke-static {v6, v5}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v6

    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_9

    const-wide v14, 0xff42a5f5L

    :goto_7
    invoke-static {v14, v15}, Lm1/v;->d(J)J

    move-result-wide v14

    goto :goto_8

    :cond_9
    const-wide v14, 0xff9e9e9eL

    goto :goto_7

    :goto_8
    const/4 v4, 0x5

    int-to-float v4, v4

    move-object/from16 v34, v3

    invoke-static {v4}, La0/e;->a(F)La0/d;

    move-result-object v3

    invoke-static {v6, v14, v15, v3}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v2, v6}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    invoke-interface/range {v26 .. v26}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/a0;

    iget-wide v14, v3, Lad/a0;->w:D

    double-to-int v3, v14

    const-string v14, "  \u00b1"

    const-string v15, " \u043c  "

    invoke-static {v3, v14, v15}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v15, v4

    move v14, v5

    sget-wide v4, Lm1/p;->c:J

    const/16 v28, 0xb

    move/from16 v36, v6

    move-object/from16 v35, v7

    invoke-static/range {v28 .. v28}, La/a;->k(I)J

    move-result-wide v6

    move-object/from16 v37, v8

    sget-object v8, Lt2/k;->o:Lt2/k;

    move-object/from16 v38, v23

    const/16 v23, 0x6180

    move-object/from16 v39, v24

    const v24, 0x3afaa

    move-object v2, v3

    const/4 v3, 0x0

    move/from16 v40, v9

    const/4 v9, 0x0

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    const-wide/16 v10, 0x0

    move-object/from16 v43, v12

    const/4 v12, 0x0

    move-object/from16 v45, v13

    move/from16 v44, v14

    const-wide/16 v13, 0x0

    move/from16 v46, v15

    const/4 v15, 0x2

    move-object/from16 v47, v16

    const/16 v16, 0x0

    const/16 v48, 0x2

    const/16 v17, 0x1

    const/16 v49, 0xc

    const/16 v18, 0x0

    const/16 v50, 0x20

    const/16 v19, 0x0

    const/16 v51, 0x12

    const/16 v20, 0x0

    const/16 v52, 0x1

    const v22, 0x186180

    move/from16 v53, v21

    move-object/from16 v62, v29

    move/from16 v61, v32

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v64, v38

    move-object/from16 v54, v39

    move-object/from16 v55, v41

    move-object/from16 v59, v42

    move-object/from16 v60, v43

    move-object/from16 v63, v45

    move/from16 v1, v52

    const/16 v36, 0x6

    move-object/from16 v21, p2

    invoke-static/range {v2 .. v24}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-wide/from16 v29, v4

    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\u0422\u0410\u041a"

    goto :goto_9

    :cond_a
    const-string v2, "\u041d\u0406"

    :goto_9
    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    const-wide v3, 0xff66bb6aL

    :goto_a
    invoke-static {v3, v4}, Lm1/v;->d(J)J

    move-result-wide v3

    move-wide v4, v3

    goto :goto_b

    :cond_b
    const-wide v3, 0xffbdbdbdL

    goto :goto_a

    :goto_b
    invoke-static/range {v28 .. v28}, La/a;->k(I)J

    move-result-wide v6

    sget-object v8, Lt2/k;->q:Lt2/k;

    const/16 v23, 0x6000

    const v24, 0x3bfaa

    const/4 v3, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v22, 0x186000

    move-object/from16 v21, p2

    invoke-static/range {v2 .. v24}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Lr0/q;->q(Z)V

    move-object/from16 v4, v63

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v5

    iget-object v3, v0, Lkd/x;->o:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5, v3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v3

    const/16 v5, 0x8

    int-to-float v5, v5

    invoke-static {v5}, La0/e;->a(F)La0/d;

    move-result-object v5

    invoke-static {v3, v5}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v3

    move-object/from16 v5, v54

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v7

    iget-wide v9, v2, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v3, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v11, v2, Lr0/q;->S:Z

    if-eqz v11, :cond_c

    move-object/from16 v11, v55

    invoke-virtual {v2, v11}, Lr0/q;->l(Li9/a;)V

    :goto_c
    move-object/from16 v12, v56

    goto :goto_d

    :cond_c
    move-object/from16 v11, v55

    invoke-virtual {v2}, Lr0/q;->o0()V

    goto :goto_c

    :goto_d
    invoke-static {v12, v7, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v7, v57

    invoke-static {v7, v10, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v10, v58

    move-object/from16 v13, v59

    invoke-static {v9, v2, v10, v2, v13}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v9, v60

    invoke-static {v9, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface/range {v26 .. v26}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/a0;

    and-int/lit8 v14, v25, 0xe

    shl-int/lit8 v15, v25, 0x3

    and-int/lit16 v15, v15, 0x380

    or-int/2addr v14, v15

    move-object/from16 v43, v9

    move-object/from16 v9, p1

    invoke-virtual {v0, v9, v3, v2, v14}, Lkd/x;->b(Lorg/maplibre/android/maps/MapView;Lad/a0;Lr0/q;I)V

    sget-object v3, Lu/b1;->c:Lu/v;

    invoke-virtual {v2, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v14, :cond_d

    move-object/from16 v14, v62

    if-ne v1, v14, :cond_e

    goto :goto_e

    :cond_d
    move-object/from16 v14, v62

    :goto_e
    new-instance v1, Lkd/s;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lkd/s;-><init>(Lkd/x;I)V

    invoke-virtual {v2, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    check-cast v1, Li9/a;

    const/4 v6, 0x0

    const/16 v9, 0xf

    move-object/from16 v45, v4

    const/4 v4, 0x0

    invoke-static {v3, v4, v6, v1, v9}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v1

    invoke-static {v1, v2, v4}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    const-string v1, " \u043c"

    const-string v4, "%.1f \u043a\u043c"

    const-wide v37, 0x408f400000000000L    # 1000.0

    sget-object v9, Lu/n;->b:Lu/n;

    move-object/from16 v58, v10

    move/from16 v10, v53

    if-eqz v10, :cond_15

    const v6, 0x224966dc

    invoke-virtual {v2, v6}, Lr0/q;->b0(I)V

    invoke-interface/range {v26 .. v26}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lad/a0;

    iget-object v3, v6, Lad/a0;->f:Lua/nav/routing/Step;

    if-nez v3, :cond_f

    const-string v3, "\u2191 \u043f\u0440\u044f\u043c\u043e"

    move-object v2, v3

    move-object/from16 v34, v7

    move-object/from16 v19, v8

    const/16 v3, 0x3e8

    const/16 v6, 0xa

    goto/16 :goto_12

    :cond_f
    iget-object v3, v3, Lua/nav/routing/Step;->b:Ljava/lang/String;

    if-nez v3, :cond_10

    const-string v3, ""

    :cond_10
    const-string v2, "uturn"

    move-object/from16 v34, v7

    const/4 v7, 0x0

    invoke-static {v3, v2, v7}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "\u21b6"

    :goto_f
    move-object v3, v8

    goto :goto_10

    :cond_11
    const-string v2, "left"

    invoke-static {v3, v2, v7}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "\u21b0"

    goto :goto_f

    :cond_12
    const-string v2, "right"

    invoke-static {v3, v2, v7}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "\u21b1"

    goto :goto_f

    :cond_13
    const-string v2, "\u2191"

    goto :goto_f

    :goto_10
    iget-wide v7, v6, Lad/a0;->h:D

    cmpl-double v6, v7, v37

    if-ltz v6, :cond_14

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v19, v3

    move-wide/from16 v20, v7

    const/16 v3, 0x3e8

    int-to-double v7, v3

    div-double v7, v20, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    const/16 v6, 0xa

    goto :goto_11

    :cond_14
    move-object/from16 v19, v3

    move-wide/from16 v20, v7

    const/16 v3, 0x3e8

    const/16 v6, 0xa

    int-to-double v7, v6

    div-double v7, v20, v7

    double-to-int v7, v7

    mul-int/2addr v7, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_11
    const-string v8, " "

    invoke-static {v2, v8, v7}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_12
    invoke-static/range {v49 .. v49}, La/a;->k(I)J

    move-result-wide v7

    invoke-virtual {v9, v5}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v5

    move-object/from16 v18, v9

    move/from16 v9, v61

    invoke-static {v5, v9}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v5

    const-wide v20, 0xcc101820L

    move-object/from16 v22, v4

    invoke-static/range {v20 .. v21}, Lm1/v;->d(J)J

    move-result-wide v3

    invoke-static/range {v40 .. v40}, La0/e;->a(F)La0/d;

    move-result-object v6

    invoke-static {v5, v3, v4, v6}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v3

    const/4 v4, 0x2

    int-to-float v5, v4

    move/from16 v6, v40

    invoke-static {v3, v6, v5}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v3

    const/16 v5, 0x3e8

    const/16 v23, 0x6180

    const v24, 0x3afa8

    move/from16 v32, v9

    const/4 v9, 0x0

    move/from16 v21, v10

    move-object/from16 v55, v11

    const-wide/16 v10, 0x0

    move-object/from16 v56, v12

    const/4 v12, 0x0

    move-object/from16 v31, v13

    move-object/from16 v62, v14

    const-wide/16 v13, 0x0

    move v6, v15

    const/4 v15, 0x2

    const/16 v20, 0xf

    const/16 v16, 0x0

    const/16 v25, 0x0

    const/16 v17, 0x1

    move-object/from16 v27, v18

    const/16 v18, 0x0

    move/from16 v39, v6

    move-wide v6, v7

    move-object/from16 v8, v19

    const/16 v19, 0x0

    move/from16 v40, v20

    const/16 v20, 0x0

    move-object/from16 v41, v22

    const v22, 0x186180

    move-object/from16 v25, v1

    move/from16 v53, v21

    move-object/from16 v0, v27

    move-wide/from16 v4, v29

    move-object/from16 v67, v31

    move-object/from16 v65, v34

    move-object/from16 v69, v41

    move-object/from16 v68, v43

    move-object/from16 v71, v45

    move-object/from16 v41, v55

    move-object/from16 v66, v58

    move-object/from16 v70, v62

    const/4 v1, 0x0

    move-object/from16 v21, p2

    invoke-static/range {v2 .. v24}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-wide/from16 v42, v4

    move-object/from16 v27, v8

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Lr0/q;->q(Z)V

    goto :goto_13

    :cond_15
    move-object/from16 v25, v1

    move-object/from16 v69, v4

    move-object/from16 v65, v7

    move-object/from16 v27, v8

    move-object v0, v9

    move/from16 v53, v10

    move-object/from16 v41, v11

    move-object/from16 v56, v12

    move-object/from16 v67, v13

    move-object/from16 v70, v14

    move/from16 v39, v15

    move-object/from16 v68, v43

    move-object/from16 v71, v45

    move-object/from16 v66, v58

    move/from16 v32, v61

    const/4 v1, 0x0

    move-wide/from16 v42, v29

    const v3, 0x224ec4ca

    invoke-virtual {v2, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v2, v1}, Lr0/q;->q(Z)V

    :goto_13
    sget-object v3, Lf1/c;->t:Lf1/j;

    invoke-virtual {v0, v3}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v29

    const/16 v31, 0x0

    const/16 v34, 0x3

    const/16 v30, 0x0

    move/from16 v33, v32

    invoke-static/range {v29 .. v34}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v4

    if-eqz v53, :cond_16

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_16
    const v5, 0x3ecccccd    # 0.4f

    :goto_14
    invoke-static {v4, v5}, Lj1/g;->a(Lf1/r;F)Lf1/r;

    move-result-object v4

    invoke-static/range {v46 .. v46}, Lu/h;->g(F)Lu/f;

    move-result-object v5

    sget-object v6, Lf1/c;->z:Lf1/h;

    const/16 v7, 0x36

    invoke-static {v5, v6, v2, v7}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v5

    iget-wide v6, v2, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v4, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v8, v2, Lr0/q;->S:Z

    if-eqz v8, :cond_17

    move-object/from16 v8, v41

    invoke-virtual {v2, v8}, Lr0/q;->l(Li9/a;)V

    :goto_15
    move-object/from16 v9, v56

    goto :goto_16

    :cond_17
    move-object/from16 v8, v41

    invoke-virtual {v2}, Lr0/q;->o0()V

    goto :goto_15

    :goto_16
    invoke-static {v9, v5, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v5, v65

    invoke-static {v5, v7, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v7, v66

    move-object/from16 v10, v67

    invoke-static {v6, v2, v7, v2, v10}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v6, v68

    invoke-static {v6, v4, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move/from16 v4, v53

    invoke-virtual {v2, v4}, Lr0/q;->h(Z)Z

    move-result v11

    move-object/from16 v12, p0

    invoke-virtual {v2, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_18

    move-object/from16 v11, v70

    if-ne v13, v11, :cond_19

    goto :goto_17

    :cond_18
    move-object/from16 v11, v70

    :goto_17
    new-instance v13, Lkd/t;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v12, v14}, Lkd/t;-><init>(ZLkd/x;I)V

    invoke-virtual {v2, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_19
    check-cast v13, Li9/a;

    or-int/lit8 v14, v39, 0x6

    const-string v15, "\u2191100"

    invoke-virtual {v12, v15, v13, v2, v14}, Lkd/x;->a(Ljava/lang/String;Li9/a;Lr0/q;I)V

    invoke-virtual {v2, v4}, Lr0/q;->h(Z)Z

    move-result v13

    invoke-virtual {v2, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_1a

    if-ne v15, v11, :cond_1b

    :cond_1a
    new-instance v15, Lkd/t;

    const/4 v13, 0x1

    invoke-direct {v15, v4, v12, v13}, Lkd/t;-><init>(ZLkd/x;I)V

    invoke-virtual {v2, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1b
    check-cast v15, Li9/a;

    const-string v13, "\u2193100"

    invoke-virtual {v12, v13, v15, v2, v14}, Lkd/x;->a(Ljava/lang/String;Li9/a;Lr0/q;I)V

    invoke-virtual {v2, v4}, Lr0/q;->h(Z)Z

    move-result v13

    invoke-virtual {v2, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_1c

    if-ne v15, v11, :cond_1d

    :cond_1c
    new-instance v15, Lkd/t;

    const/4 v13, 0x2

    invoke-direct {v15, v4, v12, v13}, Lkd/t;-><init>(ZLkd/x;I)V

    invoke-virtual {v2, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1d
    check-cast v15, Li9/a;

    const-string v13, "\u21bb"

    invoke-virtual {v12, v13, v15, v2, v14}, Lkd/x;->a(Ljava/lang/String;Li9/a;Lr0/q;I)V

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lr0/q;->q(Z)V

    invoke-virtual {v2, v13}, Lr0/q;->q(Z)V

    if-eqz v4, :cond_1f

    invoke-interface/range {v26 .. v26}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/a0;

    iget-wide v13, v4, Lad/a0;->j:D

    cmpl-double v4, v13, v37

    if-ltz v4, :cond_1e

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v15, 0x3e8

    int-to-double v1, v15

    div-double/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v13, 0x1

    invoke-static {v1, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v69

    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    goto :goto_18

    :cond_1e
    move-object v4, v3

    const/16 v1, 0xa

    int-to-double v2, v1

    div-double/2addr v13, v2

    double-to-int v2, v13

    mul-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-interface/range {v26 .. v26}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget v2, v2, Lad/a0;->l:F

    float-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "\u0437\u0430\u043b\u0438\u0448\u0438\u043b\u043e\u0441\u044c "

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u043a\u043c/\u0433\u043e\u0434"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_19
    move-object v2, v1

    goto :goto_1a

    :cond_1f
    move-object v4, v3

    const-string v1, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043d\u0435\u043c\u0430\u0454"

    goto :goto_19

    :goto_1a
    const-wide v13, 0xffcfd8dcL

    invoke-static {v13, v14}, Lm1/v;->d(J)J

    move-result-wide v13

    move-object/from16 v60, v6

    move-object/from16 v58, v7

    invoke-static/range {v28 .. v28}, La/a;->k(I)J

    move-result-wide v6

    const/16 v23, 0x6180

    const v24, 0x3afea

    const/4 v3, 0x0

    move-object/from16 v55, v8

    const/4 v8, 0x0

    move-object/from16 v56, v9

    const/4 v9, 0x0

    move-object/from16 v31, v10

    move-object/from16 v62, v11

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v1, v4

    move-object/from16 v34, v5

    move-wide v4, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x6180

    move-object/from16 v21, p2

    move-object/from16 v25, v0

    move-object/from16 v77, v1

    move-object/from16 v75, v31

    move-object/from16 v73, v34

    move-object/from16 v41, v55

    move-object/from16 v72, v56

    move-object/from16 v74, v58

    move-object/from16 v76, v60

    move-object/from16 v0, v62

    move-object/from16 v1, p0

    invoke-static/range {v2 .. v24}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v21

    move-object/from16 v4, v71

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    const/16 v4, 0x1a

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v3

    const/16 v4, 0x20

    int-to-float v4, v4

    invoke-static {v3, v4}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-interface/range {v47 .. v47}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_20

    const-wide v5, 0xff2e7d32L

    :goto_1b
    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    goto :goto_1c

    :cond_20
    const-wide v5, 0xff546e7aL

    goto :goto_1b

    :goto_1c
    invoke-static/range {v44 .. v44}, La0/e;->a(F)La0/d;

    move-result-object v7

    invoke-static {v3, v5, v6, v7}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v3

    invoke-virtual {v2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v6, v47

    invoke-virtual {v2, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_21

    if-ne v7, v0, :cond_22

    :cond_21
    new-instance v7, Lb0/n;

    const/16 v5, 0x9

    invoke-direct {v7, v5, v1, v6}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_22
    check-cast v7, Li9/a;

    const/16 v5, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v9, v8, v7, v5}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v3

    sget-object v7, Lf1/c;->p:Lf1/j;

    invoke-static {v7, v9}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v10

    iget-wide v11, v2, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v3, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v12, v2, Lr0/q;->S:Z

    if-eqz v12, :cond_23

    move-object/from16 v12, v41

    invoke-virtual {v2, v12}, Lr0/q;->l(Li9/a;)V

    :goto_1d
    move-object/from16 v13, v72

    goto :goto_1e

    :cond_23
    move-object/from16 v12, v41

    invoke-virtual {v2}, Lr0/q;->o0()V

    goto :goto_1d

    :goto_1e
    invoke-static {v13, v10, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v10, v73

    invoke-static {v10, v11, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v11, v74

    move-object/from16 v14, v75

    invoke-static {v9, v2, v11, v2, v14}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v9, v76

    invoke-static {v9, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "\u041f\u0435\u0440\u0435\u0434\u0430\u0447\u0430 \u0423\u0412\u0406\u041c\u041a"

    goto :goto_1f

    :cond_24
    const-string v3, "\u041f\u0435\u0440\u0435\u0434\u0430\u0447\u0430 \u0412\u0418\u041c\u041a"

    :goto_1f
    invoke-static/range {v28 .. v28}, La/a;->k(I)J

    move-result-wide v15

    const/16 v23, 0x6000

    const v24, 0x3bfaa

    move-object v2, v3

    const/4 v3, 0x0

    move-object/from16 v60, v9

    const/4 v9, 0x0

    move-object/from16 v34, v10

    move-object/from16 v58, v11

    const-wide/16 v10, 0x0

    move-object/from16 v55, v12

    const/4 v12, 0x0

    move-object/from16 v56, v13

    move-object/from16 v31, v14

    const-wide/16 v13, 0x0

    move-wide/from16 v93, v15

    move-object/from16 v16, v7

    move-wide/from16 v6, v93

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x1

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v21, v20

    const/16 v20, 0x0

    const v22, 0x186180

    move-object/from16 v29, v0

    move v0, v4

    move-object/from16 v84, v21

    move-object/from16 v8, v27

    move-object/from16 v82, v31

    move-object/from16 v80, v34

    move-wide/from16 v4, v42

    move-object/from16 v78, v55

    move-object/from16 v79, v56

    move-object/from16 v81, v58

    move-object/from16 v83, v60

    move-object/from16 v21, p2

    invoke-static/range {v2 .. v24}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v21

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lr0/q;->q(Z)V

    invoke-virtual {v2, v13}, Lr0/q;->q(Z)V

    sget-object v3, Lf1/c;->r:Lf1/j;

    move-object/from16 v6, v25

    invoke-virtual {v6, v3}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v3

    invoke-static {v3, v0}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-virtual {v2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_25

    move-object/from16 v7, v29

    if-ne v8, v7, :cond_26

    goto :goto_20

    :cond_25
    move-object/from16 v7, v29

    :goto_20
    new-instance v8, Lkd/s;

    const/4 v9, 0x1

    invoke-direct {v8, v1, v9}, Lkd/s;-><init>(Lkd/x;I)V

    invoke-virtual {v2, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_26
    check-cast v8, Li9/a;

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v11, v10, v8, v9}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v3

    move-object/from16 v8, v84

    invoke-static {v8, v11}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v9

    iget-wide v10, v2, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v3, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v12, v2, Lr0/q;->S:Z

    if-eqz v12, :cond_27

    move-object/from16 v12, v78

    invoke-virtual {v2, v12}, Lr0/q;->l(Li9/a;)V

    :goto_21
    move-object/from16 v13, v79

    goto :goto_22

    :cond_27
    move-object/from16 v12, v78

    invoke-virtual {v2}, Lr0/q;->o0()V

    goto :goto_21

    :goto_22
    invoke-static {v13, v9, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v9, v80

    invoke-static {v9, v11, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v11, v81

    move-object/from16 v14, v82

    invoke-static {v10, v2, v11, v2, v14}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v10, v83

    invoke-static {v10, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v51 .. v51}, La/a;->k(I)J

    move-result-wide v15

    const/16 v23, 0x0

    const v24, 0x3ffea

    const-string v2, "\u2715"

    const/4 v3, 0x0

    move-object/from16 v84, v8

    const/4 v8, 0x0

    move-object/from16 v34, v9

    const/4 v9, 0x0

    move-object/from16 v60, v10

    move-object/from16 v58, v11

    const-wide/16 v10, 0x0

    move-object/from16 v55, v12

    const/4 v12, 0x0

    move-object/from16 v56, v13

    move-object/from16 v31, v14

    const-wide/16 v13, 0x0

    move-object/from16 v18, v6

    move-object/from16 v62, v7

    move-wide v6, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v25, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x6186

    move-object/from16 v21, p2

    move-object/from16 v1, v25

    move-object/from16 v89, v31

    move-object/from16 v87, v34

    move-object/from16 v85, v55

    move-object/from16 v86, v56

    move-object/from16 v88, v58

    move-object/from16 v90, v60

    move-object/from16 v92, v62

    move-object/from16 v91, v84

    invoke-static/range {v2 .. v24}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v21

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lr0/q;->q(Z)V

    move-object/from16 v4, v77

    invoke-virtual {v1, v4}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v1

    invoke-static {v1, v0}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_28

    move-object/from16 v14, v92

    if-ne v4, v14, :cond_29

    :cond_28
    new-instance v4, Lkd/w;

    const/4 v3, 0x1

    invoke-direct {v4, v1, v3}, Lkd/w;-><init>(Lkd/x;I)V

    invoke-virtual {v2, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_29
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    move-object/from16 v3, v64

    invoke-static {v0, v3, v4}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v0

    move-object/from16 v8, v91

    const/4 v6, 0x0

    invoke-static {v8, v6}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v4, v2, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v0, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v6, v2, Lr0/q;->S:Z

    if-eqz v6, :cond_2a

    move-object/from16 v12, v85

    invoke-virtual {v2, v12}, Lr0/q;->l(Li9/a;)V

    :goto_23
    move-object/from16 v13, v86

    goto :goto_24

    :cond_2a
    invoke-virtual {v2}, Lr0/q;->o0()V

    goto :goto_23

    :goto_24
    invoke-static {v13, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v7, v87

    invoke-static {v7, v5, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v11, v88

    move-object/from16 v14, v89

    invoke-static {v4, v2, v11, v2, v14}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v9, v90

    invoke-static {v9, v0, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-wide v3, 0xffb0bec5L

    invoke-static {v3, v4}, Lm1/v;->d(J)J

    move-result-wide v4

    const/16 v0, 0x16

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v6

    const/16 v23, 0x0

    const v24, 0x3ffea

    const-string v2, "\u25e2"

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x6186

    move-object/from16 v21, p2

    invoke-static/range {v2 .. v24}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v21

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lr0/q;->q(Z)V

    invoke-virtual {v2, v13}, Lr0/q;->q(Z)V

    goto :goto_25

    :cond_2b
    move-object v1, v0

    invoke-virtual {v2}, Lr0/q;->W()V

    :goto_25
    invoke-virtual {v2}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v2, Lkd/o;

    move-object/from16 v9, p1

    move/from16 v3, p3

    invoke-direct {v2, v1, v9, v3}, Lkd/o;-><init>(Lkd/x;Lorg/maplibre/android/maps/MapView;I)V

    iput-object v2, v0, Lr0/n1;->d:Li9/e;

    :cond_2c
    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lkd/x;->a:Landroid/app/Application;

    invoke-static {v0}, Lorg/maplibre/android/MapLibre;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/MapLibre;

    new-instance v1, Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->createFromAttributes(Landroid/content/Context;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/maplibre/android/maps/MapView;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    iput-object v1, p0, Lkd/x;->q:Lorg/maplibre/android/maps/MapView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/maplibre/android/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView;->onStart()V

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView;->onResume()V

    new-instance v2, Lf2/k1;

    invoke-direct {v2, v0}, Lf2/k1;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lkd/x;->j:Lkd/n;

    invoke-static {v2, v0}, Landroidx/lifecycle/t0;->i(Landroid/view/View;Landroidx/lifecycle/v;)V

    invoke-static {v2, v0}, Ll9/a;->B(Landroid/view/View;Ln4/g;)V

    new-instance v4, Lkd/o;

    invoke-direct {v4, p0, v1}, Lkd/o;-><init>(Lkd/x;Lorg/maplibre/android/maps/MapView;)V

    new-instance v1, Lz0/d;

    const v5, -0x48588bb0

    invoke-direct {v1, v5, v3, v4}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-virtual {v2, v1}, Lf2/k1;->setContent(Li9/e;)V

    iput-object v2, p0, Lkd/x;->p:Lf2/k1;

    iget-object v1, p0, Lkd/x;->i:Landroid/view/WindowManager;

    iget-object p0, p0, Lkd/x;->m:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, p0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v0, Lkd/n;->l:Landroidx/lifecycle/x;

    sget-object v0, Landroidx/lifecycle/p;->p:Landroidx/lifecycle/p;

    const-string v1, "setCurrentState"

    invoke-virtual {p0, v1}, Landroidx/lifecycle/x;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/x;->f(Landroidx/lifecycle/p;)V

    return-void
.end method
