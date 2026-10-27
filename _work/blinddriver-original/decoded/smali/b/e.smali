.class public final synthetic Lb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lb/o;


# direct methods
.method public synthetic constructor <init>(Lb/o;I)V
    .locals 0

    iput p2, p0, Lb/e;->l:I

    iput-object p1, p0, Lb/e;->m:Lb/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lb/e;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lb/h0;

    new-instance v1, Lb/c;

    const/4 v2, 0x0

    iget-object p0, p0, Lb/e;->m:Lb/o;

    invoke-direct {v1, p0, v2}, Lb/c;-><init>(Lb/o;I)V

    invoke-direct {v0, v1}, Lb/h0;-><init>(Ljava/lang/Runnable;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lb/d;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Li3/a;->l:Landroidx/lifecycle/x;

    new-instance v2, Lb/f;

    invoke-direct {v2, v0, p0}, Lb/f;-><init>(Lb/h0;Lb/o;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/u;)V

    :cond_1
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroidx/lifecycle/w0;

    iget-object p0, p0, Lb/e;->m:Lb/o;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v0, v1, p0, v2}, Landroidx/lifecycle/w0;-><init>(Landroid/app/Application;Ln4/g;Landroid/os/Bundle;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lh4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lb/e;->m:Lb/o;

    invoke-virtual {p0}, Lb/o;->b()Lg5/i;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg5/i;->f(Lh4/f;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lb/z;

    iget-object p0, p0, Lb/e;->m:Lb/o;

    iget-object v1, p0, Lb/o;->q:Lb/l;

    new-instance v2, Lb/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lb/e;-><init>(Lb/o;I)V

    invoke-direct {v0, v1, v2}, Lb/z;-><init>(Ljava/util/concurrent/Executor;Lb/e;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Lb/e;->m:Lb/o;

    invoke-virtual {p0}, Lb/o;->reportFullyDrawn()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
