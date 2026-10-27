.class public Lq3/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lq3/x0;


# instance fields
.field public final a:Lq3/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    new-instance v0, Lq3/k0;

    invoke-direct {v0}, Lq3/k0;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    new-instance v0, Lq3/j0;

    invoke-direct {v0}, Lq3/j0;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x22

    if-lt v0, v1, :cond_2

    new-instance v0, Lq3/i0;

    invoke-direct {v0}, Lq3/i0;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    new-instance v0, Lq3/h0;

    invoke-direct {v0}, Lq3/h0;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    new-instance v0, Lq3/g0;

    invoke-direct {v0}, Lq3/g0;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lq3/f0;

    invoke-direct {v0}, Lq3/f0;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lq3/l0;->b()Lq3/x0;

    move-result-object v0

    iget-object v0, v0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v0}, Lq3/u0;->a()Lq3/x0;

    move-result-object v0

    iget-object v0, v0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v0}, Lq3/u0;->b()Lq3/x0;

    move-result-object v0

    iget-object v0, v0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v0}, Lq3/u0;->c()Lq3/x0;

    move-result-object v0

    sput-object v0, Lq3/u0;->b:Lq3/x0;

    return-void
.end method

.method public constructor <init>(Lq3/x0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/u0;->a:Lq3/x0;

    return-void
.end method


# virtual methods
.method public A([[Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public B([[Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public a()Lq3/x0;
    .locals 0

    iget-object p0, p0, Lq3/u0;->a:Lq3/x0;

    return-object p0
.end method

.method public b()Lq3/x0;
    .locals 0

    iget-object p0, p0, Lq3/u0;->a:Lq3/x0;

    return-object p0
.end method

.method public c()Lq3/x0;
    .locals 0

    iget-object p0, p0, Lq3/u0;->a:Lq3/x0;

    return-object p0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e(Lq3/x0;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lq3/u0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lq3/u0;

    invoke-virtual {p0}, Lq3/u0;->t()Z

    move-result v1

    invoke-virtual {p1}, Lq3/u0;->t()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lq3/u0;->s()Z

    move-result v1

    invoke-virtual {p1}, Lq3/u0;->s()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lq3/u0;->n()Ll3/b;

    move-result-object v1

    invoke-virtual {p1}, Lq3/u0;->n()Ll3/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lq3/u0;->l()Ll3/b;

    move-result-object v1

    invoke-virtual {p1}, Lq3/u0;->l()Ll3/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lq3/u0;->h()Lq3/c;

    move-result-object p0

    invoke-virtual {p1}, Lq3/u0;->h()Lq3/c;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

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

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

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

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public h()Lq3/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lq3/u0;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lq3/u0;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lq3/u0;->n()Ll3/b;

    move-result-object v2

    invoke-virtual {p0}, Lq3/u0;->l()Ll3/b;

    move-result-object v3

    invoke-virtual {p0}, Lq3/u0;->h()Lq3/c;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public i(I)Ll3/b;
    .locals 0

    sget-object p0, Ll3/b;->e:Ll3/b;

    return-object p0
.end method

.method public j(I)Ll3/b;
    .locals 0

    and-int/lit8 p0, p1, 0x8

    if-nez p0, :cond_0

    sget-object p0, Ll3/b;->e:Ll3/b;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to query the maximum insets for IME"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k()Ll3/b;
    .locals 0

    invoke-virtual {p0}, Lq3/u0;->n()Ll3/b;

    move-result-object p0

    return-object p0
.end method

.method public l()Ll3/b;
    .locals 0

    sget-object p0, Ll3/b;->e:Ll3/b;

    return-object p0
.end method

.method public m()Ll3/b;
    .locals 0

    invoke-virtual {p0}, Lq3/u0;->n()Ll3/b;

    move-result-object p0

    return-object p0
.end method

.method public n()Ll3/b;
    .locals 0

    sget-object p0, Ll3/b;->e:Ll3/b;

    return-object p0
.end method

.method public o()Ll3/b;
    .locals 0

    invoke-virtual {p0}, Lq3/u0;->n()Ll3/b;

    move-result-object p0

    return-object p0
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r(IIII)Lq3/x0;
    .locals 0

    sget-object p0, Lq3/u0;->b:Lq3/x0;

    return-object p0
.end method

.method public s()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public u(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public v(Lq3/e;)V
    .locals 0

    return-void
.end method

.method public w([Ll3/b;)V
    .locals 0

    return-void
.end method

.method public x(Ll3/b;)V
    .locals 0

    return-void
.end method

.method public y(Lq3/x0;)V
    .locals 0

    return-void
.end method

.method public z(I)V
    .locals 0

    return-void
.end method
