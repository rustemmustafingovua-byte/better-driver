.class public abstract Lb6/q;
.super Lb6/r;
.source "SourceFile"

# interfaces
.implements Ls5/v;
.implements Ljava/lang/Iterable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A()I
.end method

.method public B(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public C()Ljava/lang/Number;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract D()Lb6/q;
.end method

.method public E()Ljava/util/Set;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract G()Ljava/lang/String;
.end method

.method public e()Z
    .locals 0

    invoke-virtual {p0}, Lb6/q;->j()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lb6/q;->w()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k()D
    .locals 2

    invoke-virtual {p0}, Lb6/q;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public l()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public m()I
    .locals 0

    invoke-virtual {p0}, Lb6/q;->n()I

    move-result p0

    return p0
.end method

.method public n()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o()J
    .locals 2

    invoke-virtual {p0}, Lb6/q;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public r()Ljava/math/BigInteger;
    .locals 0

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0
.end method

.method public s()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public u()Ljava/math/BigDecimal;
    .locals 0

    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public v()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public w()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Lu6/h;->c:Ljava/util/Iterator;

    return-object p0
.end method

.method public x()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Lu6/h;->c:Ljava/util/Iterator;

    return-object p0
.end method

.method public abstract y(I)Lb6/q;
.end method

.method public abstract z(Ljava/lang/String;)Lb6/q;
.end method
