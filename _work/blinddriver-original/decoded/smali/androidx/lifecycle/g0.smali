.class public final Landroidx/lifecycle/g0;
.super Landroidx/lifecycle/i;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/h0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/h0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/g0;->this$0:Landroidx/lifecycle/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/g0;->this$0:Landroidx/lifecycle/h0;

    iget p1, p0, Landroidx/lifecycle/h0;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/h0;->m:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/h0;->p:Landroid/os/Handler;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/h0;->r:Landroidx/lifecycle/f0;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/lifecycle/g0$a;

    iget-object p0, p0, Landroidx/lifecycle/g0;->this$0:Landroidx/lifecycle/h0;

    invoke-direct {p2, p0}, Landroidx/lifecycle/g0$a;-><init>(Landroidx/lifecycle/h0;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/g0;->this$0:Landroidx/lifecycle/h0;

    iget p1, p0, Landroidx/lifecycle/h0;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/h0;->l:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/h0;->n:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/h0;->q:Landroidx/lifecycle/x;

    sget-object v0, Landroidx/lifecycle/o;->ON_STOP:Landroidx/lifecycle/o;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/h0;->o:Z

    :cond_0
    return-void
.end method
