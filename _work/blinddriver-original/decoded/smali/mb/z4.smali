.class public final Lmb/z4;
.super Lmb/s5;
.source "SourceFile"


# instance fields
.field public final d:Lmb/y4;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhb/c;Ljava/lang/String;Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p3, p0, Lmb/z4;->d:Lmb/y4;

    iput-object p2, p0, Lmb/z4;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final E(Lmb/u7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/u7;->P0(Lmb/z4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/z4;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final x(Lmb/g7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/g7;->visitType(Lmb/s5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
