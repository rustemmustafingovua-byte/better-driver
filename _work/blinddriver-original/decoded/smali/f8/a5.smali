.class public final Lf8/a5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public l:Ljava/lang/Object;


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lf8/a5;

    sget-object p0, Lf8/c5;->a:Ljava/util/logging/Logger;

    const-string p1, "Invalid key for map field."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method
