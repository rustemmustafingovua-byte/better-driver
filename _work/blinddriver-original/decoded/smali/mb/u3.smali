.class public final Lmb/u3;
.super Lmb/r2;
.source "SourceFile"


# instance fields
.field public final k:[Lmb/w5;

.field public final l:Lmb/z1;

.field public m:Lmb/h6;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Lmb/z1;Ljava/util/List;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lmb/r2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Ljava/util/List;)V

    iput-object p3, p0, Lmb/u3;->k:[Lmb/w5;

    move-object/from16 p1, p8

    iput-object p1, p0, Lmb/u3;->l:Lmb/z1;

    return-void
.end method


# virtual methods
.method public final a(Lmb/a5;)V
    .locals 8

    invoke-super {p0, p1}, Lmb/r2;->a(Lmb/a5;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lmb/u3;->k:[Lmb/w5;

    if-eqz v1, :cond_1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Lmb/w5;->b:[Lmb/v4;

    if-eqz v4, :cond_0

    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-virtual {v7, p1}, Lmb/v4;->a(Lmb/a5;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmb/r2;->g:Lmb/q2;

    iget-object p0, p0, Lmb/q2;->c:[Lmb/p2;

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    iget-object v2, v2, Lmb/p2;->d:Lmb/s5;

    invoke-virtual {v2, p1}, Lmb/s5;->a(Lmb/a5;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final c(Lmb/v5;)V
    .locals 7

    invoke-super {p0, p1}, Lmb/r2;->c(Lmb/v5;)V

    iget-object p0, p0, Lmb/u3;->k:[Lmb/w5;

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    iget-object v3, v3, Lmb/w5;->b:[Lmb/v4;

    if-eqz v3, :cond_0

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Lmb/v4;->a(Lmb/a5;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmb/r2;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/r2;->g:Lmb/q2;

    iget-object v1, p0, Lmb/q2;->c:[Lmb/p2;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    if-lez v3, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v4, v1, v3

    array-length v5, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_1

    iget-boolean v5, p0, Lmb/q2;->d:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-virtual {v4, v6}, Lmb/p2;->x(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/l7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/l7;->L0(Lmb/u3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final y()Z
    .locals 1

    const-string v0, "default"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lmb/l0;->d:[Lmb/x3;

    invoke-static {p0, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final z()Z
    .locals 1

    const-string v0, "static"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lmb/l0;->d:[Lmb/x3;

    invoke-static {p0, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
