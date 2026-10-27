.class public Lq3/z0;
.super La/a;
.source "SourceFile"


# instance fields
.field public final f:Landroid/view/WindowInsetsController;

.field public final g:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 2

    invoke-static {p1}, Lq3/a0;->i(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p0, v1}, La/a;-><init>(I)V

    iput-object v0, p0, Lq3/z0;->f:Landroid/view/WindowInsetsController;

    iput-object p1, p0, Lq3/z0;->g:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final F(IIZ)V
    .locals 1

    iget-object v0, p0, Lq3/z0;->g:Landroid/view/Window;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    not-int p1, p1

    and-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-object p0, p0, Lq3/z0;->f:Landroid/view/WindowInsetsController;

    invoke-static {p0, p2, p2}, Lq3/a0;->o(Landroid/view/WindowInsetsController;II)V

    return-void

    :cond_2
    iget-object p0, p0, Lq3/z0;->f:Landroid/view/WindowInsetsController;

    invoke-static {p0, p2}, Lq3/a0;->n(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public y(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v0, p1}, Lq3/z0;->F(IIZ)V

    return-void
.end method

.method public z(Z)V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lq3/z0;->F(IIZ)V

    return-void
.end method
