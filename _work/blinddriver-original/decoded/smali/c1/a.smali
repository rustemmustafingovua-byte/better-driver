.class public final synthetic Lc1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p7, p0, Lc1/a;->l:I

    iput-object p1, p0, Lc1/a;->m:Ljava/lang/Object;

    iput-object p2, p0, Lc1/a;->n:Ljava/lang/Object;

    iput-object p3, p0, Lc1/a;->o:Ljava/lang/Object;

    iput-object p4, p0, Lc1/a;->p:Ljava/lang/Object;

    iput-object p5, p0, Lc1/a;->q:Ljava/lang/Object;

    iput-object p6, p0, Lc1/a;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lc1/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lc1/a;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    iget-object v1, p0, Lc1/a;->n:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, p0, Lc1/a;->o:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lr0/u0;

    iget-object v2, p0, Lc1/a;->p:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/content/Context;

    iget-object v2, p0, Lc1/a;->q:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lr0/u0;

    iget-object p0, p0, Lc1/a;->r:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lr0/u0;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance v3, Landroidx/lifecycle/j0;

    const/4 v8, 0x0

    const/16 v9, 0xd

    invoke-direct/range {v3 .. v9}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v3, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lc1/a;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/a;

    iget-object v1, p0, Lc1/a;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    iget-object v2, p0, Lc1/a;->o:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lr0/u0;

    iget-object v2, p0, Lc1/a;->p:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lr0/a1;

    iget-object v2, p0, Lc1/a;->q:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/content/Context;

    iget-object p0, p0, Lc1/a;->r:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lr0/u0;

    invoke-static {v6}, Lod/m;->q(Lr0/u0;)Z

    move-result p0

    iget-object v0, v0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "log_trim"

    invoke-static {v0, v2, p0}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    invoke-virtual {v7}, Lr0/a1;->g()F

    move-result p0

    float-to-int p0, p0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v2, 0x64

    const/16 v3, 0x3e8

    invoke-static {p0, v2, v3}, Lg6/c1;->f(III)I

    move-result p0

    const-string v2, "log_trim_m"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v3, Landroidx/lifecycle/j0;

    const/4 v8, 0x0

    const/16 v9, 0xc

    invoke-direct/range {v3 .. v9}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    const/4 v0, 0x0

    invoke-static {v1, v0, v0, v3, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lc1/a;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    iget-object v1, p0, Lc1/a;->n:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lr0/u0;

    iget-object v1, p0, Lc1/a;->o:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lua/nav/support/a;

    iget-object v1, p0, Lc1/a;->p:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Li9/a;

    iget-object v1, p0, Lc1/a;->q:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lr0/u0;

    iget-object p0, p0, Lc1/a;->r:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lr0/u0;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance v2, Landroidx/lifecycle/l0;

    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-direct/range {v2 .. v9}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lc1/a;->m:Ljava/lang/Object;

    check-cast v0, Lc1/b;

    iget-object v1, p0, Lc1/a;->n:Ljava/lang/Object;

    check-cast v1, Lc1/j;

    iget-object v2, p0, Lc1/a;->o:Ljava/lang/Object;

    check-cast v2, Lc1/f;

    iget-object v3, p0, Lc1/a;->p:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lc1/a;->r:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iget-object v5, v0, Lc1/b;->m:Lc1/f;

    const/4 v6, 0x1

    if-eq v5, v2, :cond_0

    iput-object v2, v0, Lc1/b;->m:Lc1/f;

    move v2, v6

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v5, v0, Lc1/b;->n:Ljava/lang/String;

    invoke-static {v5, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iput-object v3, v0, Lc1/b;->n:Ljava/lang/String;

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    iput-object v1, v0, Lc1/b;->l:Lc1/j;

    iget-object p0, p0, Lc1/a;->q:Ljava/lang/Object;

    iput-object p0, v0, Lc1/b;->o:Ljava/lang/Object;

    iput-object v4, v0, Lc1/b;->p:[Ljava/lang/Object;

    iget-object p0, v0, Lc1/b;->q:Lc1/e;

    if-eqz p0, :cond_2

    if-eqz v6, :cond_2

    check-cast p0, Lg5/m;

    invoke-virtual {p0}, Lg5/m;->x()V

    const/4 p0, 0x0

    iput-object p0, v0, Lc1/b;->q:Lc1/e;

    invoke-virtual {v0}, Lc1/b;->b()V

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
