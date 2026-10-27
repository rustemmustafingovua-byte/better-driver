.class public final Lmb/u0;
.super Lmb/n3;
.source "SourceFile"


# instance fields
.field public final f:Lmb/y4;

.field public final g:Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/y4;Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/u0;->f:Lmb/y4;

    iput-object p3, p0, Lmb/u0;->g:Lmb/y4;

    return-void
.end method


# virtual methods
.method public final F(Lmb/n7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/n7;->n0(Lmb/u0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/u0;->f:Lmb/y4;

    invoke-virtual {v1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/u0;->g:Lmb/y4;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
