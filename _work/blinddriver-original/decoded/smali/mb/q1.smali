.class public final Lmb/q1;
.super Lmb/k0;
.source "SourceFile"


# instance fields
.field public c:Lmb/k4;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lmb/f0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmb/k0;-><init>(Ljava/lang/String;[Lmb/f0;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmb/q1;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final f(Lmb/d7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/d7;->L(Lmb/q1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lmb/p4;
    .locals 4

    iget-object p0, p0, Lmb/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lmb/p4;

    invoke-interface {v2}, Lmb/c4;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
