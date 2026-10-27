.class public final Landroidx/lifecycle/g0$a;
.super Landroidx/lifecycle/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/g0;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/h0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/h0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/g0$a;->this$0:Landroidx/lifecycle/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/g0$a;->this$0:Landroidx/lifecycle/h0;

    iget p1, p0, Landroidx/lifecycle/h0;->m:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/h0;->m:I

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Landroidx/lifecycle/h0;->n:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/h0;->q:Landroidx/lifecycle/x;

    sget-object v0, Landroidx/lifecycle/o;->ON_RESUME:Landroidx/lifecycle/o;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/h0;->n:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/h0;->p:Landroid/os/Handler;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/h0;->r:Landroidx/lifecycle/f0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/g0$a;->this$0:Landroidx/lifecycle/h0;

    iget p1, p0, Landroidx/lifecycle/h0;->l:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/h0;->l:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/h0;->o:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/h0;->q:Landroidx/lifecycle/x;

    sget-object v0, Landroidx/lifecycle/o;->ON_START:Landroidx/lifecycle/o;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/h0;->o:Z

    :cond_0
    return-void
.end method
