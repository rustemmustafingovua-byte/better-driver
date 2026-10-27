.class public final Lmb/n0;
.super Lmb/m3;
.source "SourceFile"

# interfaces
.implements Lmb/x3;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhb/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/n0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l(Lmb/o7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/o7;->h0(Lmb/n0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/n0;->c:Ljava/lang/String;

    return-object p0
.end method
