.class public final Lmb/d4;
.super Lmb/y4;
.source "SourceFile"


# instance fields
.field public final f:Lmb/y4;

.field public final g:Lmb/t0;

.field public final h:[Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/y4;Lmb/t0;[Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/d4;->f:Lmb/y4;

    iput-object p3, p0, Lmb/d4;->g:Lmb/t0;

    iput-object p4, p0, Lmb/d4;->h:[Lmb/y4;

    return-void
.end method


# virtual methods
.method public final E(Lmb/p7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/p7;->c0(Lmb/d4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/d4;->f:Lmb/y4;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/d4;->g:Lmb/t0;

    iget-object p0, p0, Lmb/t0;->l:Lmb/s5;

    invoke-virtual {p0}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() { ... }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
