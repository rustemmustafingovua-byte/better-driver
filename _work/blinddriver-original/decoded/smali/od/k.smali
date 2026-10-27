.class public final Lod/k;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly8/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lod/k;->l:I

    .line 1
    iput-object p1, p0, Lod/k;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLr0/r2;Ly8/c;I)V
    .locals 0

    .line 2
    iput p4, p0, Lod/k;->l:I

    iput-boolean p1, p0, Lod/k;->m:Z

    iput-object p2, p0, Lod/k;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lod/k;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lod/k;

    iget-object p0, p0, Lod/k;->n:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Lod/k;-><init>(Landroid/content/Context;Ly8/c;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lod/k;->m:Z

    return-object v0

    :pswitch_0
    new-instance p1, Lod/k;

    iget-boolean v0, p0, Lod/k;->m:Z

    iget-object p0, p0, Lod/k;->n:Ljava/lang/Object;

    check-cast p0, Lr0/r2;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, p2, v1}, Lod/k;-><init>(ZLr0/r2;Ly8/c;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lod/k;

    iget-boolean v0, p0, Lod/k;->m:Z

    iget-object p0, p0, Lod/k;->n:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, p2, v1}, Lod/k;-><init>(ZLr0/r2;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/k;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/k;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/k;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/k;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/k;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/k;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/k;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lod/k;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, p0, Lod/k;->n:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lod/k;->m:Z

    check-cast v2, Landroid/content/Context;

    const-class p1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v2, p1, p0}, Lh5/f;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    return-object v1

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lod/k;->m:Z

    if-eqz p0, :cond_0

    check-cast v2, Lr0/r2;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lid/e1;

    iget-object p0, p0, Lid/e1;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object p0

    invoke-virtual {p0}, Lfd/o;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lsc/i0;->q()Lua/nav/routing/i;

    move-result-object p0

    invoke-virtual {p0}, Lua/nav/routing/i;->c()V

    :cond_0
    return-object v1

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lod/k;->m:Z

    if-eqz p0, :cond_1

    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object p0

    const-string p1, "dialog"

    invoke-virtual {p0, p1}, Luc/f;->i(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object p0

    iget-object p0, p0, Luc/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "trial_reminder_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    check-cast v2, Lr0/u0;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
