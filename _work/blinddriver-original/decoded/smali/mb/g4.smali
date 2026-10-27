.class public final Lmb/g4;
.super Lmb/y4;
.source "SourceFile"


# instance fields
.field public final f:Lmb/z0;

.field public final g:Lmb/w0;

.field public final h:Lmb/x;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/x;Lmb/w0;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lmb/g4;->f:Lmb/z0;

    .line 7
    iput-object p3, p0, Lmb/g4;->g:Lmb/w0;

    .line 8
    iput-object p2, p0, Lmb/g4;->h:Lmb/x;

    return-void
.end method

.method public constructor <init>(Lhb/c;Lmb/z0;Lmb/w0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    .line 2
    iput-object p2, p0, Lmb/g4;->f:Lmb/z0;

    .line 3
    iput-object p3, p0, Lmb/g4;->g:Lmb/w0;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lmb/g4;->h:Lmb/x;

    return-void
.end method


# virtual methods
.method public final E(Lmb/p7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/p7;->R(Lmb/g4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmb/g4;->f:Lmb/z0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmb/z0;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmb/g4;->h:Lmb/x;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, " { ... }"

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
