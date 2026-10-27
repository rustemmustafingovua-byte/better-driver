.class public final Landroidx/fragment/app/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/s1;

.field public final synthetic e:Landroidx/fragment/app/j;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/s1;Landroidx/fragment/app/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/i;->b:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/i;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/i;->d:Landroidx/fragment/app/s1;

    iput-object p5, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string v0, "anim"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/i;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean v1, p0, Landroidx/fragment/app/i;->c:Z

    iget-object v2, p0, Landroidx/fragment/app/i;->d:Landroidx/fragment/app/s1;

    if-nez v1, :cond_0

    iget v1, v2, Landroidx/fragment/app/s1;->a:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    :cond_0
    iget v1, v2, Landroidx/fragment/app/s1;->a:I

    const-string v3, "viewToAnimate"

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, p1}, Landroidx/fragment/app/t1;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    iget-object p1, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    iget-object p1, p1, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/s1;->c(Landroidx/fragment/app/r1;)V

    const/4 p0, 0x2

    invoke-static {p0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Animator from operation "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has ended."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
