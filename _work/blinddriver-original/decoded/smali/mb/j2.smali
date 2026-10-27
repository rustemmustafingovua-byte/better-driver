.class public final Lmb/j2;
.super Lmb/n3;
.source "SourceFile"


# instance fields
.field public final f:Lmb/c1;

.field public final g:Ljava/lang/String;

.field public h:Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/c1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/j2;->f:Lmb/c1;

    iput-object p3, p0, Lmb/j2;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final F(Lmb/n7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/n7;->t0(Lmb/j2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/j2;->f:Lmb/c1;

    invoke-virtual {v1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/j2;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
