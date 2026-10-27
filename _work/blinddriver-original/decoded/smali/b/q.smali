.class public Lb/q;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/v;
.implements Lb/j0;
.implements Lh4/c;
.implements Ln4/g;


# instance fields
.field public l:Landroidx/lifecycle/x;

.field public final m:Ln4/f;

.field public final n:Lt8/o;

.field public final o:Lt8/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lp4/a;

    new-instance p2, Lad/t;

    const/16 v0, 0x19

    invoke-direct {p2, v0, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p0, p2}, Lp4/a;-><init>(Ln4/g;Lad/t;)V

    new-instance p2, Ln4/f;

    invoke-direct {p2, p1}, Ln4/f;-><init>(Lp4/a;)V

    iput-object p2, p0, Lb/q;->m:Ln4/f;

    new-instance p1, Lb/p;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lb/p;-><init>(Lb/q;I)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lb/q;->n:Lt8/o;

    new-instance p1, Lb/p;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lb/p;-><init>(Lb/q;I)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lb/q;->o:Lt8/o;

    return-void
.end method

.method public static c(Lb/q;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final a()Lb/h0;
    .locals 0

    iget-object p0, p0, Lb/q;->o:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/h0;

    return-object p0
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/q;->d()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Lg5/i;
    .locals 0

    invoke-virtual {p0}, Lb/q;->a()Lb/h0;

    move-result-object p0

    invoke-virtual {p0}, Lb/h0;->a()Lb/f0;

    move-result-object p0

    iget-object p0, p0, Lb/f0;->c:Lg5/i;

    return-object p0
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/lifecycle/t0;->i(Landroid/view/View;Landroidx/lifecycle/v;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080091

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Ll9/a;->B(Landroid/view/View;Ln4/g;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080090

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/q;
    .locals 2

    iget-object v0, p0, Lb/q;->l:Landroidx/lifecycle/x;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;Z)V

    iput-object v0, p0, Lb/q;->l:Landroidx/lifecycle/x;

    :cond_0
    return-object v0
.end method

.method public final getSavedStateRegistry()Ln4/e;
    .locals 0

    iget-object p0, p0, Lb/q;->m:Ln4/f;

    iget-object p0, p0, Ln4/f;->b:Ln4/e;

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lb/q;->n:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/a;

    invoke-virtual {p0}, Lh4/f;->a()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lb/q;->a()Lb/h0;

    move-result-object v0

    invoke-static {p0}, Lb/b;->n(Lb/q;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    const-string v2, "getOnBackInvokedDispatcher(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/h0;->b(Landroid/window/OnBackInvokedDispatcher;)V

    :cond_0
    iget-object v0, p0, Lb/q;->m:Ln4/f;

    invoke-virtual {v0, p1}, Ln4/f;->a(Landroid/os/Bundle;)V

    iget-object p1, p0, Lb/q;->l:Landroidx/lifecycle/x;

    if-nez p1, :cond_1

    new-instance p1, Landroidx/lifecycle/x;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;Z)V

    iput-object p1, p0, Lb/q;->l:Landroidx/lifecycle/x;

    :cond_1
    sget-object p0, Landroidx/lifecycle/o;->ON_CREATE:Landroidx/lifecycle/o;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "onSaveInstanceState(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb/q;->m:Ln4/f;

    invoke-virtual {p0, v0}, Ln4/f;->b(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lb/q;->l:Landroidx/lifecycle/x;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;Z)V

    iput-object v0, p0, Lb/q;->l:Landroidx/lifecycle/x;

    :cond_0
    sget-object p0, Landroidx/lifecycle/o;->ON_RESUME:Landroidx/lifecycle/o;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lb/q;->l:Landroidx/lifecycle/x;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;Z)V

    iput-object v0, p0, Lb/q;->l:Landroidx/lifecycle/x;

    :cond_0
    sget-object v1, Landroidx/lifecycle/o;->ON_DESTROY:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/q;->l:Landroidx/lifecycle/x;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/q;->d()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lb/q;->d()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lb/q;->d()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
