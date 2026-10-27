.class public final synthetic Lod/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/a;


# direct methods
.method public synthetic constructor <init>(Lua/nav/a;I)V
    .locals 0

    iput p2, p0, Lod/b6;->l:I

    iput-object p1, p0, Lod/b6;->m:Lua/nav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lod/b6;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lua/nav/Tuning;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lod/b6;->m:Lua/nav/a;

    invoke-virtual {p0, p1}, Lua/nav/a;->l(Lua/nav/Tuning;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lod/b6;->m:Lua/nav/a;

    iget-object v1, p0, Lua/nav/a;->n:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string p1, "alerts_quiet"

    :goto_1
    invoke-static {p0, p1, v0}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lod/b6;->m:Lua/nav/a;

    iget-object v1, p0, Lua/nav/a;->l:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string p1, "auto_record"

    goto :goto_1

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lod/b6;->m:Lua/nav/a;

    iget-object v1, p0, Lua/nav/a;->d:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string p1, "auto_reroute_blind"

    goto :goto_1

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lod/b6;->m:Lua/nav/a;

    invoke-virtual {p0, p1}, Lua/nav/a;->i(Z)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    iget-object p0, p0, Lod/b6;->m:Lua/nav/a;

    invoke-virtual {p0, p1, v0}, Lua/nav/a;->j(ZZ)V

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lod/b6;->m:Lua/nav/a;

    iget-object v1, p0, Lua/nav/a;->v:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string p1, "cache_area_wifi"

    goto :goto_1

    :pswitch_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lod/b6;->m:Lua/nav/a;

    iget-object v1, p0, Lua/nav/a;->r:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string p1, "cache_area"

    goto :goto_1

    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lod/b6;->m:Lua/nav/a;

    iget-object v1, p0, Lua/nav/a;->p:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string p1, "cache_route"

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
