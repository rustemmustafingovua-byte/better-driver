.class public final synthetic Lb0/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lb0/q0;->l:I

    iput-object p1, p0, Lb0/q0;->n:Ljava/lang/Object;

    iput-boolean p2, p0, Lb0/q0;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lb0/q0;->l:I

    iput-boolean p1, p0, Lb0/q0;->m:Z

    iput-object p2, p0, Lb0/q0;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lb0/q0;->l:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lb0/q0;->m:Z

    iget-object p0, p0, Lb0/q0;->n:Ljava/lang/Object;

    check-cast p0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lb0/q0;->m:Z

    iget-object p0, p0, Lb0/q0;->n:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    sget-object p0, Lcd/a;->a:Lcd/b;

    sget-object p0, Lcd/b;->m:Lcd/b;

    invoke-static {p0, v1, v2}, Lcd/a;->c(Lcd/b;Lcd/i;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcd/a;->a:Lcd/b;

    sget-object v0, Lcd/b;->n:Lcd/b;

    invoke-static {v0, v1, v2}, Lcd/a;->c(Lcd/b;Lcd/i;I)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lb0/q0;->n:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-boolean p0, p0, Lb0/q0;->m:Z

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_3

    new-instance v1, Lq3/a1;

    invoke-direct {v1, v0}, Lq3/z0;-><init>(Landroid/view/Window;)V

    goto :goto_1

    :cond_3
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4

    new-instance v1, Lq3/z0;

    invoke-direct {v1, v0}, Lq3/z0;-><init>(Landroid/view/Window;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lq3/y0;

    invoke-direct {v1, v0}, Lq3/y0;-><init>(Landroid/view/Window;)V

    :goto_1
    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, La/a;->z(Z)V

    :cond_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lb0/q0;->n:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-boolean p0, p0, Lb0/q0;->m:Z

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz p0, :cond_6

    const-string p0, "gh/graph-truck"

    goto :goto_2

    :cond_6
    const-string p0, "gh/graph-ua"

    :goto_2
    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :pswitch_3
    iget-boolean v0, p0, Lb0/q0;->m:Z

    iget-object p0, p0, Lb0/q0;->n:Ljava/lang/Object;

    check-cast p0, Lk0/b;

    sget-object v1, Lt8/z;->a:Lt8/z;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lk0/b;->i()Lx9/w;

    move-result-object p0

    if-eqz p0, :cond_7

    check-cast p0, Lx9/b0;

    invoke-virtual {p0, v1}, Lx9/b0;->q(Ljava/lang/Object;)Z

    :cond_7
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
