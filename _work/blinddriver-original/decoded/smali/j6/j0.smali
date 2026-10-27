.class public final Lj6/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj6/w;
.implements Ljava/io/Serializable;


# instance fields
.field public l:Ljava/util/HashMap;


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Lj6/j0;->l:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    new-instance v0, Lt6/b;

    invoke-direct {v0, p1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
