.class public final Lmb/r4;
.super Lmb/y4;
.source "SourceFile"


# instance fields
.field public final f:Lmb/p2;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/p2;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/r4;->f:Lmb/p2;

    return-void
.end method


# virtual methods
.method public final E(Lmb/p7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/p7;->n(Lmb/r4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/r4;->f:Lmb/p2;

    iget-object p0, p0, Lmb/p2;->e:Ljava/lang/String;

    return-object p0
.end method
