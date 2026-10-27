.class public final Lq8/e;
.super Lq8/g;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/lang/Object;Lp8/b;)Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bracket cannot match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
