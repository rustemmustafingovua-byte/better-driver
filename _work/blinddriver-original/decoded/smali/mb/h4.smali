.class public final Lmb/h4;
.super Lmb/d0;
.source "SourceFile"


# instance fields
.field public final b:[Lmb/b2;


# direct methods
.method public constructor <init>(Lmb/v4;[Lmb/b2;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/d0;-><init>(Lmb/s5;)V

    iput-object p2, p0, Lmb/h4;->b:[Lmb/b2;

    return-void
.end method


# virtual methods
.method public final a(Lmb/a5;)V
    .locals 3

    invoke-super {p0, p1}, Lmb/d0;->a(Lmb/a5;)V

    iget-object p0, p0, Lmb/h4;->b:[Lmb/b2;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iget-object v2, v2, Lmb/b2;->b:Lmb/z1;

    invoke-interface {v2, p1}, Lmb/z1;->a(Lmb/a5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getType()Lmb/s5;
    .locals 0

    iget-object p0, p0, Lmb/d0;->a:Lmb/s5;

    return-object p0
.end method

.method public final s(Lmb/e7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/e7;->x0(Lmb/h4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lmb/h4;->b:[Lmb/b2;

    array-length v1, v0

    iget-object p0, p0, Lmb/d0;->a:Lmb/s5;

    const-string v2, "@"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "("

    if-eq v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", ...)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
