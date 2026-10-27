.class public Lq3/p0;
.super Lq3/o0;
.source "SourceFile"


# instance fields
.field public t:Ll3/b;

.field public u:Ll3/b;

.field public v:Ll3/b;


# direct methods
.method public constructor <init>(Lq3/x0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lq3/o0;-><init>(Lq3/x0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lq3/p0;->t:Ll3/b;

    .line 3
    iput-object p1, p0, Lq3/p0;->u:Ll3/b;

    .line 4
    iput-object p1, p0, Lq3/p0;->v:Ll3/b;

    return-void
.end method

.method public constructor <init>(Lq3/x0;Lq3/p0;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lq3/o0;-><init>(Lq3/x0;Lq3/o0;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lq3/p0;->t:Ll3/b;

    .line 7
    iput-object p1, p0, Lq3/p0;->u:Ll3/b;

    .line 8
    iput-object p1, p0, Lq3/p0;->v:Ll3/b;

    return-void
.end method


# virtual methods
.method public k()Ll3/b;
    .locals 1

    iget-object v0, p0, Lq3/p0;->u:Ll3/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ll3/b;->c(Landroid/graphics/Insets;)Ll3/b;

    move-result-object v0

    iput-object v0, p0, Lq3/p0;->u:Ll3/b;

    :cond_0
    iget-object p0, p0, Lq3/p0;->u:Ll3/b;

    return-object p0
.end method

.method public m()Ll3/b;
    .locals 1

    iget-object v0, p0, Lq3/p0;->t:Ll3/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ll3/b;->c(Landroid/graphics/Insets;)Ll3/b;

    move-result-object v0

    iput-object v0, p0, Lq3/p0;->t:Ll3/b;

    :cond_0
    iget-object p0, p0, Lq3/p0;->t:Ll3/b;

    return-object p0
.end method

.method public o()Ll3/b;
    .locals 1

    iget-object v0, p0, Lq3/p0;->v:Ll3/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ll3/b;->c(Landroid/graphics/Insets;)Ll3/b;

    move-result-object v0

    iput-object v0, p0, Lq3/p0;->v:Ll3/b;

    :cond_0
    iget-object p0, p0, Lq3/p0;->v:Ll3/b;

    return-object p0
.end method

.method public r(IIII)Lq3/x0;
    .locals 0

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lq3/x0;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lq3/x0;

    move-result-object p0

    return-object p0
.end method
