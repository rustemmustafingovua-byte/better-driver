.class public final synthetic Lod/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/a;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lua/nav/a;Lr0/u0;I)V
    .locals 0

    iput p3, p0, Lod/i4;->l:I

    iput-object p1, p0, Lod/i4;->m:Lua/nav/a;

    iput-object p2, p0, Lod/i4;->n:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lod/i4;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lua/nav/Tuning;->U:Lua/nav/Tuning;

    iget-object v1, p0, Lod/i4;->m:Lua/nav/a;

    invoke-virtual {v1, v0}, Lua/nav/a;->l(Lua/nav/Tuning;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lua/nav/a;->i(Z)V

    iget-object v0, v1, Lua/nav/a;->n:Lx9/l0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v1, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alerts_quiet"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lod/i4;->n:Lr0/u0;

    invoke-interface {p0, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/i4;->m:Lua/nav/a;

    iget-object v0, v0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "road_filter_prompt_done"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lod/i4;->n:Lr0/u0;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
