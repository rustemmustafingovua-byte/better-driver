.class public final Lu9/k;
.super Lu9/y0;
.source "SourceFile"

# interfaces
.implements Lu9/j;


# instance fields
.field public final p:Lu9/c1;


# direct methods
.method public constructor <init>(Lu9/c1;)V
    .locals 0

    invoke-direct {p0}, Lz9/j;-><init>()V

    iput-object p1, p0, Lu9/k;->p:Lu9/c1;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Lu9/y0;->j()Lu9/c1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lu9/c1;->z(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final k()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lu9/k;->p:Lu9/c1;

    invoke-virtual {p0}, Lu9/y0;->j()Lu9/c1;

    move-result-object p0

    invoke-virtual {p1, p0}, Lu9/c1;->s(Ljava/lang/Object;)Z

    return-void
.end method
