.class final Lu/l1;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lu/u;

.field public final b:Li9/e;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lu/u;Li9/e;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/l1;->a:Lu/u;

    iput-object p2, p0, Lu/l1;->b:Li9/e;

    iput-object p3, p0, Lu/l1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lu/n1;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object v1, p0, Lu/l1;->a:Lu/u;

    iput-object v1, v0, Lu/n1;->z:Lu/u;

    iget-object p0, p0, Lu/l1;->b:Li9/e;

    iput-object p0, v0, Lu/n1;->A:Li9/e;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Lu/l1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lu/l1;

    iget-object v0, p0, Lu/l1;->a:Lu/u;

    iget-object v1, p1, Lu/l1;->a:Lu/u;

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lu/l1;->c:Ljava/lang/Object;

    iget-object p1, p1, Lu/l1;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lu/n1;

    iget-object v0, p0, Lu/l1;->a:Lu/u;

    iput-object v0, p1, Lu/n1;->z:Lu/u;

    iget-object p0, p0, Lu/l1;->b:Li9/e;

    iput-object p0, p1, Lu/n1;->A:Li9/e;

    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lu/l1;->a:Lu/u;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object p0, p0, Lu/l1;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
