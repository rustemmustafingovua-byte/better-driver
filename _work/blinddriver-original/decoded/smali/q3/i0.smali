.class public Lq3/i0;
.super Lq3/h0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/h0;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq3/x0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lq3/h0;-><init>(Lq3/x0;)V

    return-void
.end method


# virtual methods
.method public d(ILl3/b;)V
    .locals 0

    invoke-static {p1}, Lq3/w0;->a(I)I

    move-result p1

    invoke-virtual {p2}, Ll3/b;->d()Landroid/graphics/Insets;

    move-result-object p2

    iget-object p0, p0, Lq3/f0;->e:Landroid/view/WindowInsets$Builder;

    invoke-static {p0, p1, p2}, Lq3/a0;->m(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    return-void
.end method
