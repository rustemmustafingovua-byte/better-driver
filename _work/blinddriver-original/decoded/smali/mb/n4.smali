.class public final Lmb/n4;
.super Lmb/m4;
.source "SourceFile"

# interfaces
.implements Lmb/f2;


# instance fields
.field public final o:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/s5;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmb/b4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;Lmb/s5;[Lmb/s5;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lmb/n4;->o:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final d(Lmb/e2;)V
    .locals 0

    iget-object p0, p0, Lmb/n4;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lmb/n4;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final p()[Lmb/s5;
    .locals 0

    iget-object p0, p0, Lmb/b4;->n:[Lmb/s5;

    return-object p0
.end method

.method public final q(Lmb/t7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/t7;->k(Lmb/n4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
