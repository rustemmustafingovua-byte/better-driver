.class public final Lmb/g5;
.super Lmb/t1;
.source "SourceFile"


# instance fields
.field public final f:Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/y4;[Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lmb/t1;-><init>(Lhb/c;[Lmb/y4;)V

    iput-object p2, p0, Lmb/g5;->f:Lmb/y4;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lmb/y4;->a(Lmb/a5;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final E(Lmb/i7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/i7;->c(Lmb/g5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "super()"

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->c(Lmb/g5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
