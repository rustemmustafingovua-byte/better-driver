.class public final synthetic Lod/a5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/a;


# direct methods
.method public synthetic constructor <init>(Lua/nav/a;I)V
    .locals 0

    iput p2, p0, Lod/a5;->l:I

    iput-object p1, p0, Lod/a5;->m:Lua/nav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lod/a5;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lod/a5;->m:Lua/nav/a;

    iget-object v0, p0, Lua/nav/a;->h:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v0, "truck_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lod/a5;->m:Lua/nav/a;

    iget-object v0, p0, Lua/nav/a;->h:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v0, "truck_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lod/a5;->m:Lua/nav/a;

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lod/a5;->m:Lua/nav/a;

    invoke-virtual {p0}, Lua/nav/a;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
