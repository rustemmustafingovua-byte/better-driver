.class public Lq3/n0;
.super Lq3/m0;
.source "SourceFile"


# instance fields
.field public s:Ll3/b;


# direct methods
.method public constructor <init>(Lq3/x0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lq3/m0;-><init>(Lq3/x0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lq3/n0;->s:Ll3/b;

    return-void
.end method

.method public constructor <init>(Lq3/x0;Lq3/n0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lq3/m0;-><init>(Lq3/x0;Lq3/m0;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lq3/n0;->s:Ll3/b;

    .line 5
    iget-object p1, p2, Lq3/n0;->s:Ll3/b;

    iput-object p1, p0, Lq3/n0;->s:Ll3/b;

    return-void
.end method


# virtual methods
.method public b()Lq3/x0;
    .locals 1

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lq3/x0;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lq3/x0;

    move-result-object p0

    return-object p0
.end method

.method public c()Lq3/x0;
    .locals 1

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lq3/x0;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lq3/x0;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ll3/b;
    .locals 4

    iget-object v0, p0, Lq3/n0;->s:Ll3/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object v0

    iput-object v0, p0, Lq3/n0;->s:Ll3/b;

    :cond_0
    iget-object p0, p0, Lq3/n0;->s:Ll3/b;

    return-object p0
.end method

.method public s()Z
    .locals 0

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0
.end method
