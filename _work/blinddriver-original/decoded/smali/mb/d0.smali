.class public abstract Lmb/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/r0;


# instance fields
.field public final a:Lmb/s5;


# direct methods
.method public constructor <init>(Lmb/s5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/d0;->a:Lmb/s5;

    return-void
.end method


# virtual methods
.method public a(Lmb/a5;)V
    .locals 0

    iget-object p0, p0, Lmb/d0;->a:Lmb/s5;

    invoke-virtual {p0, p1}, Lmb/s5;->a(Lmb/a5;)V

    return-void
.end method

.method public final getLocation()Lhb/c;
    .locals 0

    iget-object p0, p0, Lmb/d0;->a:Lmb/s5;

    iget-object p0, p0, Lmb/m3;->a:Lhb/c;

    return-object p0
.end method

.method public final i(Lmb/j7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/j7;->G(Lmb/d0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lmb/o7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lmb/r0;->s(Lmb/e7;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
