.class public final Lq3/t0;
.super Lq3/s0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lq3/x0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lq3/s0;-><init>(Lq3/x0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Lq3/x0;Lq3/t0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lq3/s0;-><init>(Lq3/x0;Lq3/s0;)V

    return-void
.end method


# virtual methods
.method public f(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Lq3/w0;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Lb5/d;->a(Landroid/view/WindowInsets;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public g(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Lq3/w0;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Lb5/d;->e(Landroid/view/WindowInsets;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public q()V
    .locals 0

    return-void
.end method
