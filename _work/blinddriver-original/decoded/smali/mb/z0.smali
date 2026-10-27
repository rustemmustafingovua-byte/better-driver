.class public final Lmb/z0;
.super Lmb/s5;
.source "SourceFile"

# interfaces
.implements Lmb/t5;


# instance fields
.field public final d:Lmb/s5;


# direct methods
.method public constructor <init>(Lmb/s5;)V
    .locals 1

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {p0, v0}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p1, p0, Lmb/z0;->d:Lmb/s5;

    return-void
.end method


# virtual methods
.method public final E(Lmb/u7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/u7;->W(Lmb/z0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lmb/a5;)V
    .locals 0

    invoke-super {p0, p1}, Lmb/s5;->a(Lmb/a5;)V

    iget-object p0, p0, Lmb/z0;->d:Lmb/s5;

    invoke-virtual {p0, p1}, Lmb/s5;->a(Lmb/a5;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lmb/z0;->d:Lmb/s5;

    invoke-virtual {p0}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w(Lmb/r7;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/codehaus/janino/util/u0;

    iget-object p1, p1, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p1, p0}, Lorg/codehaus/janino/util/v0;->copyArrayType(Lmb/z0;)Lmb/z0;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/g7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/g7;->visitType(Lmb/s5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
