.class public final Lmb/w1;
.super Lmb/y4;
.source "SourceFile"


# instance fields
.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Lmb/n3;


# direct methods
.method public constructor <init>(Lhb/c;Ljava/lang/String;Lmb/n3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmb/w1;->f:Z

    .line 3
    iput-object p2, p0, Lmb/w1;->g:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lmb/w1;->h:Lmb/n3;

    return-void
.end method

.method public constructor <init>(Lhb/c;Lmb/n3;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lmb/w1;->f:Z

    .line 7
    iput-object p3, p0, Lmb/w1;->g:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lmb/w1;->h:Lmb/n3;

    return-void
.end method


# virtual methods
.method public final E(Lmb/p7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/p7;->E0(Lmb/w1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lmb/w1;->f:Z

    iget-object v1, p0, Lmb/w1;->h:Lmb/n3;

    iget-object p0, p0, Lmb/w1;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
