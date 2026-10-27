.class public final Lmb/c5;
.super Lmb/s5;
.source "SourceFile"


# instance fields
.field public final d:Lmb/b0;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/b0;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/c5;->d:Lmb/b0;

    return-void
.end method


# virtual methods
.method public final E(Lmb/u7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/u7;->m0(Lmb/c5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lmb/a5;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/c5;->d:Lmb/b0;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/g7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/g7;->visitType(Lmb/s5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
