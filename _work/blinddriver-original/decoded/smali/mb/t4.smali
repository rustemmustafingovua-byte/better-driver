.class public final Lmb/t4;
.super Lmb/s5;
.source "SourceFile"


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(Lhb/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput p2, p0, Lmb/t4;->d:I

    return-void
.end method


# virtual methods
.method public final E(Lmb/u7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/u7;->I(Lmb/t4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lmb/t4;->d:I

    invoke-static {p0}, Lm/a;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/g7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/g7;->visitType(Lmb/s5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
