.class public Lq3/f0;
.super Lq3/l0;
.source "SourceFile"


# instance fields
.field public final e:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lq3/l0;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lq3/f0;->e:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lq3/x0;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lq3/l0;-><init>(Lq3/x0;)V

    .line 4
    invoke-virtual {p1}, Lq3/x0;->b()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Lq3/f0;->e:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Lq3/x0;
    .locals 4

    invoke-virtual {p0}, Lq3/l0;->a()V

    iget-object v0, p0, Lq3/f0;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lq3/x0;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lq3/x0;

    move-result-object v0

    iget-object v2, p0, Lq3/l0;->b:[Ll3/b;

    iget-object v3, v0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v3, v2}, Lq3/u0;->w([Ll3/b;)V

    invoke-virtual {v3, v1}, Lq3/u0;->v(Lq3/e;)V

    iget-object v1, p0, Lq3/l0;->c:[[Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Lq3/u0;->A([[Landroid/graphics/Rect;)V

    iget-object p0, p0, Lq3/l0;->d:[[Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Lq3/u0;->B([[Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public e(Ll3/b;)V
    .locals 0

    iget-object p0, p0, Lq3/f0;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ll3/b;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public f(Ll3/b;)V
    .locals 0

    iget-object p0, p0, Lq3/f0;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ll3/b;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public g(Ll3/b;)V
    .locals 0

    iget-object p0, p0, Lq3/f0;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ll3/b;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public h(Ll3/b;)V
    .locals 0

    iget-object p0, p0, Lq3/f0;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ll3/b;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public i(Ll3/b;)V
    .locals 0

    iget-object p0, p0, Lq3/f0;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ll3/b;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
