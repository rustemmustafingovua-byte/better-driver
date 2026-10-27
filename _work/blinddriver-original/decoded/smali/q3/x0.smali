.class public final Lq3/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lq3/x0;


# instance fields
.field public final a:Lq3/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    sget-object v0, Lq3/s0;->x:Lq3/x0;

    sput-object v0, Lq3/x0;->b:Lq3/x0;

    return-void

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    sget-object v0, Lq3/q0;->w:Lq3/x0;

    sput-object v0, Lq3/x0;->b:Lq3/x0;

    return-void

    :cond_1
    sget-object v0, Lq3/u0;->b:Lq3/x0;

    sput-object v0, Lq3/x0;->b:Lq3/x0;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lq3/t0;

    invoke-direct {v0, p0, p1}, Lq3/t0;-><init>(Lq3/x0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    return-void

    :cond_0
    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lq3/s0;

    invoke-direct {v0, p0, p1}, Lq3/s0;-><init>(Lq3/x0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    return-void

    :cond_1
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, Lq3/r0;

    invoke-direct {v0, p0, p1}, Lq3/r0;-><init>(Lq3/x0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    return-void

    :cond_2
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    .line 6
    new-instance v0, Lq3/q0;

    invoke-direct {v0, p0, p1}, Lq3/q0;-><init>(Lq3/x0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    return-void

    .line 7
    :cond_3
    new-instance v0, Lq3/p0;

    invoke-direct {v0, p0, p1}, Lq3/p0;-><init>(Lq3/x0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    return-void
.end method

.method public constructor <init>(Lq3/x0;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 9
    iget-object p1, p1, Lq3/x0;->a:Lq3/u0;

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    instance-of v1, p1, Lq3/t0;

    if-eqz v1, :cond_0

    .line 11
    new-instance v0, Lq3/t0;

    move-object v1, p1

    check-cast v1, Lq3/t0;

    invoke-direct {v0, p0, v1}, Lq3/t0;-><init>(Lq3/x0;Lq3/t0;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    .line 12
    instance-of v1, p1, Lq3/s0;

    if-eqz v1, :cond_1

    .line 13
    new-instance v0, Lq3/s0;

    move-object v1, p1

    check-cast v1, Lq3/s0;

    invoke-direct {v0, p0, v1}, Lq3/s0;-><init>(Lq3/x0;Lq3/s0;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    .line 14
    instance-of v1, p1, Lq3/r0;

    if-eqz v1, :cond_2

    .line 15
    new-instance v0, Lq3/r0;

    move-object v1, p1

    check-cast v1, Lq3/r0;

    invoke-direct {v0, p0, v1}, Lq3/r0;-><init>(Lq3/x0;Lq3/r0;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    goto :goto_0

    :cond_2
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    .line 16
    instance-of v0, p1, Lq3/q0;

    if-eqz v0, :cond_3

    .line 17
    new-instance v0, Lq3/q0;

    move-object v1, p1

    check-cast v1, Lq3/q0;

    invoke-direct {v0, p0, v1}, Lq3/q0;-><init>(Lq3/x0;Lq3/q0;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    goto :goto_0

    .line 18
    :cond_3
    instance-of v0, p1, Lq3/p0;

    if-eqz v0, :cond_4

    .line 19
    new-instance v0, Lq3/p0;

    move-object v1, p1

    check-cast v1, Lq3/p0;

    invoke-direct {v0, p0, v1}, Lq3/p0;-><init>(Lq3/x0;Lq3/p0;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    goto :goto_0

    .line 20
    :cond_4
    instance-of v0, p1, Lq3/o0;

    if-eqz v0, :cond_5

    .line 21
    new-instance v0, Lq3/o0;

    move-object v1, p1

    check-cast v1, Lq3/o0;

    invoke-direct {v0, p0, v1}, Lq3/o0;-><init>(Lq3/x0;Lq3/o0;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    goto :goto_0

    .line 22
    :cond_5
    instance-of v0, p1, Lq3/n0;

    if-eqz v0, :cond_6

    .line 23
    new-instance v0, Lq3/n0;

    move-object v1, p1

    check-cast v1, Lq3/n0;

    invoke-direct {v0, p0, v1}, Lq3/n0;-><init>(Lq3/x0;Lq3/n0;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    goto :goto_0

    .line 24
    :cond_6
    instance-of v0, p1, Lq3/m0;

    if-eqz v0, :cond_7

    .line 25
    new-instance v0, Lq3/m0;

    move-object v1, p1

    check-cast v1, Lq3/m0;

    invoke-direct {v0, p0, v1}, Lq3/m0;-><init>(Lq3/x0;Lq3/m0;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    goto :goto_0

    .line 26
    :cond_7
    new-instance v0, Lq3/u0;

    invoke-direct {v0, p0}, Lq3/u0;-><init>(Lq3/x0;)V

    iput-object v0, p0, Lq3/x0;->a:Lq3/u0;

    .line 27
    :goto_0
    invoke-virtual {p1, p0}, Lq3/u0;->e(Lq3/x0;)V

    return-void

    .line 28
    :cond_8
    new-instance p1, Lq3/u0;

    invoke-direct {p1, p0}, Lq3/u0;-><init>(Lq3/x0;)V

    iput-object p1, p0, Lq3/x0;->a:Lq3/u0;

    return-void
.end method

.method public static a(Ll3/b;IIII)Ll3/b;
    .locals 5

    iget v0, p0, Ll3/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Ll3/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Ll3/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Ll3/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;Landroid/view/WindowInsets;)Lq3/x0;
    .locals 2

    new-instance v0, Lq3/x0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lq3/x0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lq3/n;->a(Landroid/view/View;)Lq3/x0;

    move-result-object p1

    iget-object v1, v0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v1, p1}, Lq3/u0;->y(Lq3/x0;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Lq3/u0;->d(Landroid/view/View;)V

    invoke-virtual {v1, p1}, Lq3/u0;->p(Landroid/view/View;)V

    invoke-virtual {v1}, Lq3/u0;->q()V

    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    invoke-virtual {v1, p0}, Lq3/u0;->z(I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b()Landroid/view/WindowInsets;
    .locals 1

    iget-object p0, p0, Lq3/x0;->a:Lq3/u0;

    instance-of v0, p0, Lq3/m0;

    if-eqz v0, :cond_0

    check-cast p0, Lq3/m0;

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lq3/x0;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lq3/x0;

    iget-object p0, p0, Lq3/x0;->a:Lq3/u0;

    iget-object p1, p1, Lq3/x0;->a:Lq3/u0;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lq3/x0;->a:Lq3/u0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lq3/u0;->hashCode()I

    move-result p0

    return p0
.end method
