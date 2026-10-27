.class public final synthetic Lm0/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lm0/d0;->l:I

    iput-object p3, p0, Lm0/d0;->n:Ljava/lang/Object;

    iput p1, p0, Lm0/d0;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lm0/d0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm0/d0;->n:Ljava/lang/Object;

    check-cast v0, Lua/nav/a;

    iget-object v1, v0, Lua/nav/a;->t:Lx9/l0;

    iget p0, p0, Lm0/d0;->m:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cache_area_km"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lm0/d0;->n:Ljava/lang/Object;

    check-cast v0, Li9/c;

    iget p0, p0, Lm0/d0;->m:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lm0/d0;->n:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    iget p0, p0, Lm0/d0;->m:I

    invoke-virtual {v0, p0}, Lua/nav/c;->M(I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lm0/d0;->n:Ljava/lang/Object;

    check-cast v0, Lm0/x;

    iget-object v0, v0, Lm0/x;->f:Lp2/j0;

    iget-object v0, v0, Lp2/j0;->b:Lp2/n;

    iget p0, p0, Lm0/d0;->m:I

    invoke-virtual {v0, p0}, Lp2/n;->d(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
