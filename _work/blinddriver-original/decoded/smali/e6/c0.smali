.class public abstract Le6/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lb6/l;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public B()Lj6/n;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public C()Lj6/n;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public D()Lb6/l;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public E(Lb6/h;)[Le6/y;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract F()Ljava/lang/Class;
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public h()Z
    .locals 0

    instance-of p0, p0, Lg6/x;

    return p0
.end method

.method public i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k()Z
    .locals 0

    invoke-virtual {p0}, Le6/c0;->B()Lj6/n;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public m()Z
    .locals 1

    invoke-virtual {p0}, Le6/c0;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le6/c0;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le6/c0;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le6/c0;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le6/c0;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le6/c0;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le6/c0;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le6/c0;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le6/c0;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public n(Lb6/i;Ljava/math/BigDecimal;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "no BigDecimal/double/Double-argument constructor/factory method to deserialize from Number value (%s)"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p0, v1, p2}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public o(Lb6/i;Ljava/math/BigInteger;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "no BigInteger-argument constructor/factory method to deserialize from Number value (%s)"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p0, v1, p2}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public p(Lb6/i;Z)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "no boolean/Boolean-argument constructor/factory method to deserialize from boolean value (%s)"

    invoke-virtual {p1, v0, p0, v1, p2}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public q(Lb6/i;D)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "no double/Double-argument constructor/factory method to deserialize from Number value (%s)"

    invoke-virtual {p1, v0, p0, p3, p2}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public r(Lb6/i;I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "no int/Int-argument constructor/factory method to deserialize from Number value (%s)"

    invoke-virtual {p1, v0, p0, v1, p2}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public s(Lb6/i;J)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "no long/Long-argument constructor/factory method to deserialize from Number value (%s)"

    invoke-virtual {p1, v0, p0, p3, p2}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public t(Lb6/i;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "no creator with arguments specified"

    invoke-virtual {p1, p2, p0, v1, v0}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public u(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lb6/i;->t:Ls5/k;

    const-string v1, "no String-argument constructor/factory method to deserialize from String value (\'%s\')"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p0, v1, p2}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public v(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "no array delegate creator specified"

    invoke-virtual {p1, p2, p0, v1, v0}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public w(Lb6/i;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "no default no-arguments constructor found"

    invoke-virtual {p1, v0, p0, v2, v1}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public x(Lb6/i;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "neither default (no-arguments) nor with-arguments Creator found"

    invoke-virtual {p1, v0, p0, v2, v1}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Le6/c0;->F()Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "no delegate creator specified"

    invoke-virtual {p1, p2, p0, v1, v0}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public z()Lj6/n;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
