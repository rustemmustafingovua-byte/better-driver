.class public final Lmb/v1;
.super Lmb/e5;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhb/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/v1;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lmb/v1;->e:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "continue;"

    return-object p0

    :cond_0
    const-string v0, "continue "

    const/16 v1, 0x3b

    invoke-static {v1, v0, p0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->T(Lmb/v1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
