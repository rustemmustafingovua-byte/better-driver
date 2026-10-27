.class public final Lpa/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/v;


# instance fields
.field public final a:Lpa/q;


# direct methods
.method public constructor <init>(Lpa/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/t;->a:Lpa/q;

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
    .locals 0

    iget-object p0, p0, Lpa/t;->a:Lpa/q;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

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
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "already connected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()Lpa/u;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "already connected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
