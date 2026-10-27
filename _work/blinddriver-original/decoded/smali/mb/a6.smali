.class public final Lmb/a6;
.super Lmb/u1;
.source "SourceFile"


# instance fields
.field public final h:Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/f1;Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmb/u1;-><init>(Lhb/c;Lmb/f1;)V

    iput-object p3, p0, Lmb/a6;->h:Lmb/y4;

    invoke-virtual {p3, p0}, Lmb/y4;->a(Lmb/a5;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "while ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmb/a6;->h:Lmb/y4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->F(Lmb/a6;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
