.class public final Lp/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public c:J

.field public d:Landroid/widget/EdgeEffect;

.field public e:Landroid/widget/EdgeEffect;

.field public f:Landroid/widget/EdgeEffect;

.field public g:Landroid/widget/EdgeEffect;

.field public h:Landroid/widget/EdgeEffect;

.field public i:Landroid/widget/EdgeEffect;

.field public j:Landroid/widget/EdgeEffect;

.field public k:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/l0;->a:Landroid/content/Context;

    iput p2, p0, Lp/l0;->b:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lp/l0;->c:J

    return-void
.end method

.method public static f(Landroid/widget/EdgeEffect;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static g(Landroid/widget/EdgeEffect;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    invoke-static {p0}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_0
    cmpg-float p0, p0, v3

    const/4 v1, 0x1

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lr/m1;)Landroid/widget/EdgeEffect;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    iget-object v2, p0, Lp/l0;->a:Landroid/content/Context;

    if-lt v0, v1, :cond_0

    invoke-static {v2}, Lp/m;->a(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lp/r0;

    invoke-direct {v0, v2}, Lp/r0;-><init>(Landroid/content/Context;)V

    :goto_0
    iget v1, p0, Lp/l0;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->setColor(I)V

    iget-wide v1, p0, Lp/l0;->c:J

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lb3/l;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lr/m1;->l:Lr/m1;

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-ne p1, v1, :cond_1

    iget-wide p0, p0, Lp/l0;->c:J

    shr-long v4, p0, v4

    long-to-int v1, v4

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-object v0

    :cond_1
    iget-wide p0, p0, Lp/l0;->c:J

    and-long v1, p0, v2

    long-to-int v1, v1

    shr-long/2addr p0, v4

    long-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    return-object v0
.end method

.method public final b()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Lp/l0;->e:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    sget-object v0, Lr/m1;->l:Lr/m1;

    invoke-virtual {p0, v0}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lp/l0;->e:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final c()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Lp/l0;->f:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    sget-object v0, Lr/m1;->m:Lr/m1;

    invoke-virtual {p0, v0}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lp/l0;->f:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final d()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Lp/l0;->g:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    sget-object v0, Lr/m1;->m:Lr/m1;

    invoke-virtual {p0, v0}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lp/l0;->g:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final e()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Lp/l0;->d:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    sget-object v0, Lr/m1;->l:Lr/m1;

    invoke-virtual {p0, v0}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lp/l0;->d:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method
