.class public final Lu/y;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lf1/h;


# direct methods
.method public constructor <init>(Lf1/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/y;->a:Lf1/h;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lu/z;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Lu/y;->a:Lf1/h;

    iput-object p0, v0, Lu/z;->z:Lf1/h;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lu/y;

    if-eqz v0, :cond_1

    check-cast p1, Lu/y;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p0, p0, Lu/y;->a:Lf1/h;

    iget-object p1, p1, Lu/y;->a:Lf1/h;

    invoke-virtual {p0, p1}, Lf1/h;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lu/z;

    iget-object p0, p0, Lu/y;->a:Lf1/h;

    iput-object p0, p1, Lu/z;->z:Lf1/h;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lu/y;->a:Lf1/h;

    iget p0, p0, Lf1/h;->a:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method
