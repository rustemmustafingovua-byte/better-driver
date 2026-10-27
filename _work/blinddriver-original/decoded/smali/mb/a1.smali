.class public final Lmb/a1;
.super Lmb/e5;
.source "SourceFile"


# instance fields
.field public final e:Lmb/y4;

.field public final f:Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/y4;Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/a1;->e:Lmb/y4;

    iput-object p3, p0, Lmb/a1;->f:Lmb/y4;

    invoke-virtual {p2, p0}, Lmb/y4;->a(Lmb/a5;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lmb/y4;->a(Lmb/a5;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3b

    iget-object v1, p0, Lmb/a1;->e:Lmb/y4;

    const-string v2, "assert "

    iget-object p0, p0, Lmb/a1;->f:Lmb/y4;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->X(Lmb/a1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
