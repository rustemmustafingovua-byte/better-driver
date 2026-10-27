.class public final Lu/z;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/t1;


# instance fields
.field public z:Lf1/h;


# virtual methods
.method public final v0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lu/v0;

    if-eqz v0, :cond_0

    check-cast p1, Lu/v0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lu/v0;

    invoke-direct {p1}, Lu/v0;-><init>()V

    :cond_1
    iget-object p0, p0, Lu/z;->z:Lf1/h;

    new-instance v0, Lu/t;

    invoke-direct {v0, p0}, Lu/t;-><init>(Lf1/h;)V

    iput-object v0, p1, Lu/v0;->c:Lu/t;

    return-object p1
.end method
