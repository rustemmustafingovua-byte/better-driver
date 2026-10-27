.class public final Lkd/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:Lx9/l0;

.field public final synthetic m:Lx9/l0;

.field public final synthetic n:Landroid/app/Application;

.field public final synthetic o:Lj9/y;

.field public final synthetic p:Lx9/u;

.field public final synthetic q:Lx9/g;

.field public final synthetic r:Lx9/g;

.field public final synthetic s:Lp2/y;

.field public final synthetic t:Lsc/i;

.field public final synthetic u:Lp2/y;


# direct methods
.method public constructor <init>(Lx9/l0;Lx9/l0;Landroid/app/Application;Lj9/y;Lu9/t;Lx9/u;Lx9/g;Lx9/g;Lp2/y;Lsc/i;Lp2/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd/z;->l:Lx9/l0;

    iput-object p2, p0, Lkd/z;->m:Lx9/l0;

    iput-object p3, p0, Lkd/z;->n:Landroid/app/Application;

    iput-object p4, p0, Lkd/z;->o:Lj9/y;

    iput-object p6, p0, Lkd/z;->p:Lx9/u;

    iput-object p7, p0, Lkd/z;->q:Lx9/g;

    iput-object p8, p0, Lkd/z;->r:Lx9/g;

    iput-object p9, p0, Lkd/z;->s:Lp2/y;

    iput-object p10, p0, Lkd/z;->t:Lsc/i;

    iput-object p11, p0, Lkd/z;->u:Lp2/y;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x3

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v7, v0, Lkd/z;->l:Lx9/l0;

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    iget-object v9, v0, Lkd/z;->m:Lx9/l0;

    if-eqz v3, :cond_1

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v8, v10}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-nez v5, :cond_1

    invoke-virtual {v7, v8, v10}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    iget-object v12, v0, Lkd/z;->n:Landroid/app/Application;

    if-nez v3, :cond_3

    if-nez v5, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-nez v6, :cond_3

    invoke-static {v12}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v4

    :cond_3
    iget-object v1, v0, Lkd/z;->o:Lj9/y;

    if-eqz v2, :cond_5

    iget-object v3, v1, Lj9/y;->m:Ljava/lang/Object;

    if-nez v3, :cond_5

    iget-object v13, v0, Lkd/z;->p:Lx9/u;

    iget-object v14, v0, Lkd/z;->q:Lx9/g;

    iget-object v15, v0, Lkd/z;->r:Lx9/g;

    iget-object v2, v0, Lkd/z;->s:Lp2/y;

    iget-object v3, v0, Lkd/z;->t:Lsc/i;

    iget-object v0, v0, Lkd/z;->u:Lp2/y;

    :try_start_0
    new-instance v11, Lkd/x;

    new-instance v4, Lad/t;

    const/16 v5, 0x13

    invoke-direct {v4, v5, v9}, Lad/t;-><init>(ILjava/lang/Object;)V

    move-object/from16 v18, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v11 .. v19}, Lkd/x;-><init>(Landroid/app/Application;Lx9/u;Lx9/g;Lx9/g;Lp2/y;Lsc/i;Lp2/y;Lad/t;)V

    invoke-virtual {v11}, Lkd/x;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v11

    :goto_0
    instance-of v0, v11, Lt8/l;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v8, v11

    :goto_1
    iput-object v8, v1, Lj9/y;->m:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_5
    if-nez v2, :cond_9

    iget-object v0, v1, Lj9/y;->m:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkd/x;

    if-eqz v2, :cond_8

    iget-object v0, v2, Lkd/x;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, v2, Lkd/x;->m:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v5, "x"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "y"

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, v2, Lkd/x;->n:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "w"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, v2, Lkd/x;->o:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "h"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v2, Lkd/x;->p:Lf2/k1;

    if-eqz v0, :cond_6

    :try_start_1
    iget-object v3, v2, Lkd/x;->i:Landroid/view/WindowManager;

    invoke-interface {v3, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_6
    :goto_2
    iput-object v8, v2, Lkd/x;->p:Lf2/k1;

    iget-object v0, v2, Lkd/x;->q:Lorg/maplibre/android/maps/MapView;

    if-eqz v0, :cond_7

    :try_start_2
    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapView;->onPause()V

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapView;->onStop()V

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapView;->onDestroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_7
    :goto_3
    iput-object v8, v2, Lkd/x;->q:Lorg/maplibre/android/maps/MapView;

    iget-object v0, v2, Lkd/x;->j:Lkd/n;

    iget-object v0, v0, Lkd/n;->l:Landroidx/lifecycle/x;

    sget-object v2, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    const-string v3, "setCurrentState"

    invoke-virtual {v0, v3}, Landroidx/lifecycle/x;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/x;->f(Landroidx/lifecycle/p;)V

    :cond_8
    iput-object v8, v1, Lj9/y;->m:Ljava/lang/Object;

    :cond_9
    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
