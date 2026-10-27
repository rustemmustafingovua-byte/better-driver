.class public abstract Lmb/r2;
.super Lmb/l0;
.source "SourceFile"

# interfaces
.implements Lmb/q0;
.implements Lmb/y1;


# instance fields
.field public final e:Lmb/s5;

.field public final f:Ljava/lang/String;

.field public final g:Lmb/q2;

.field public final h:[Lmb/s5;

.field public final i:Ljava/util/List;

.field public j:Lmb/b0;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmb/l0;-><init>(Lhb/c;[Lmb/x3;)V

    iput-object p3, p0, Lmb/r2;->e:Lmb/s5;

    iput-object p4, p0, Lmb/r2;->f:Ljava/lang/String;

    iput-object p5, p0, Lmb/r2;->g:Lmb/q2;

    iput-object p6, p0, Lmb/r2;->h:[Lmb/s5;

    iput-object p7, p0, Lmb/r2;->i:Ljava/util/List;

    invoke-virtual {p3, p0}, Lmb/s5;->a(Lmb/a5;)V

    iget-object p1, p5, Lmb/q2;->c:[Lmb/p2;

    array-length p2, p1

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_0

    aget-object p5, p1, p4

    iget-object p5, p5, Lmb/p2;->d:Lmb/s5;

    invoke-virtual {p5, p0}, Lmb/s5;->a(Lmb/a5;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p6

    :goto_1
    if-ge p3, p1, :cond_1

    aget-object p2, p6, p3

    invoke-virtual {p2, p0}, Lmb/s5;->a(Lmb/a5;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    if-eqz p7, :cond_3

    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmb/f1;

    instance-of p3, p2, Lmb/k2;

    if-nez p3, :cond_2

    invoke-interface {p2, p0}, Lmb/f1;->a(Lmb/a5;)V

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lmb/a5;)V
    .locals 3

    invoke-super {p0, p1}, Lmb/l0;->a(Lmb/a5;)V

    iget-object p0, p0, Lmb/l0;->d:[Lmb/x3;

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

.method public final b()Lmb/a5;
    .locals 0

    iget-object p0, p0, Lmb/l0;->c:Lmb/v5;

    return-object p0
.end method

.method public c(Lmb/v5;)V
    .locals 3

    invoke-super {p0, p1}, Lmb/l0;->c(Lmb/v5;)V

    iget-object p0, p0, Lmb/l0;->d:[Lmb/x3;

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

.method public final v(Lmb/s7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/s7;->A(Lmb/r2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract x(Lmb/l7;)Ljava/lang/Object;
.end method
