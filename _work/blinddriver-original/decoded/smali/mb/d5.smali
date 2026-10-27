.class public final Lmb/d5;
.super Lmb/d0;
.source "SourceFile"


# instance fields
.field public final b:Lmb/z1;


# direct methods
.method public constructor <init>(Lmb/v4;Lmb/z1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/d0;-><init>(Lmb/s5;)V

    iput-object p2, p0, Lmb/d5;->b:Lmb/z1;

    return-void
.end method


# virtual methods
.method public final a(Lmb/a5;)V
    .locals 0

    invoke-super {p0, p1}, Lmb/d0;->a(Lmb/a5;)V

    iget-object p0, p0, Lmb/d5;->b:Lmb/z1;

    invoke-interface {p0, p1}, Lmb/z1;->a(Lmb/a5;)V

    return-void
.end method

.method public final getType()Lmb/s5;
    .locals 0

    iget-object p0, p0, Lmb/d0;->a:Lmb/s5;

    return-object p0
.end method

.method public final s(Lmb/e7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/e7;->K(Lmb/d5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmb/d0;->a:Lmb/s5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/d5;->b:Lmb/z1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
