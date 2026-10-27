.class public final Lm1/c0;
.super Lm1/v;
.source "SourceFile"


# instance fields
.field public final c:Ll1/d;

.field public final d:Lm1/g;


# direct methods
.method public constructor <init>(Ll1/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/c0;->c:Ll1/d;

    invoke-static {p1}, Lr5/h1;->r(Ll1/d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v0

    invoke-static {v0, p1}, Lm1/g;->b(Lm1/g;Ll1/d;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lm1/c0;->d:Lm1/g;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lm1/c0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lm1/c0;

    iget-object p1, p1, Lm1/c0;->c:Ll1/d;

    iget-object p0, p0, Lm1/c0;->c:Ll1/d;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lm1/c0;->c:Ll1/d;

    invoke-virtual {p0}, Ll1/d;->hashCode()I

    move-result p0

    return p0
.end method

.method public final m()Ll1/c;
    .locals 4

    new-instance v0, Ll1/c;

    iget-object p0, p0, Lm1/c0;->c:Ll1/d;

    iget v1, p0, Ll1/d;->a:F

    iget v2, p0, Ll1/d;->b:F

    iget v3, p0, Ll1/d;->c:F

    iget p0, p0, Ll1/d;->d:F

    invoke-direct {v0, v1, v2, v3, p0}, Ll1/c;-><init>(FFFF)V

    return-object v0
.end method
