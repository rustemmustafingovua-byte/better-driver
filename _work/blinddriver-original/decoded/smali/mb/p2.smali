.class public final Lmb/p2;
.super Lmb/m3;
.source "SourceFile"


# instance fields
.field public final c:[Lmb/x3;

.field public final d:Lmb/s5;

.field public final e:Ljava/lang/String;

.field public f:Lmb/g3;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/p2;->c:[Lmb/x3;

    iput-object p3, p0, Lmb/p2;->d:Lmb/s5;

    iput-object p4, p0, Lmb/p2;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmb/p2;->x(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/p2;->d:Lmb/s5;

    invoke-virtual {v1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "... "

    goto :goto_0

    :cond_0
    const-string p1, " "

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/p2;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
