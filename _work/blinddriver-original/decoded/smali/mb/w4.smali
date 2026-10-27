.class public final Lmb/w4;
.super Lmb/e5;
.source "SourceFile"


# instance fields
.field public final e:Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/w4;->e:Lmb/y4;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lmb/y4;->a(Lmb/a5;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lmb/w4;->e:Lmb/y4;

    if-nez p0, :cond_0

    const-string p0, "return;"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "return "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->g0(Lmb/w4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
