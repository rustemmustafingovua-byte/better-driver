.class public Lq3/s0;
.super Lq3/r0;
.source "SourceFile"


# static fields
.field public static final x:Lq3/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lq3/a0;->g()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lq3/x0;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lq3/x0;

    move-result-object v0

    sput-object v0, Lq3/s0;->x:Lq3/x0;

    return-void
.end method

.method public constructor <init>(Lq3/x0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lq3/r0;-><init>(Lq3/x0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Lq3/x0;Lq3/s0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lq3/r0;-><init>(Lq3/x0;Lq3/r0;)V

    return-void
.end method


# virtual methods
.method public i(I)Ll3/b;
    .locals 0

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Lq3/w0;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Lq3/a0;->r(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Ll3/b;->c(Landroid/graphics/Insets;)Ll3/b;

    move-result-object p0

    return-object p0
.end method

.method public j(I)Ll3/b;
    .locals 0

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Lq3/w0;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Lq3/a0;->c(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Ll3/b;->c(Landroid/graphics/Insets;)Ll3/b;

    move-result-object p0

    return-object p0
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public u(I)Z
    .locals 0

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Lq3/w0;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Lq3/a0;->p(Landroid/view/WindowInsets;I)Z

    move-result p0

    return p0
.end method
