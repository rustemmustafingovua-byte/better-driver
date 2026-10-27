.class public final Lp/d2;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lp/a2;


# direct methods
.method public constructor <init>(Lp/a2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/d2;->a:Lp/a2;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lp/y1;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Lp/d2;->a:Lp/a2;

    iput-object p0, v0, Lp/y1;->z:Lp/a2;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lp/y1;->A:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lp/d2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lp/d2;

    iget-object p1, p1, Lp/d2;->a:Lp/a2;

    iget-object p0, p0, Lp/d2;->a:Lp/a2;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lp/y1;

    iget-object p0, p0, Lp/d2;->a:Lp/a2;

    iput-object p0, p1, Lp/y1;->z:Lp/a2;

    const/4 p0, 0x1

    iput-boolean p0, p1, Lp/y1;->A:Z

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object p0, p0, Lp/d2;->a:Lp/a2;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/16 v0, 0x1f

    mul-int/2addr p0, v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lm/a;->g(IIZ)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method
