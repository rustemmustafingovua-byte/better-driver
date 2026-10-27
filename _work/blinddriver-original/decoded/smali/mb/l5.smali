.class public final Lmb/l5;
.super Lmb/e5;
.source "SourceFile"


# instance fields
.field public final e:Lmb/y4;

.field public final f:Lmb/f1;

.field public g:S


# direct methods
.method public constructor <init>(Lhb/c;Lmb/f1;Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    const/4 p1, -0x1

    iput-short p1, p0, Lmb/l5;->g:S

    iput-object p3, p0, Lmb/l5;->e:Lmb/y4;

    invoke-virtual {p3, p0}, Lmb/y4;->a(Lmb/a5;)V

    iput-object p2, p0, Lmb/l5;->f:Lmb/f1;

    invoke-interface {p2, p0}, Lmb/f1;->a(Lmb/a5;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "synchronized("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmb/l5;->e:Lmb/y4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/l5;->f:Lmb/f1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->M0(Lmb/l5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
