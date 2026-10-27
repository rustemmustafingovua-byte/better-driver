.class public final Lmb/x5;
.super Lmb/h1;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Ljava/lang/String;Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/x5;->f:Ljava/lang/String;

    iput-object p3, p0, Lmb/x5;->g:Lmb/y4;

    return-void
.end method


# virtual methods
.method public final E(Lmb/p7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/p7;->B0(Lmb/x5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/x5;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/x5;->g:Lmb/y4;

    invoke-virtual {p0}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
