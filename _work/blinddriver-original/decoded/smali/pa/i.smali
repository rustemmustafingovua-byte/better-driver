.class public final Lpa/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/v;


# instance fields
.field public final a:Lpa/u;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpa/u;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lpa/u;-><init>(Lpa/v;Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lpa/i;->a:Lpa/u;

    return-void
.end method


# virtual methods
.method public final a()Lpa/v;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected retry"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lpa/q;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final cancel()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected cancel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Lpa/u;
    .locals 0

    iget-object p0, p0, Lpa/i;->a:Lpa/u;

    return-object p0
.end method

.method public final f()Lpa/u;
    .locals 0

    iget-object p0, p0, Lpa/i;->a:Lpa/u;

    return-object p0
.end method
