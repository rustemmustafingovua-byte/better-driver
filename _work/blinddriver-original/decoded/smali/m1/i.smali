.class public abstract Lm1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lm1/g;
    .locals 2

    new-instance v0, Lm1/g;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v0, v1}, Lm1/g;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
