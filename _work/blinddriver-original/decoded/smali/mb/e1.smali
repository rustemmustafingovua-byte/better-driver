.class public final Lmb/e1;
.super Lmb/e5;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lhb/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmb/e1;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "{ ... }"

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->P(Lmb/e1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
