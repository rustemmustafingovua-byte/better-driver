.class public final Lmb/v4;
.super Lmb/s5;
.source "SourceFile"

# interfaces
.implements Lmb/t5;


# instance fields
.field public final d:[Lmb/r0;

.field public final e:[Ljava/lang/String;

.field public final f:[Lmb/t5;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/r0;[Ljava/lang/String;[Lmb/t5;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/v4;->d:[Lmb/r0;

    iput-object p3, p0, Lmb/v4;->e:[Ljava/lang/String;

    iput-object p4, p0, Lmb/v4;->f:[Lmb/t5;

    return-void
.end method


# virtual methods
.method public final E(Lmb/u7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/u7;->p(Lmb/v4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lmb/a5;)V
    .locals 3

    invoke-super {p0, p1}, Lmb/s5;->a(Lmb/a5;)V

    iget-object p0, p0, Lmb/v4;->f:[Lmb/t5;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lmb/t5;->a(Lmb/a5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, " "

    iget-object v1, p0, Lmb/v4;->d:[Lmb/r0;

    array-length v2, v1

    invoke-static {v2, v0, v1}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    iget-object v2, p0, Lmb/v4;->e:[Ljava/lang/String;

    array-length v3, v2

    invoke-static {v3, v0, v2}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lmb/v4;->f:[Lmb/t5;

    if-eqz p0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ", "

    array-length v2, p0

    invoke-static {v2, v0, p0}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    invoke-static {v1, p0, v0}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final w(Lmb/r7;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/codehaus/janino/util/u0;

    iget-object p1, p1, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p1, p0}, Lorg/codehaus/janino/util/v0;->copyReferenceType(Lmb/v4;)Lmb/v4;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/g7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/g7;->visitType(Lmb/s5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
