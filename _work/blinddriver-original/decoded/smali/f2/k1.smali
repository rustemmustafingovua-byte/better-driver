.class public final Lf2/k1;
.super Lf2/a;
.source "SourceFile"


# instance fields
.field public final t:Lr0/e1;

.field public u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lf2/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lf2/k1;->t:Lr0/e1;

    return-void
.end method

.method public static synthetic getShouldCreateCompositionOnAttachedToWindow$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Lr0/q;I)V
    .locals 5

    const v0, 0x190bf45a

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf2/k1;->t:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li9/e;

    if-nez v0, :cond_2

    const v0, -0x49d6f281

    invoke-virtual {p1, v0}, Lr0/q;->b0(I)V

    :goto_2
    invoke-virtual {p1, v4}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_2
    const v1, 0x5e04ac2

    invoke-virtual {p1, v1}, Lr0/q;->b0(I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lc2/z;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p2, v1}, Lc2/z;-><init>(Lf2/a;II)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Lf2/k1;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 0

    iget-boolean p0, p0, Lf2/k1;->u:Z

    return p0
.end method

.method public final setContent(Li9/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/e;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf2/k1;->u:Z

    iget-object v0, p0, Lf2/k1;->t:Lr0/e1;

    invoke-virtual {v0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lf2/a;->o:Lr0/u;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "createComposition requires either a parent reference or the View to be attachedto a window. Attach the View or call setParentCompositionReference."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lf2/a;->d()V

    :cond_2
    return-void
.end method
