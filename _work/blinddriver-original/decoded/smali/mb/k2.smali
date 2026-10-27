.class public final Lmb/k2;
.super Lmb/e5;
.source "SourceFile"

# interfaces
.implements Lmb/q0;
.implements Lmb/y1;
.implements Lmb/l2;


# instance fields
.field public final e:[Lmb/x3;

.field public final f:Lmb/s5;

.field public final g:[Lmb/z5;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/k2;->e:[Lmb/x3;

    iput-object p3, p0, Lmb/k2;->f:Lmb/s5;

    iput-object p4, p0, Lmb/k2;->g:[Lmb/z5;

    invoke-virtual {p3, p0}, Lmb/s5;->a(Lmb/a5;)V

    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p3, p4, p2

    iget-object p3, p3, Lmb/z5;->e:Lmb/x0;

    if-eqz p3, :cond_0

    invoke-interface {p3, p0}, Lmb/x0;->a(Lmb/a5;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lmb/a5;)V
    .locals 3

    invoke-super {p0, p1}, Lmb/e5;->a(Lmb/a5;)V

    iget-object p0, p0, Lmb/k2;->e:[Lmb/x3;

    invoke-static {p0}, La/a;->a([Lmb/x3;)[Lmb/r0;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lmb/r0;->a(Lmb/a5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()Lmb/v5;
    .locals 0

    iget-object p0, p0, Lmb/e5;->c:Lmb/a5;

    check-cast p0, Lmb/v5;

    return-object p0
.end method

.method public final getAnnotations()[Lmb/r0;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Lmb/k7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/k7;->d(Lmb/k2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/k2;->e:[Lmb/x3;

    invoke-static {v1}, La/a;->c([Lmb/x3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmb/k2;->f:Lmb/s5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object p0, p0, Lmb/k2;->g:[Lmb/z5;

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/k7;->d(Lmb/k2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lmb/s7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/s7;->d(Lmb/k2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x()Z
    .locals 1

    const-string v0, "static"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lmb/k2;->e:[Lmb/x3;

    invoke-static {p0, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
