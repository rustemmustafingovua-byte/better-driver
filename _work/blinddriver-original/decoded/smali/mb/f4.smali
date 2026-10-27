.class public final Lmb/f4;
.super Lmb/y4;
.source "SourceFile"


# instance fields
.field public final f:Lmb/y4;

.field public final g:Lmb/s5;

.field public final h:[Lmb/y4;

.field public i:Lmb/b0;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/y4;Lmb/b0;[Lmb/y4;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    .line 6
    iput-object p2, p0, Lmb/f4;->f:Lmb/y4;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lmb/f4;->g:Lmb/s5;

    .line 8
    iput-object p4, p0, Lmb/f4;->h:[Lmb/y4;

    .line 9
    iput-object p3, p0, Lmb/f4;->i:Lmb/b0;

    return-void
.end method

.method public constructor <init>(Lhb/c;Lmb/y4;Lmb/s5;[Lmb/y4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    .line 2
    iput-object p2, p0, Lmb/f4;->f:Lmb/y4;

    .line 3
    iput-object p3, p0, Lmb/f4;->g:Lmb/s5;

    .line 4
    iput-object p4, p0, Lmb/f4;->h:[Lmb/y4;

    return-void
.end method


# virtual methods
.method public final E(Lmb/p7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/p7;->N(Lmb/f4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/f4;->f:Lmb/y4;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmb/f4;->g:Lmb/s5;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmb/f4;->i:Lmb/b0;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lmb/f4;->h:[Lmb/y4;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    if-lez v1, :cond_3

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
